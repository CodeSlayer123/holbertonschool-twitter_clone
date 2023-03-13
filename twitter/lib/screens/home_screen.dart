import 'package:flutter/material.dart';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import './forgot_password_screen.dart';
import 'package:twitter/widgets/side_bar_menu.dart';
import 'package:twitter/widgets/bottom_bar_menu.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.grey.shade100,
      foregroundColor: Colors.black87,
      title: const Center(
        child: Text(
          'Home',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w900,
          )
        )
      ),
    ),
    drawer: const SideBarMenu(),
    bottomNavigationBar: const BottomMenuBar(),
    /*
    floatingActionButton: FloatingActionButton(
      mini: true,
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>
          const EditPostScreen()
        ),
      )
    );
    */

    
    
  );
}