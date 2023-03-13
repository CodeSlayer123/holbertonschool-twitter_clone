import 'package:flutter/material.dart';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import './forgot_password_screen.dart';
import './home_screen.dart';
import './signup_screen.dart';


class SearchScreen  extends StatefulWidget {
  const SearchScreen ({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Search'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          //elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
          CustomFlatButton(
            label: 'Search',
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