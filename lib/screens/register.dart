import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../models/models.dart';

class RegisterPage extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
        name: EpsilonPages.registerPage,
        key: ValueKey(EpsilonPages.registerPage),
        child: const RegisterPage());
  }

  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            child: Stack(
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(
                      color: Color(0xff5e17ff),
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.elliptical(175, 90))),
                ),
                Container(
                  height: 150,
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: Text(
                          'Registration',
                          style: TextStyle(
                              fontFamily: 'Anton',
                              fontSize: 50,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 1000,
            child: Stack(
              children: [
                Container(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 130,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 800,
                          decoration: const BoxDecoration(
                              color: Color(0xff5e17ff),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(140, 90))),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 350,
                  child: Center(
                      child: Lottie.asset('assets/registration.json',
                          height: 350)),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
