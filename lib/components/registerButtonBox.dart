import 'package:flutter/material.dart';

class RegisterButtonBox extends StatefulWidget {
  const RegisterButtonBox({Key? key}) : super(key: key);

  @override
  State<RegisterButtonBox> createState() => _RegisterButtonBoxState();
}

class _RegisterButtonBoxState extends State<RegisterButtonBox> {
  bool is1Checked = false;
  bool is2Checked = false;
  bool is3Checked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                    color: Color(0xff5e17ff),
                    borderRadius: BorderRadius.vertical(
                        top: (Radius.elliptical(190, 90)))),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: Text(
                        "Total:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Anton'),
                      ),
                    ),
                    Text(
                      "Rs 10,000/-",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 30,
                          fontFamily: 'Anton'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  "Please provide an active email address for smooth communication.",
                              style: TextStyle(color: Colors.yellow, fontSize: 12, fontFamily: "Anton"), ),
                            ),),
                        Checkbox(
                          checkColor: Colors.black,
                          activeColor: Colors.blue,
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          fillColor: MaterialStateProperty.all(Colors.yellow),
                          value: is1Checked,
                          onChanged: (bool? value) {
                            setState(() {
                              is1Checked = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "After registering, pay the dues as soon as possible. Due to limited slots, we will serve on 'first come first serve' basic",
                              style: TextStyle(color: Colors.yellow, fontSize: 12, fontFamily: "Anton"), ),
                          ),),
                        Checkbox(
                          checkColor: Colors.black,
                          activeColor: Colors.blue,
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          fillColor: MaterialStateProperty.all(Colors.yellow),
                          value: is2Checked,
                          onChanged: (bool? value) {
                            setState(() {
                              is2Checked = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "After clearing the dues, please upload proof of payment via the homeScreen of this app, to confirm your seat.",
                              style: TextStyle(color: Colors.yellow, fontSize: 12, fontFamily: "Anton"), ),
                          ),),
                        Checkbox(
                          checkColor: Colors.black,
                          activeColor: Colors.blue,
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          fillColor: MaterialStateProperty.all(Colors.yellow),
                          value: is3Checked,
                          onChanged: (bool? value) {
                            setState(() {
                              is3Checked = value!;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
