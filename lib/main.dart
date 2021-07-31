import 'package:flutter/material.dart';
import 'package:uber_rider/screens/RegisterScreen.dart';
import 'package:uber_rider/screens/loginScreen.dart';
import 'package:uber_rider/screens/mainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        fontFamily: "Bold Regular",
        primarySwatch: Colors.blue,
      ),
      initialRoute: RegisterScreen.idScreen,
      routes: {
        LoginScreen.idScreen :(context)=>LoginScreen(),
        RegisterScreen.idScreen :(context)=>RegisterScreen(),
        MainScreen.idScreen :(context)=>MainScreen(),
      },
    );
  }
}

