import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/Widgets/bloc/cartitem_bloc.dart';

class CartAppBar extends StatefulWidget {
  const CartAppBar({Key? key}) : super(key: key);

  @override
  State<CartAppBar> createState() => _CartAppBarState();
}

class _CartAppBarState extends State<CartAppBar> {
  late final Stream<DocumentSnapshot<Map<String, dynamic>>> _userStream;

  @override
  void initState() {
    super.initState();
    final userId = FirebaseAuth.instance.currentUser?.uid;
    _userStream =
        FirebaseFirestore.instance.collection("users").doc(userId).snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        stream: _userStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(); // Show a loading indicator while fetching data
          }

          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          final cartItems = snapshot.data?.data()?['Cart'] as List<dynamic>?;
          print(cartItems);

          return BlocBuilder<CartitemBloc, CartitemState>(
            builder: (context, state) {
              if (state.cartitem.isEmpty) {
                return const Center(child: Text("Network issue"));
              }
              return Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      shadows: [
                        Shadow(
                            blurRadius: 3, color: Color.fromARGB(255, 0, 0, 0))
                      ],
                      color: Color.fromARGB(255, 194, 13, 239),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "cart",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 194, 13, 239),
                      ),
                    ),
                  ),
                  Spacer(),
                  const Icon(
                    Icons.more_vert_rounded,
                    color: Color.fromARGB(255, 194, 13, 239),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
