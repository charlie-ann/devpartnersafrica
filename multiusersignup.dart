import 'package:flutter/material.dart';
//import './onboarding4.dart';

class MultiuserSignup extends StatefulWidget {
  const MultiuserSignup({Key? key}) : super(key: key);
 static String routeName = "/multiusersignup";

   @override
  State<MultiuserSignup> createState() => _MultiuserSignup();
}

class _MultiuserSignup extends State<MultiuserSignup> {
 
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MultiuserSignup - DevPartners",
      home: Scaffold(
        //appBar: customAppbar(context),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            children: [
              
              const Padding(
                padding: EdgeInsets.only(top: 00.0),
              ), 

              const Text(
                'Type of Account',
                textAlign: TextAlign.left, 
              ),

              const SizedBox(
                height: 21.0,               
              ),

              const Text(
                'Select your the of account',
                textAlign: TextAlign.left,
              ),

              const SizedBox(
                height: 21.0,
              ),

              InkWell(
                splashColor: Colors.black26,
                onTap: () {
                  Navigator.pushNamed(
                      context,
                      '/signupscreen',
                    );
                },
                child: Ink.image(
                  image: const AssetImage(
                    'assets/Component4.png'
                  ),
                  height: 100,
                  width: 300,
                ),
              ),

              const SizedBox(
                height: 15.0,
              ),
              
              InkWell(
                splashColor: Colors.black26,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/signupscreen',
                  );
                },
                child: Ink.image(
                  image: const AssetImage(
                    'assets/Component5.png'
                  ),
                  height:100,
                  width: 300,
                ),
              ),
              
              const SizedBox(
                height: 8.0,
              ),
              
              InkWell(
                splashColor: Colors.black26,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/signupscreen',
                  );
                },
                child: Ink.image(
                  image: const AssetImage(
                    'assets/Component6.png'
                  ),
                  height: 100,
                  width: 300,
                ),
                
              ),
            ],
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