import 'package:flutter/material.dart';
import './loginscreen.dart';

import './pwreseterror.dart';



class StudentOnboarding extends StatefulWidget {
  const StudentOnboarding({Key? key}) : super(key: key);
 static String routeName = "/passwordreset";

   @override
  State<StudentOnboarding> createState() => _StudentOnboarding();
}

class _StudentOnboarding extends State<StudentOnboarding> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Password - Reset",
      routes: {

        '/pwreseterror': (context) => const PwResetError(),
        '/loginscreen': (context) => const LoginScreen(),

      },  
      home: Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            SizedBox(
              height: 26,
                child: Text(
                  "What do you want to learn?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  "Select a short course, programming language, or a career path. You’ll review these courses daily.",                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
             SizedBox(
                height: 32,
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Programming Languages",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
} 