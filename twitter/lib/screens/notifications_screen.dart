import 'package:flutter/material.dart';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import './forgot_password_screen.dart';
import './home_screen.dart';
import './signup_screen.dart';


class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen ({Key? key}) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          //elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
          CustomFlatButton(
            label: 'Notifications',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUp()),
              );
            },
          ),

        ]))));
  }
}