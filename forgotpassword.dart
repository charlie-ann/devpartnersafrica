import 'package:flutter/material.dart';
import './passwordreset.dart';



class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);
 static String routeName = "/forgotpassword";

   @override
  State<ForgotPassword> createState() => _ForgotPassword();
}

class _ForgotPassword extends State<ForgotPassword> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Forgot - Password",
      routes: {

        '/passwordreset': (context) => const PasswordReset(),
      },  

 

      home: Scaffold(
        appBar: customAppbar(context),

      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: ListView(
          children: [
           
                
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                "Forgot Password?",
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
                "Don’t worry, it happens. Please enter the email address associated with your account..",
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
            //const PasswordField(),
            const SizedBox(
              height: 180,
            ),
            const SigninButton(),
            const SizedBox(
              height:8,
            ),
            Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                      "I remember my password?",
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
    ));
  }
}

AppBar customAppbar(BuildContext context) {
    return AppBar(
      
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(
          Icons.west,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      elevation: 0.2,
    );
  }
//class CustomAppbar {
//}

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
              '/passwordreset',
            );
          },
          child: const Text("Submit"),
      ),
    );
  }
  

  
}