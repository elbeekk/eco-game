import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'const_building_event.dart';

part 'const_building_state.dart';

part 'const_building_bloc.freezed.dart';

class ConstBuildingBloc extends Bloc<ConstBuildingEvent, ConstBuildingState> {
  ConstBuildingBloc()
      : super(
          ConstBuildingState(
            time: DateTime.now(),
          ),
        ) {
    on<Update>((event, emit) {
      emit(state.copyWith(time: event.time));
    });
  }
}
