// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_prefs_ice_breaker/Views/home_view.dart';
import 'package:shared_prefs_ice_breaker/Views/login_view.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: savedUser(context),
      builder: (context, snapshot) {
        if (snapshot.data == true) {
          return HomeView();
        } else {
          return LogInView();
        }
      },
    );
  }

  Future<bool> savedUser(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    //prefs.remove('Username');

    if (prefs.getBool('Username') ?? false) {
      return true;
    } else {
      //Navigator.pushNamed(context, '/');
      return false;
    }
  }
}
