import 'package:flutter/material.dart';
import './loginscreen.dart';

import './pwreseterror.dart';



class PasswordReset extends StatefulWidget {
  const PasswordReset({Key? key}) : super(key: key);
 static String routeName = "/passwordreset";

   @override
  State<PasswordReset> createState() => _PasswordReset();
}

class _PasswordReset extends State<PasswordReset> {

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
        //appBar: customAppbar(context),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 21.0),
                child: Text(
                  "Password Reset",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  "Your new password must be different from previously used passwords.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              
              const PasswordField(),
              const SizedBox(
                height: 32,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Must be at least 8 characters.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const PasswordField(),
              const SizedBox(
                height: 16,
              ),
              
              const SizedBox(
                height: 100,
              ),
              const SigninButton(),
              const SizedBox(
                height: 200,
              ),
            
              const SizedBox(
                height: 8,
              ),
              Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 50.0),
                      child: Text(
                        "I remember my password!",
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
                        "Login",
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
      )
    );
  }
}



class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        hoverColor: Color.fromARGB(255, 2, 67, 4),
        focusColor: Color.fromARGB(255, 2, 67, 4),
      ),
    );
  }
}

class SigninButton extends StatelessWidget {
  const SigninButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: TextButton(
        style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.0)),
            backgroundColor:  const Color.fromARGB(255, 2, 45, 3)),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/pwreseterror',
                );
              },
        child: const Text("Submit"),
      ),
    );
  }
}
