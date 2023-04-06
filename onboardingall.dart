import 'package:flutter/material.dart';
//import 'dart:async';
//import './onboarding2.dart';

class OnBoardingAll extends StatefulWidget {
     static String routeName = "/onboardingall";

  const OnBoardingAll({Key? key, required String title}) : super(key: key);

   @override
  State<OnBoardingAll> createState() => _OnBoardingAll();
}

class _OnBoardingAll extends State<OnBoardingAll> {
  @override 
    Widget build(BuildContext context) {
      return Scaffold(
        body: PageView(
          children: [
            Container(
              child: Center(
                child: ListView(children: [

                  
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: SizedBox(
                      height: 100,
                      child: Image.asset(
                        'assets/onboarding1.png',
                        width: 120,
                        height: 200,
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 21.0),
                    child: Text(
                      "Online courses curated to kickstart your tech career",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 21.0),
                    child: Text(
                      "Explore live coding clasess. Start, switch or advance your tech career with DevPartners.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Be a part of a community and grow with others.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),                
                ]),
              ),
            ),
            Container(
              child: Center(
                child: ListView(children: [

                  
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: SizedBox(
                      height: 100,
                      child: Image.asset(
                        'assets/onboarding2.png',
                        width: 120,
                        height: 200,
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 21.0),
                    child: Text(
                      "Online courses curated to kickstart your tech career",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 21.0),
                    child: Text(
                      "Explore live coding clasess. Start, switch or advance your tech career with DevPartners.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Be a part of a community and grow with others.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),                
                ]),
              ),
            ),
            Container(
              child: Center(
                child: ListView(children: [

                  
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: SizedBox(
                      height: 100,
                      child: Image.asset(
                        'assets/onboarding3.png',
                        width: 120,
                        height: 200,
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 21.0),
                    child: Text(
                      "Online courses curated to kickstart your tech career",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 21.0),
                    child: Text(
                      "Explore live coding clasess. Start, switch or advance your tech career with DevPartners.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Be a part of a community and grow with others.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),                
                ]),
              ),
            )

            
          ],
        ),
      );
    }
}