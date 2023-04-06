import 'package:flutter/material.dart';

//import 'package:country_list_pick/country_list_pick.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);
 static String routeName = "/signupscreen";

   @override
  State<SignupScreen> createState() => _SignupScreen();
}

class _SignupScreen extends State<SignupScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Signup - DevPartners",
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: ListView(
            children: [
              SizedBox(
                height: 26,
                child: Image.asset(
                  'assets/logo.png',
                  width: 102,
                  height: 16,
                  scale: 0.000001,
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.topLeft,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 21.0),
                child: Text(
                  "Tell us about yourself",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  "Create a new DevPartners account.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 1,
                          bottom: 1,
                          left: 21,
                          right: 1,
                        ),
                        labelText: "First Name",
                        hintText: "Firstname",
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
                    flex: 1,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 1,
                          bottom: 1,
                          left: 21,
                          right: 1,
                        ),
                        labelText: "Last Name",
                        hintText: "Surname",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(14.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(
                    top: 1,
                    bottom: 1,
                    left: 21,
                    right: 1,
                  ),
                  labelText: "Phone Number",
                  hintText: "+234",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(
                    top: 1,
                    bottom: 1,
                    left: 21,
                    right: 1,
                  ),
                  labelText: "Email",
                  hintText: "Enter your email address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(
                    top: 1,
                    bottom: 1,
                    left: 21,
                    right: 1,
                  ),
                  labelText: "Password",
                  hintText: "Enter your password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height:4,
              ),
              const Text('By creating an account,',
              style: TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 4,
              ), 
              const Text(
              'I accept Dev Partners Terms & Conditions',
              style: TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 4,
              ),

              const Text( 
              'and have read and accept the Privacy Policy.',
              style: TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white, shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0)),
                      backgroundColor:  const Color.fromARGB(255, 2, 45, 3)),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/signupconfirm',
                    );
                  },
                  child: const Text("Sign Up"),
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
                      "I am a member already?",
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
                      "Sign in",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 5, 173, 16),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }

  //get routes => routes;
}
