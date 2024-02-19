import 'package:bloc/bloc.dart';
import 'package:eco_game/infrastructure/models/class/building.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'building_event.dart';

part 'building_state.dart';

part 'building_bloc.freezed.dart';

class BuildingBloc extends Bloc<BuildingEvent, BuildingState> {
  BuildingBloc() : super(const BuildingState()) {
    on<AddNewBuilding>((event, emit) {
      emit(state.copyWith(
          newBuildings: [...state.newBuildings, event.buildingInfoModel]));
    });

    on<RemoveNewBuilding>((event, emit) {
      List<BuildingModel> tempList = state.newBuildings.toList();
      tempList.removeWhere((element) {
        if (element.name == event.buildingInfoModel.name) {
          return true;
        }
        return false;
      });
      emit(state.copyWith(newBuildings: tempList),);
    });

    on<ChangePosition>((event, emit) {
      List<BuildingModel> tempList = state.newBuildings.toList();
      tempList = tempList.map((element) {
        if (element.name == event.name && element.date == event.date) {
          return element.copyWith(positionX: event.x, positionY: event.y);
        }
        return element;
      }).toList();
      emit(state.copyWith(newBuildings: tempList));
    });

    on<StartBuilding>((event, emit) {

      List<BuildingModel> tempList = state.newBuildings.toList();
      tempList.removeWhere((element) {
        if (element.name == event.buildingInfoModel.name) {
          return true;
        }
        return false;
      });
      emit(state.copyWith(newBuildings: tempList),);
      emit(
        state.copyWith(
          inProcessBuildings: [
            ...state.inProcessBuildings,
            event.buildingInfoModel.copyWith(
                date: DateTime.now().millisecondsSinceEpoch.toString()),
          ],
        ),
      );
    });
  }
}
