import 'package:epsilon/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FrontCard extends StatelessWidget {
  final int index;

  const FrontCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(images[index]),
        ),
      ),
      child: Stack(
        children: [
          Opacity(
            opacity: 0.0,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(40))),
            ),
          ),
          Center(
            child: Text(
              modules[index],
              style: const TextStyle(
                  color: Colors.white, fontSize: 25, fontFamily: "Anton"),
            ),
          )
        ],
      ),
    );
  }
}

class BackCard extends StatelessWidget {
  final int index;

  const BackCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(images[index]),
        ),
      ),
      child: Stack(
        children: [
          Opacity(
            opacity: 0.6,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(40))),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Text(
                modDetails[index],
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white, fontSize: 12, fontFamily: "Anton"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
