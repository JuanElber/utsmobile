import 'package:flutter/material.dart';
import 'package:uts/screens/login.dart';
import 'package:uts/screens/menu.dart';
import 'package:uts/screens/menu2.dart';
import 'package:uts/screens/menu3.dart';
import 'package:uts/screens/register.dart';
import 'package:uts/utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldBackgroundColor,
      ),
      initialRoute: Login.routeName,
      routes: {
        Login.routeName: (context) => Login(),
        Register.routeName: (context) => Register(),
        Menu.routeName: (context) => Menu(),
        Menu2.routeName: (context) => Menu2(),
        Menu3.routeName: (context) => Menu3(),
      },
    );
  }
}