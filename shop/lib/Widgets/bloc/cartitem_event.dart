part of 'cartitem_bloc.dart';

@freezed
class CartitemEvent with _$CartitemEvent {
  const factory CartitemEvent.loadCartItems() = loadCartItems;
}
