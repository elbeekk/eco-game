import 'package:bloc/bloc.dart';
import 'package:eco_game/infrastructure/models/class/shop_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_event.dart';

part 'shop_state.dart';

part 'shop_bloc.freezed.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc() : super(const ShopState()) {
    on<Select>((event, emit) {
      if(state.selected?.name==event.shopItemModel.name) {
         emit(state.copyWith(selected: null));
      }else{
        emit(state.copyWith(selected: event.shopItemModel));
      }
    });
  }
}
