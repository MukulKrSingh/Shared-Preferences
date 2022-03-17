// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {

    
    return  Scaffold(
      appBar: AppBar(
        title: Text('Shared Prefs Home'),
      ),
      body: Center(
        child: Text('CONGRATS !! You have used shared preferences!!!  '),
      ),
    );
  }
}
