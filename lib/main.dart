import 'package:flutter/material.dart';
import 'package:pal/Screens/cartscreen.dart';
// import 'package:pal/detailpage.dart';
import 'package:pal/homepage.dart';
// import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // String? email = FirebaseAuth.instance.currentUser!.email;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pal Online shop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}
