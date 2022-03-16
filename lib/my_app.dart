// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  setInitialRoute() async {
    bool flag = false;
    // print(flag);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    

    if (prefs.getString('Username') != null) {
      flag = true;
      route.INITIAL_ROUTE = '/Home_View';
    }

    //print(flag);

    return 0;
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    //print("Inside initiState");
    setInitialRoute();
  }

  @override
  Widget build(BuildContext context) {
    //print('In Build My app');
    print(route.INITIAL_ROUTE);
    return MaterialApp(
      initialRoute: route.INITIAL_ROUTE,
      routes: {
        '/Home_View': (context) => HomeView(),
        '/Login_View': (context) => LogInView(),
      },
    );
  }
}
