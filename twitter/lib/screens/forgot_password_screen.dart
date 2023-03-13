import 'package:flutter/material.dart';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import './home_screen.dart';


class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
    late TextEditingController _emailController;

    @override
    @mustCallSuper
    void initState() {
      super.initState();
      _emailController = TextEditingController();
    }

    @override
    void dispose() {
      super.dispose();
      _emailController.dispose();
    }



@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Theme.of(context).primaryColor,
          ),
          title: const Text('Forgot Password'),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.fromLTRB(0, 150, 0, 25),
                child: Text(
                  'Forgot Password',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(45, 0, 45, 0),
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Text(
                  'Enter your email address below to receive password reset instructions.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.grey[600]),
                )),
            CustomEntryField(
              hint: 'Enter email',
              controller: _emailController,
            ),
            const SizedBox(height: 20),
            CustomFlatButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              label: 'Submit',
            ),
          ],
        ))));
  }
}