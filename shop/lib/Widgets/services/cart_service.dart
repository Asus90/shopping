import 'package:shop/Widgets/APis/prod_api.dart';
import 'package:shop/Widgets/failurs/failurs.dart';
import 'package:dartz/dartz.dart';
import 'package:shop/Widgets/models/cart_tems_model/cart_tems_model.dart';
import 'package:dio/dio.dart';

class CartItems {
  static Future<Either<MinFailure, List<CartTemsModel>>> getCartItems() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(APiEndpoints.Appproducts);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final cartItemsList = (response.data as List).map((e) {
          return CartTemsModel.fromJson(e);
        }).toList();

        return Right(cartItemsList);
      } else {
        return const Left(MinFailure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      return const Left(MinFailure.ClientFailure());
    }
  }
}
