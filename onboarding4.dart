import 'package:flutter/material.dart';
import 'dart:async';
//import './multiusersignup.dart';

class OnBoarding4 extends StatefulWidget {
  const OnBoarding4({Key? key}) : super(key: key);
 static String routeName = "/onboarding4";

   @override
  State<OnBoarding4> createState() => _OnBoarding4();
}

class _OnBoarding4 extends State<OnBoarding4> {
 
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3 ),
      () {
        //Navigator.pushNamed( context, OnBoarding4.routeName ); 
   
      },
    );

   
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Onboarding4 - DevPartners",
      home: Scaffold(
        //appBar: customAppbar(context),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: ListView(children: [

                
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: SizedBox(
                    height: 200,
                    child: Image.asset(
                      'assets/onboarding4.png',
                      width: 200,
                      height: 170,
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                
                const Padding(
                  padding: EdgeInsets.only(top: 21.0),
                  child: Text(
                    textAlign:TextAlign.center,
                    "Let's Get Started",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    textAlign:TextAlign.center,
                    "Everything works better together.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0, right:8.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white, shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0)),
                            backgroundColor: const Color.fromARGB(255, 2, 45, 3)),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/multiusersignup',
                          );
                        },
                        child: const Text
                        ("Create a free account"),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 50.0),
                      child: Text(
                        "I am a member already!",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/loginscreen',
                        );
                      },
                      child: const Text(
                        "Log in",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 2, 45, 3),
                        ),
                      ),
                    ),
                     const Padding(
                      padding: EdgeInsets.only(left: 2.0),
                      child: Text(
                        "here.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                )
          ]),
            ),
        ),
      ),
    ),
    );
  }

  
}





//initialRoute: "/",
     // routes: {
      //  '/': (context) => const SplashScreen(),
        // '/login': (context) => const Login(),
        //'/loginotp': (context) => const LoginOtp(),
        //'/onboarding': (context) => const Onboarding(),
        // '/resetlink': (context) => const Resetlink(),
        // '/resetnew': (context) => const Resetnew(),
        //'/signup': (context) => const Signup(),
        //'/signupconfirm': (context) => const SignupConfirm(),
        //'/signupverified': (context) => const SignupVerified(),
     // },