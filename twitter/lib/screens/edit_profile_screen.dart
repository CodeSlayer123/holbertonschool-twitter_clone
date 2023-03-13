import 'package:flutter/material.dart';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'package:twitter/providers/app_state.dart';
import '../screens/home_screen.dart';
import 'package:twitter/models/user.dart';

class EditProfileScreen  extends StatefulWidget {
  const EditProfileScreen ({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('Edit profile'),
      ),
      body:CustomFlatButton(
            label: 'tweet',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),      
      
    );
  }
}