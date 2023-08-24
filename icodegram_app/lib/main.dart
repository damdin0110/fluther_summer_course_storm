import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:icodegram_app/pages/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MaterialApp(
    home: SignUpScreen(),
  ));
}
