import 'package:flutter/material.dart';


class CustomEntryField  extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool isPassword;
  const CustomEntryField ({
    Key? key, required this.hint,
    required this.controller, this.isPassword = false
    }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top:15, bottom: 15),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          filled: true,
          fillColor: Colors.grey.shade300,
          focusColor: Colors.blue,
          hintText: hint,
          ),
        obscureText: isPassword,
      ),
    );
  }
}