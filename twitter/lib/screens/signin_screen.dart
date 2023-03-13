import 'package:flutter/material.dart';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import './forgot_password_screen.dart';
import './home_screen.dart';
import './signup_screen.dart';


class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
    late TextEditingController _emailController;
    late TextEditingController _passwordController;


     @override
    @mustCallSuper
    void initState() {
      super.initState();
      _emailController = TextEditingController();
      _passwordController = TextEditingController();
    }

    @override
    void dispose() {
      super.dispose();
      _emailController.dispose();
      _passwordController.dispose();
    }



   @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign In'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          //elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 200),
          ),
          CustomEntryField(
            hint: 'Enter email',
            controller: _emailController,
          

          ),
          CustomEntryField(
            hint: 'Enter password',
            controller: _passwordController,
            isPassword: true,
          ),
          CustomFlatButton(
            label: 'Submit',
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
          CustomFlatButton(
            label: 'Sign up',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUp()),
              );
            },
          ),
          CustomFlatButton(
            label: 'Forget password?',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ForgetPassword()),
              );
            },
          ),
          
        ]))));
  }
}