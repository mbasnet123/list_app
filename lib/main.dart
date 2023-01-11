import 'package:catalouge_app/screens/home_page.dart';
import 'package:catalouge_app/screens/login_page.dart';
import 'package:catalouge_app/utils/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catalouge app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {

        // MyRoutes.homeRoute: (context) => HomePage()
        MyRoutes.loginRoute: (context) => LoginPage()

      },
      home: HomePage(),
    );
  }
}

