import '../models/models.dart';
import '../data/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flip_card/flip_card.dart';

class LandingPage extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
        name: EpsilonPages.landingPage,
        key: ValueKey(EpsilonPages.landingPage),
        child: const LandingPage());
  }

  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Provider.of<AppStateManager>(context, listen: false).landApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        verticalDirection: VerticalDirection.down,
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                decoration: const BoxDecoration(
                    color: Color(0xFF5e17ff),
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(175, 90))),
                child: const Center(
                    child: Image(
                  image: AssetImage('assets/logo.png'),
                  width: 300,
                )),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Center(
                      child: Stack(
                    children: [
                      Center(
                          child: Lottie.asset('assets/moon.json', height: 300)),
                      Column(
                        children: const [
                          SizedBox(
                            height: 240,
                          ),
                          Center(
                            child: Text(
                              '3 Days | 10 Modules',
                              style:
                                  TextStyle(fontSize: 25, fontFamily: 'Anton'),
                            ),
                          )
                        ],
                      )
                    ],
                  ))
                ],
              )
            ],
          ),
          Container(
              height: 500,
              decoration: const BoxDecoration(
                  color: Color(0xFF5e17ff),
                  borderRadius: BorderRadius.vertical(
                      top: Radius.elliptical(175, 90),
                      bottom: Radius.elliptical(175, 90))),
              child: Center(
                child: SizedBox(
                  height: 400,
                  child: Swiper(
                      itemCount: 10,
                      itemWidth: MediaQuery.of(context).size.width,
                      viewportFraction: 0.8,
                      scale: 0.9,
                      itemBuilder: (BuildContext context, int index) {
                        return FlipCard(
                            front: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xfff5ee9e),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40))),
                              child: Center(
                                child: Text(
                                  Modules[index],
                                  style: const TextStyle(
                                      fontSize: 50,
                                      fontFamily: 'Anton',
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            back: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xff73eedc),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40))),
                              child: Center(
                                child: Text(
                                  "${Modules[index]}'s details",
                                  style: const TextStyle(
                                      fontSize: 50,
                                      fontFamily: 'Anton',
                                      color: Colors.black),
                                ),
                              ),
                            ));
                      }),
                ),
              )),
          const SizedBox(
            height: 5,
          ),
          Lottie.asset('assets/wanderer.json'),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              'So what are you waiting for? Register Now',
              style: TextStyle(fontSize: 17, fontFamily: 'Anton'),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Lottie.asset('assets/arrow.json', height: 50),
          ),
          const SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              Container(
                  height: 250,
                  decoration: const BoxDecoration(
                    color: Color(0xff5e17ff),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.elliptical(175, 90)),
                  )),
              SizedBox(
                height: 250,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MaterialButton(
                          onPressed: () => {
                            Provider.of<AppStateManager>(context, listen: false)
                                .goToRegister()
                          },
                          elevation: 50,
                          height: 70,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22)),
                          minWidth: 140,
                          color: Colors.white,
                          child: const Text(
                            'Register',
                            style: TextStyle(fontSize: 25, fontFamily: 'Anton'),
                          ),
                        ),
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
                          minWidth: 140,
                          color: Colors.white,
                          child: const Text(
                            'Login',
                            style: TextStyle(fontSize: 25, fontFamily: 'Anton'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}

List names = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
