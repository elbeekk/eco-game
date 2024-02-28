part of 'shop_bloc.dart';

@freezed
class ShopEvent with _$ShopEvent {
  const factory ShopEvent.select(BuildingModel shopItemModel) = Select;
  const factory ShopEvent.changeCategory(ShopCategory category) = ChangeCategory;
}
