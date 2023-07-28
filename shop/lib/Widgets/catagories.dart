// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/Widgets/bloc/cartitem_bloc.dart';

class Catogories extends StatelessWidget {
  Catogories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: BlocBuilder<CartitemBloc, CartitemState>(
          builder: (context, state) {
            if (state.cartitem.isEmpty) {
              return CircularProgressIndicator();
            }
            return Row(
              children: [
                for (var i = 0; i <= 10; i++)
                  Container(
                    height: 60,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          "${state.cartitem[i].image}",
                          width: 40,
                          height: 40,
                        ),
                        Text(
                          "${state.cartitem[0].title}",
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )
                      ],
                    ),
                  )
              ],
            );
          },
        ));
  }
}
