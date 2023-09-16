import 'dart:async';
import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel extends Model{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  late User user;

  Map<String, dynamic> userData = {};

  bool isLoading = false;


  void signUp({required Map<String, dynamic> userData, required String pass, required VoidCallback onSuccess, required VoidCallback onFail }) {
    isLoading = true;
    notifyListeners();

    _auth.createUserWithEmailAndPassword(
        email: userData['email'],
        password: pass,
    ).then((user)  {

      _saveUserData(userData, user);

      onSuccess();
      isLoading = false;
      notifyListeners();
    }).catchError((e) {
      onFail();
      isLoading = false;
      notifyListeners();
    });
  }
  Future<void> signIn() async {
    isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 3));
  }
  void recoverPass() {

  }
  bool? isLoggedIn(){
    return null;


  }

  Future _saveUserData(Map<String, dynamic> userData, UserCredential user) async {
    this.userData = userData;

    FirebaseFirestore.instance.collection('users').doc(user.user?.uid).set(userData);
  }

}