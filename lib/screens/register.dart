import 'package:epsilon/components/brandAmbasBox.dart';
import 'package:epsilon/components/delegateBox.dart';
import 'package:epsilon/components/loginCredBox.dart';
import 'package:epsilon/components/moduleSelection.dart';
import 'package:epsilon/components/registerButtonBox.dart';
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
  TextEditingController hdphoneNum = TextEditingController();
  TextEditingController hdinstitution = TextEditingController();
  TextEditingController phoneNum2 = TextEditingController();
  TextEditingController institution2 = TextEditingController();
  TextEditingController member2name = TextEditingController();
  TextEditingController phoneNum3 = TextEditingController();
  TextEditingController institution3 = TextEditingController();
  TextEditingController member3name = TextEditingController();
  TextEditingController phoneNum4 = TextEditingController();
  TextEditingController institution4 = TextEditingController();
  TextEditingController member4name = TextEditingController();
  TextEditingController emailAgain = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordAgain = TextEditingController();
  final List<String> items = [
    'With Social',
    'Without Social',
  ];
  String? hdFeeStructure;

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
            height: 920,
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
                        height: 750,
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
                                          controller: hdphoneNum,
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
                                          controller: hdinstitution,
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
                                            value: hdFeeStructure,
                                            onChanged: (value) {
                                              setState(() {
                                                hdFeeStructure =
                                                    value as String;
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
          DelegateBox(
            memberNum: 2,
            phone: phoneNum2,
            institution: institution2,
            name: member2name,
          ),
          DelegateBox(
            memberNum: 3,
            phone: phoneNum3,
            institution: institution3,
            name: member3name,
          ),
          DelegateBox(
            memberNum: 4,
            phone: phoneNum4,
            institution: institution4,
            name: member4name,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              onPressed: () async {
                //Provider.of<AppStateManager>(context, listen: false)
                //  .goTologin();
              },
              height: 70,
              elevation: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22)),
              minWidth: MediaQuery.of(context).size.width / 2,
              color: const Color(0xff5317ff),
              child: const Text(
                'Add Member',
                style: TextStyle(
                    fontSize: 20, fontFamily: 'Anton', color: Colors.white),
              ),
            ),
          ),
          const ModuleSelector(),
          const Text('Select a brand ambassador',
              style: TextStyle(
                  color: Color(0xff000000), fontFamily: "Anton", fontSize: 20),
              textAlign: TextAlign.start),
          const BrandAmbasSelector(),
          const SizedBox(
            height: 5,
          ),
          LoginCredBox(
            email: email,
            emailAgain: emailAgain,
            password: password,
            passwordAgain: passwordAgain,
          ),
          const SizedBox(height: 50,),
          const RegisterButtonBox()
        ],
      ),
    ));
  }
}
