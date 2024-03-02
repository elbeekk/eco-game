import 'package:bloc/bloc.dart';
import 'package:eco_game/domain/di/dependancy_manager.dart';
import 'package:eco_game/infrastructure/models/class/building.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'building_event.dart';

part 'building_state.dart';

part 'building_bloc.freezed.dart';

class BuildingBloc extends Bloc<BuildingEvent, BuildingState> {
  BuildingBloc() : super(const BuildingState()) {
    on<AddPendingBuilding>((event, emit) async {
      emit(state.copyWith(isBuyLoading: true));
      final id = Uuid().v1();
      final res = await buildingRepository.addPendingBuilding(
        building: event.building.copyWith(
          id: id,
          date: DateTime.now().millisecondsSinceEpoch.toString(),
        ),
      );
      res.fold((l) async {
        emit(
          state.copyWith(
            pendingBuildings: [...state.pendingBuildings, event.building],
          ),
        );
        event.onSuccess.call();
      }, (r) {
        event.onError.call(r);
      });
      emit(state.copyWith(isBuyLoading: false));
    });

    on<RemovePendingBuilding>((event, emit) async {
      final res = await buildingRepository.removePendingBuilding(
          building: event.building);
      res.fold((l) {
        List<BuildingModel> tempList = state.pendingBuildings.toList();
        tempList.removeWhere((element) {
          if (element.id == event.building.id) {
            return true;
          }
          return false;
        });
        emit(
          state.copyWith(pendingBuildings: tempList),
        );
      }, (r) {});
    });

    on<UpdatePendingBuilding>((event, emit) {
      List<BuildingModel> tempList = state.pendingBuildings.toList();
      tempList = tempList.map((element) {
        if (element.name == event.building.name &&
            element.date == event.building.date) {
          return element.copyWith(
              positionX: event.building.positionX,
              positionY: event.building.positionY);
        }
        return element;
      }).toList();
      emit(state.copyWith(pendingBuildings: tempList));
    });

    on<AddConstructingBuilding>((event, emit) {
      List<BuildingModel> tempList = state.pendingBuildings.toList();
      tempList.removeWhere((element) {
        if (element.name == event.building.name) {
          return true;
        }
        return false;
      });
      emit(
        state.copyWith(pendingBuildings: tempList),
      );
      emit(
        state.copyWith(
          constructingBuildings: [
            ...state.constructingBuildings,
            event.building.copyWith(
                date: DateTime.now().millisecondsSinceEpoch.toString()),
          ],
        ),
      );
    });
  }
}
