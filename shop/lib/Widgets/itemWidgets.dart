import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/Widgets/UserPayment/userpayment.dart';
import 'package:shop/Widgets/bloc/cartitem_bloc.dart';

class ItemWidgets extends StatelessWidget {
  const ItemWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartitemBloc, CartitemState>(
      builder: (context, state) {
        if (state.cartitem.isEmpty) {
          return const CircularProgressIndicator(
            strokeWidth: 1,
          );
        }
        return GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.68,
            ),
            itemCount: state.cartitem.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "%${state.cartitem[index].rating?.rate}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            final clickedProId = state.cartitem[index].image;
                            print(clickedProId);
                            final userId =
                                FirebaseAuth.instance.currentUser?.uid;
                            if (userId != null) {
                              // Update cart in Firestore here
                              await FirebaseFirestore.instance
                                  .collection("users")
                                  .doc(userId)
                                  .update({
                                'Cart': FieldValue.arrayUnion([clickedProId]),
                              });
                            }
                          },
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Image.network(
                          '${state.cartitem[index].image}',
                          height: 120,
                          width: 120,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: Text(
                        state.cartitem[index].title!,
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          "${state.cartitem[index].description}",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${state.cartitem[index].price}",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => UserPaymentSection(
                                    price: state.cartitem[index].price!),
                              ));
                            },
                            child: Container(
                              width: 20, // Set a fixed width here
                              height: 20, // Set a fixed height here
                              child: Icon(
                                Icons.shopping_cart,
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              );
            });
      },
    );
  }
}
