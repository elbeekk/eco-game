part of 'shop_bloc.dart';

@freezed
class ShopEvent with _$ShopEvent {
  const factory ShopEvent.select(ShopItemModel shopItemModel) = Select;
}