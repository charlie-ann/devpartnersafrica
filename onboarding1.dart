import 'package:flutter/material.dart';
import 'dart:async';
import './onboarding2.dart';

class OnBoarding1 extends StatefulWidget {
     static String routeName = "/onboarding1";

  const OnBoarding1({Key? key, required String title}) : super(key: key);

   @override
  State<OnBoarding1> createState() => _OnBoarding1();
}

class _OnBoarding1 extends State<OnBoarding1> {
 
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3 ),
      () {
          Navigator.pushNamed( context, OnBoarding2.routeName ); 

      },
    );

   
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Onboarding1 - DevPartners",
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
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

                  Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top:100.0, left: 350.0, right: 350.0, bottom: 50.0),
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 3,
                          child: TextField(
                          
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 3, 53, 4),
                              contentPadding: EdgeInsets.only(
                                top: 1,
                                bottom: 1,
                                left: 1,
                                right: 1,
                              ),
                              //labelText: "First Name",
                              //hintText: "Firstname",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 32,
                        ),
                        Expanded(
                          flex: 3,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              //filled: true,
                              fillColor: Color.fromARGB(255, 3, 53, 4),
                              contentPadding: EdgeInsets.only(
                                top: 1,
                                bottom: 1,
                                left: 1,
                                right: 1,
                              ),
                              //labelText: "Last Name",
                              //hintText: "Surname",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 32,
                        ),
                        Expanded(
                          flex: 3,
                          child: TextFormField(
                            decoration: const InputDecoration(
                             // filled: true,
                              fillColor: Color.fromARGB(255, 3, 53, 4),
                              contentPadding: EdgeInsets.only(
                                top: 1,
                                bottom: 1,
                                left: 1,
                                right: 1,
                              ),
                              //labelText: "Last Name",
                              //hintText: "Surname",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14.0),
                                ),
                              ),
                            ),
                          ),
                        ),
            ]),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/onboarding4',
                          );
                        },
                        child: const Text(
                          "Skip",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 3, 53, 4),
                          ),
                        ),
                      ),
                ),
                ]),
              ),
            ),
          ),
          //appBar: customAppbar(context),
        ));
  }

 // AppBar customAppbar(BuildContext context) {
    //return AppBar(
      //backgroundColor: Colors.white,
      //: IconButton(
        //icon: const Icon(
          //Icons.east,
         //color: Colors.black,
        //),
        //onPressed: () {
          //Navigator.pushNamed(
            //context,
            //'/onboarding2',
          //);
        //},
      //),
      //elevation: 0.2,
    //);
  //}
}
