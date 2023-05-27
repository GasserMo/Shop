import 'package:flutter/material.dart';
import 'SignUp.dart';
import 'SignIn.dart';
import 'package:shop/MainScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shop/Cart.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUp(),
      routes: {
        '/signUp': (context)=>SignUp(),
        '/signIn': (context)=>SignIn(),
        '/mainScreen': (context)=>MainScreen(),
        '/cart': (context)=> Cart()

      }
    );
  }
}


