part of 'const_building_bloc.dart';

@freezed
class ConstBuildingEvent with _$ConstBuildingEvent {
  const factory ConstBuildingEvent.update({required DateTime time}) = Update;
}
