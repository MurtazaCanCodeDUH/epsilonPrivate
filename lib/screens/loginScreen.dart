import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';
import '../models/models.dart';

class LoginScreen extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: EpsilonPages.loginPath,
      key: ValueKey(EpsilonPages.loginPath),
      child: const LoginScreen(),
    );
  }

  final String? username;

  const LoginScreen({
    Key? key,
    this.username,
  }) : super(key: key);

  final Color rwColor = const Color.fromRGBO(64, 143, 77, 1);
  final TextStyle focusedStyle = const TextStyle(color: Colors.green);
  final TextStyle unfocusedStyle = const TextStyle(color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(alignment: Alignment.topCenter,child: Lottie.asset('assets/welcomeToEpsillon.json'),)
        ],
      ),
    );
      
  }}
