import 'package:flutter/material.dart';
// import 'package:food_application/auth/signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:food_application/auth/signin.dart';
import 'package:food_application/config/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: scaffoldBackgroundColor,
        ),
        debugShowCheckedModeBanner: false,
        home: SignIn());
  }
}
