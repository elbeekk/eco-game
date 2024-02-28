part of 'shop_bloc.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState({
    BuildingModel? selected,
    required ShopCategory category,
}) = _ShopState;
}
