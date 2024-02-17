import 'package:bloc/bloc.dart';
import 'package:eco_game/infrastructure/models/class/building_info.dart';
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
  }
}
