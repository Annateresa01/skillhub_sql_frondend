import 'package:flutter/material.dart';
import 'package:skillhubfrontend/pages/user_Register.dart';

void main(){
  runApp(skillhub());
}
class skillhub extends StatelessWidget {
  const skillhub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserRegister(),
    );
  }
}
