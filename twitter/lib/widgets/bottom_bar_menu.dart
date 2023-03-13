import 'package:flutter/material.dart';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'package:twitter/providers/app_state.dart';
import '../screens/home_screen.dart';

class BottomMenuBar extends StatefulWidget {
  const BottomMenuBar ({Key? key}) : super(key: key);

  @override
  _BottomMenuBarState createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {

  
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Search\n\n\nSonu Sharma\n\nSonu Sharma\n\nLocalhost\n\nRed\n\nYellow\n\nPurple\n\nGreen\n\nSonu Sharma\n\nOrange',
      style: optionStyle,
    ),
    Text(
      'No Notification available yet\nWhen new notification found,they will show up here',
      style: optionStyle,
    ),
    Text(
      'Messages',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          
          
          
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 0, 195, 255),
        onTap: _onItemTapped,
      ),
    );
  }
}