// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_prefs_ice_breaker/Views/home_view.dart';
import 'package:shared_prefs_ice_breaker/Views/login_view.dart';

import 'Utils/routes.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

Routes route = Routes();

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    //print(route.INITIAL_ROUTE);
    return MaterialApp(
      home: Routes(),
      routes: {
        '/Login_View':(context) => LogInView(),
        '/Home_View':(context) => HomeView(),
      },
    );
  }
}
