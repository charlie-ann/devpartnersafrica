import 'package:devpartners/onboarding4.dart';
import 'package:flutter/material.dart';
//import 'package:checked_yaml/checked_yaml.dart';
//import 'package:intro_slider/intro_slider.dart';
import './splash_screen.dart';
import './onboarding1.dart';
import './onboarding2.dart';
import './onboarding3.dart';
//import './onboarding4.dart';
import './onboardingall.dart';

import './multiusersignup.dart';
import './signupscreen.dart';
import './loginscreen.dart';
import './forgotpassword.dart';
import './passwordreset.dart';
import './pwreseterror.dart';







void main() {
  runApp(const DevPartners());
}

class DevPartners extends StatelessWidget {
  const DevPartners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'DevPartners',

       initialRoute: "/",
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding1': (context) => const OnBoarding1(title: 'Onboarding1 - DevPartners',),
        '/onboarding2': (context) => const OnBoarding2(),
        '/onboarding3': (context) => const OnBoarding3(),
        '/onboarding4': (context) => const OnBoarding4(),
        '/onboardingall': (context) => const OnBoardingAll(title: 'Onboarding1 - DevPartners',),

        '/multiusersignup': (context) => const MultiuserSignup(),
        '/signupscreen': (context) => const SignupScreen(),
        '/loginscreen': (context) => const LoginScreen(),
        '/forgotpassword': (context) => const ForgotPassword(),
        '/passwordreset': (context) => const PasswordReset(),
        '/pwreseterror': (context) => const PwResetError(),


      },
      //initialRoute: SplashScreen.routeName,
      //routes: {
        //SplashScreen.routeName: (context) => const SplashScreen(),
       // OnBoarding1.routeName: (context) => const OnBoarding1(title: 'Onboarding1 - DevPartners',),
       // OnBoarding2.routeName: (context) => const OnBoarding1(title: 'Onboarding2 - DevPartners',),
        //OnBoarding3.routeName: (context) => const OnBoarding1(title: 'Onboarding3 - DevPartners',),

      //},
    );
  }
}

