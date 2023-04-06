import 'package:flutter/material.dart';
import 'dart:async';
import './onboarding3.dart';

class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({Key? key}) : super(key: key);
 static String routeName = "/onboarding2";
   @override
  State<OnBoarding2> createState() => _OnBoarding2();
}

class _OnBoarding2 extends State<OnBoarding2> {
  
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3 ),
      () {
          Navigator.pushNamed( context, OnBoarding3.routeName ); 

      },
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Onboarding2 - DevPartners",
      home: Scaffold(
        //appBar: customAppbar(context),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(children: [
              
             
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: SizedBox(
                  height: 100,
                  child: Image.asset(
                    'assets/onboarding2.png',
                    width: 120,
                    height: 150,
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 21.0),
                child: Text(
                  "Explore the best scholarship opportunities.",
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
                  "Providing you with direct access to the best scholarships for your career path from all of the best companies.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:100.0, left: 450.0, right: 450.0, bottom: 50.0),
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
                            filled: true,
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
    );
  }

 
}
