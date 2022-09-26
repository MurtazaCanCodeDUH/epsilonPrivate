import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../models/models.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

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
  final _formKey = GlobalKey<FormState>();
  TextEditingController headName = TextEditingController();
  TextEditingController teamName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNum = TextEditingController();
  TextEditingController institution = TextEditingController();
  TextEditingController feeStructure = TextEditingController();
  final List<String> items = [
    'With Social',
    'Without Social',
  ];
  String? selectedValue;

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
          SizedBox(
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
                SizedBox(
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
          SizedBox(
            height: 1000,
            child: Stack(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 130,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 830,
                        decoration: const BoxDecoration(
                            color: Color(0xff5e17ff),
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(140, 90))),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 230,
                            ),
                            const Center(
                              child: Text(
                                "Head Delegate Details",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: 'Anton'),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Form(
                                  key: _formKey,
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.person,
                                            color: Colors.yellow,
                                          ),
                                          prefixIconColor: Colors.white,
                                          hintStyle: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Anton',
                                              color: Colors.white70),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.white),
                                          ),
                                          hintText: 'Head Delegate Name',
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15)),
                                              borderSide: BorderSide(
                                                  color: Colors.white)),
                                        ),
                                        keyboardType: TextInputType.name,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Anton',
                                            color: Colors.white),
                                        autofocus: false,
                                        textInputAction: TextInputAction.next,
                                        controller: headName,
                                        // The validator receives the text that the user has entered.
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter HD name';
                                          }
                                          return null;
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 8, 0, 0),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.group,
                                              color: Colors.yellow,
                                            ),
                                            prefixIconColor: Colors.white,
                                            hintStyle: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Anton',
                                                color: Colors.white70),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                            ),
                                            hintText: 'Team Name',
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                                borderSide: BorderSide(
                                                    color: Colors.white)),
                                          ),
                                          keyboardType: TextInputType.text,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Anton',
                                              color: Colors.white),
                                          autofocus: false,
                                          textInputAction: TextInputAction.next,
                                          controller: teamName,
                                          // The validator receives the text that the user has entered.
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter team name';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 8, 0, 0),
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
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                            ),
                                            hintText: 'Email',
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                                borderSide: BorderSide(
                                                    color: Colors.white)),
                                          ),
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Anton',
                                              color: Colors.white),
                                          autofocus: false,
                                          textInputAction: TextInputAction.next,
                                          controller: email,
                                          // The validator receives the text that the user has entered.
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter email address';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 8, 0, 0),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.call,
                                              color: Colors.yellow,
                                            ),
                                            prefixIconColor: Colors.white,
                                            hintStyle: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Anton',
                                                color: Colors.white70),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                            ),
                                            hintText: 'Phone Number',
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                                borderSide: BorderSide(
                                                    color: Colors.white)),
                                          ),
                                          keyboardType: TextInputType.phone,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Anton',
                                              color: Colors.white),
                                          autofocus: false,
                                          textInputAction: TextInputAction.next,
                                          controller: phoneNum,
                                          // The validator receives the text that the user has entered.
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter phone Number';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 8, 0, 0),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.school,
                                              color: Colors.yellow,
                                            ),
                                            prefixIconColor: Colors.white,
                                            hintStyle: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Anton',
                                                color: Colors.white70),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                            ),
                                            hintText:
                                                'Institution name or "Private"',
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                                borderSide: BorderSide(
                                                    color: Colors.white)),
                                          ),
                                          keyboardType: TextInputType.text,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'Anton',
                                              color: Colors.white),
                                          autofocus: false,
                                          textInputAction: TextInputAction.next,
                                          controller: institution,
                                          // The validator receives the text that the user has entered.
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter institution name';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 8, 0, 0),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            isExpanded: true,
                                            hint: Row(
                                              children: const [
                                                Icon(
                                                  Icons.list,
                                                  size: 25,
                                                  color: Colors.yellow,
                                                ),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Fee Structure',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontFamily: 'Anton',
                                                      color: Colors.white,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            items: items
                                                .map((item) =>
                                                    DropdownMenuItem<String>(
                                                      value: item,
                                                      child: Center(
                                                        child: Text(
                                                          item,
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 20,
                                                            fontFamily: 'Anton',
                                                            color: Colors.white,
                                                          ),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                      ),
                                                    ))
                                                .toList(),
                                            value: selectedValue,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedValue = value as String;
                                              });
                                            },
                                            icon: const Icon(
                                              Icons.arrow_forward_ios_outlined,
                                            ),
                                            iconSize: 14,
                                            iconEnabledColor: Colors.yellow,
                                            iconDisabledColor: Colors.grey,
                                            buttonHeight: 70,
                                            buttonPadding:
                                                const EdgeInsets.only(
                                                    left: 14, right: 14),
                                            buttonDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                              border: Border.all(
                                                color: Colors.white,
                                              ),
                                              color: const Color(0xff5e17ff),
                                            ),
                                            buttonElevation: 2,
                                            itemHeight: 80,
                                            dropdownMaxHeight: 180,
                                            dropdownPadding: null,
                                            dropdownDecoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                              border: Border.all(
                                                  width: 3,
                                                  color: Colors.black),
                                              color: const Color(0xff5e17ff),
                                            ),
                                            dropdownElevation: 8,
                                            scrollbarRadius:
                                                const Radius.circular(40),
                                            scrollbarThickness: 6,
                                            scrollbarAlwaysShow: true,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 350,
                  child: Center(
                      child: Lottie.asset('assets/registration.json',
                          height: 350)),
                )
              ],
            ),
          ),
          Container(
            height: 700,
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
                          height: 400,
                          decoration: const BoxDecoration(
                              color: Color(0xff5e17ff),
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(140, 90)))),
                    ),
                  ],
                ),
                Container(
                  height: 300,
                  child: Center(
                    child: Lottie.asset('assets/rocket.json', height: 250),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
