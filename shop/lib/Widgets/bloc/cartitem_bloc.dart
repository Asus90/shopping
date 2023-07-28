import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/Widgets/failurs/failurs.dart';
import 'package:shop/Widgets/models/cart_tems_model/cart_tems_model.dart';
import 'package:shop/Widgets/services/cart_service.dart';

part 'cartitem_event.dart';
part 'cartitem_state.dart';
part 'cartitem_bloc.freezed.dart';

class CartitemBloc extends Bloc<CartitemEvent, CartitemState> {
  CartitemBloc() : super(CartitemState.inital()) {
    on<loadCartItems>((event, emit) async {
      final _result = await CartItems.getCartItems();

      final newState = _result.fold((MinFailure l) {
        return const CartitemState(cartitem: [], isLoading: false);
      }, (List<CartTemsModel> r) {
        return CartitemState(cartitem: r);
      });
      emit(newState);
    });
  }
}
