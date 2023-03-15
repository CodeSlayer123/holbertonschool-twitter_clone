import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user.dart';

enum Errors {none, matchError, weakError, existsError, error, wrongError, noUserError}


class Auth extends ChangeNotifier {

  final usersRef = FirebaseFirestore.instance.collection('users').withConverter<User>(
            fromFirestore: (snapshot, _) {
              return CustomUser.fromJson(
                snapshot.data() ?? {},
              );
            },
            toFirestore: (user, _) => user.toJson(),
          );

          attemptSignUp(email, name, password, passwordConfirmation) async {
  if (!password){
    return (Errors.matchError);
  }
  if (password == 'weak-password'){
    return (Errors.weakError);
  }
  if (email == 'email-already-in-use'){
    return (Errors.existsError);
  }
  if (password == 'error'){
    return (Errors.error);
  } else {
    return (Errors.none);
  }

}

  attemptLogin(email, password) async {

    auth.signInWithEmailAndPassword();
  }

  logout() {
    auth.signout();
  }

  Future< User > getCurrentUserModel() async {
    return auth.currentUser.uid;

  }


}

