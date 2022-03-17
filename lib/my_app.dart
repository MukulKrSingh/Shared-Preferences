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

    print('Inside setInitial route  and flag = $flag');
    SharedPreferences prefs = await SharedPreferences.getInstance();

    print(prefs.getBool('Username'));

    if (prefs.getBool('Username') != null) {
      //route.INITIAL_ROUTE = '/Home_View';
      Navigator.pushReplacementNamed(context, '/Home_View');
    } else {
      Navigator.pushNamed(context, '/');
    }

    print(flag);
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    print("Inside initiState");
    setInitialRoute();
  }

  @override
  Widget build(BuildContext context) {
    print('In Build My app');
    //print(route.INITIAL_ROUTE);
    return MaterialApp(
      routes: {
        '/': (context) => LogInView(),
        '/Home_View': (context) => HomeView(),
      },
    );
  }
}
