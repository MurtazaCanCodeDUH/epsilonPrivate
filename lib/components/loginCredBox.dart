import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginCredBox extends StatefulWidget {
  final TextEditingController email;
  final TextEditingController emailAgain;
  final TextEditingController password;
  final TextEditingController passwordAgain;

  const LoginCredBox(
      {Key? key,
      required this.email,
      required this.emailAgain,
      required this.password,
      required this.passwordAgain})
      : super(key: key);

  @override
  State<LoginCredBox> createState() => _LoginCredBoxState();
}

class _LoginCredBoxState extends State<LoginCredBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 720,
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 550,
                  decoration: const BoxDecoration(
                      color: Color(0xff5e17ff),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(140, 90))),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 250,
                child: Center(
                  child: Lottie.asset('assets/password.json', height: 250),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "Portal Security details",
                  style: TextStyle(
                      color: Colors.white, fontSize: 30, fontFamily: 'Anton'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 8, 14, 0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.yellow,
                    ),
                    prefixIconColor: Colors.white,
                    hintStyle: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Anton',
                        color: Colors.white70),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Head Delegate email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                  keyboardType: TextInputType.name,
                  style: const TextStyle(
                      fontSize: 20, fontFamily: 'Anton', color: Colors.white),
                  autofocus: false,
                  textInputAction: TextInputAction.next,
                  controller: widget.email,
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter HD email';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 8, 14, 0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.yellow,
                    ),
                    prefixIconColor: Colors.white,
                    hintStyle: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Anton',
                        color: Colors.white70),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Re-enter HD email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                  keyboardType: TextInputType.name,
                  style: const TextStyle(
                      fontSize: 20, fontFamily: 'Anton', color: Colors.white),
                  autofocus: false,
                  textInputAction: TextInputAction.next,
                  controller: widget.emailAgain,
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter HD email again';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 8, 14, 0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.password,
                      color: Colors.yellow,
                    ),
                    prefixIconColor: Colors.white,
                    hintStyle: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Anton',
                        color: Colors.white70),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  style: const TextStyle(
                      fontSize: 20, fontFamily: 'Anton', color: Colors.white),
                  autofocus: false,
                  textInputAction: TextInputAction.next,
                  controller: widget.password,
                  obscureText: true,
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 8, 14, 0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.password,
                      color: Colors.yellow,
                    ),
                    prefixIconColor: Colors.white,
                    hintStyle: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Anton',
                        color: Colors.white70),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Re-enter your Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  style: const TextStyle(
                      fontSize: 20, fontFamily: 'Anton', color: Colors.white),
                  autofocus: false,
                  textInputAction: TextInputAction.done,
                  controller: widget.passwordAgain,
                  obscureText: true,
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password again';
                    }
                    return null;
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
