part of 'cartitem_bloc.dart';

@freezed
class CartitemState with _$CartitemState {
  const factory CartitemState(
      {required List<CartTemsModel> cartitem, isLoading}) = _Initial;

  factory CartitemState.inital() =>
      CartitemState(cartitem: [], isLoading: false);
}
