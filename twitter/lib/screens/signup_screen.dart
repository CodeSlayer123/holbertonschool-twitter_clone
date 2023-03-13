import 'package:flutter/material.dart';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import './home_screen.dart';


class SignUp extends StatefulWidget {
  const SignUp   ({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
    late TextEditingController _nameController;
    late TextEditingController _emailController;
    late TextEditingController _passwordController;
    late TextEditingController _confirmController;
    final _formKey = GlobalKey(debugLabel: 'FormKey');


    @override
    @mustCallSuper
    void initState() {
      super.initState();
      _nameController = TextEditingController();
      _emailController = TextEditingController();
      _passwordController = TextEditingController();
      _confirmController = TextEditingController();
    }

    @override
    void dispose() {
      super.dispose();
      _nameController.dispose();
      _emailController.dispose();
      _passwordController.dispose();
      _confirmController.dispose();
    }



   @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Theme.of(context).primaryColor,
          ),
          title: const Text('Sign Up'),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Container(
              height: -88,
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const SizedBox(height: 100),
                      CustomEntryField(
                        hint: 'Enter name',
                        controller: _nameController,
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
                      CustomEntryField(
                        hint: 'Confirm Password',
                        controller: _confirmController,
                        isPassword: true,
                      ),
                      const SizedBox(height: 30),
                      CustomFlatButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomeScreen()),
                          );
                        },
                        label: 'Sign up',
                      ),
                    ],
                  )))));
  }
}