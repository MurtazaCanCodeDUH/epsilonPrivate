import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';

class ModuleSelector extends StatefulWidget {
  const ModuleSelector({Key? key}) : super(key: key);

  @override
  State<ModuleSelector> createState() => _ModuleSelectorState();
}

class _ModuleSelectorState extends State<ModuleSelector> {
  List selectedModules = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1100,
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
                  height: 900,
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
                  child: Lottie.asset('assets/planet.json', height: 250),
                ),
              ),
              Stack(children: [
                 Center(
                  child: Column(
                    children: const [
                      Text(
                        "Select your Modules",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Anton'),
                      ),
                      Center(
                        child: Text(
                          "* select 5 modules only",
                          style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 15,
                              fontFamily: 'Anton'),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 5, 14, 0),
                  child: CustomCheckBoxGroup(
                    enableShape: true,
                    shapeRadius: 20,
                    scrollController: ScrollController(),
                    height: 50,
                    buttonTextStyle: const ButtonTextStyle(
                      selectedColor: Colors.black,
                      unSelectedColor: Colors.white,
                      textStyle: TextStyle(fontSize: 25, fontFamily: "Anton"),
                    ),
                    unSelectedColor: const Color(0xff5e17ff),
                    buttonLables: const [
                      "Autocode",
                      "Euclid's Elements",
                      "Carson's Conondrum",
                      "Cicada",
                      "Sceptical chymist",
                      "Robosonic",
                      "Escherian Stairwell",
                      "Cerebrial Labyrinth",
                      "The Voltaic",
                      "Area 51"
                    ],
                    buttonValuesList: const [
                      "Autocode",
                      "Euclid's Elements",
                      "Carson's Conondrum",
                      "Cicada",
                      "Sceptical chymist",
                      "Robosonic",
                      "Escherian Stairwell",
                      "Cerebrial Labyrinth",
                      "The Voltaic",
                      "Area 51"
                    ],
                    checkBoxButtonValues: (values) {
                      print(values);
                      if (values.length > 5) {
                        values.removeLast();
                      }
                      if (values.length == 5) {
                        selectedModules = values.sublist(0, 5);
                        print(selectedModules);
                      }
                    },
                    spacing: 0,
                    defaultSelected: const [],
                    horizontal: true,
                    enableButtonWrap: false,
                    width: 40,
                    absoluteZeroSpacing: false,
                    selectedColor: Colors.white,
                  ),
                ),
              ])
            ],
          )
        ],
      ),
    );
  }
}
