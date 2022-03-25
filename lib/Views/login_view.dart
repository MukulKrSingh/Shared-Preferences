// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, avoid_print

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogInView extends StatefulWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  State<LogInView> createState() => _LogInViewState();
}

TextEditingController _username = TextEditingController();
TextEditingController _password = TextEditingController();

class _LogInViewState extends State<LogInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _username,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                label: Text('Username/Email'),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              controller: _password,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                label: Text('Password'),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                _saveUser(_username.text, _password.text);
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  _saveUser(String username, String password) async {
    
    SharedPreferences prefs = await SharedPreferences.getInstance();

    
    prefs.setBool('Username',true);


    
    Navigator.pushNamed(context, '/Home_View');
    }
}
