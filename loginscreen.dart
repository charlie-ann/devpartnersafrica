import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
 static String routeName = "/loginscreen";

   @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 32,
            ),
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
                "Hi! It’s good to see you again!",
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
                "Enter your details to continue.",
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
            const EmailField(),
            const SizedBox(
              height: 32,
            ),
            const PasswordField(),
            const SizedBox(
              height: 16,
            ),
             Row(
              children: [
                //Checkbox(
                  //checkColor: Colors.blue,
                  //onChanged: (bool value) {
                    //(() {
                      //this.value = value;
                    //});
                  //}, value: null,
                //), //Checkbox
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/resetlink',
                    );
                  },
                  child: const Text(
                    "Remember me!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 2, 45, 3),
                    ),
                  ),
                ),
                const SizedBox(
              width: 180,
            ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/forgotpassword',
                    );
                  },
                  child: const Text(
                    "Forgot Password?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 2, 45, 3),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            const SigninButton(),
            const SizedBox(
              height: 42,
            ),
           
            const SizedBox(
              height: 16,
            ),
            Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                      "I don't have an account yet?",
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
                        '/signupscreen',
                      );
                    },
                    child: const Text(
                      "Sign Up",
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
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({
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
        labelText: "Email",
        hintText: "Enter your email address",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(14.0),
          ),
        ),
      ),
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
            '/loginotp',
          );
        },
        child: const Text("Sign In"),
      ),
    );
  }
}
