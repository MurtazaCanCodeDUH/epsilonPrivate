import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class BrandAmbasSelector extends StatefulWidget {
  const BrandAmbasSelector({Key? key}) : super(key: key);

  @override
  State<BrandAmbasSelector> createState() => _BrandAmbasSelectorState();
}

class _BrandAmbasSelectorState extends State<BrandAmbasSelector> {
  final List<String> items = [
    'Not Applicable',
    'Guy 1',
    'Guy 2',
    'Guy 3',
    'Guy 4',
    'Guy 5',
    'Guy 6',
  ];
  String? brandAmbasName;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 8, 14, 0),
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
                    'Brand Ambassador Name',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Anton',
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Center(
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'Anton',
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ))
                .toList(),
            value: brandAmbasName,
            onChanged: (value) {
              setState(() {
                brandAmbasName = value as String;
              });
            },
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
            ),
            iconSize: 14,
            iconEnabledColor: Colors.yellow,
            iconDisabledColor: Colors.grey,
            buttonHeight: 70,
            buttonPadding: const EdgeInsets.only(left: 14, right: 14),
            buttonDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: Colors.white,
              ),
              color: const Color(0xff5e17ff),
            ),
            buttonElevation: 2,
            itemHeight: 80,
            dropdownMaxHeight: 260,
            dropdownPadding: null,
            dropdownDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(width: 3, color: Colors.black),
              color: const Color(0xff5e17ff),
            ),
            dropdownElevation: 8,
            scrollbarRadius: const Radius.circular(40),
            scrollbarThickness: 6,
            scrollbarAlwaysShow: false,
          ),
        ),
      ),
    );
  }
}
