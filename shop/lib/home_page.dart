import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/Widgets/HomeAppbar.dart';
import 'package:shop/Widgets/bloc/cartitem_bloc.dart';
import 'package:shop/Widgets/catagories.dart';
import 'package:shop/Widgets/itemWidgets.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CartitemBloc>(context)
        .add(const CartitemEvent.loadCartItems());

    final user = FirebaseAuth.instance.currentUser;

    final userDataStream = FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .snapshots();

    return Scaffold(
        body: StreamBuilder<DocumentSnapshot>(
          stream: userDataStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final userData = snapshot.data!;
              final name = userData["name"];
              final isClicked = userData['Liked'];
              print(isClicked);

              return ListView(
                children: [
                  HomeAppbar(userName: name),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 152, 152, 152),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                height: 50,
                                width: 300,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search Item...',
                                  ),
                                ),
                              ),
                              Icon(Icons.camera_alt_outlined),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          child: const Text(
                            'Category',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 94, 255),
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Catogories(),
                        ItemWidgets(),
                      ],
                    ),
                  ),
                ],
              );
            } else if (snapshot.hasError) {
              print("Error fetching user data: ${snapshot.error}");
              return Text("Error fetching user data: ${snapshot.error}");
            } else {
              print("Loading...");
              return Text("Loading...");
            }
          },
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          color: Colors.white,
          backgroundColor: Color.fromARGB(255, 0, 168, 214),
          items: const [
            Icon(
              Icons.home,
              size: 30,
            ),
            Icon(
              Icons.card_travel,
              size: 30,
            ),
            Icon(
              Icons.list,
              size: 30,
            ),
          ],
        ));
  }
}
