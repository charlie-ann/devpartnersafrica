import 'package:flutter/material.dart';
import 'dart:async';
import './onboarding1.dart';
//import './onboarding2.dart';
//import './onboarding3.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String routeName = "/splash_screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //int counter = 0;
  //bool isReady = false;

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3,),
      () {

        //if(isReady && counter < 2){
          Navigator.pushNamed( context, OnBoarding1.routeName );
         
          
        //}
      }  
    ); 
    
     
        //setState(() {
          //counter++;
         // if( counter  <= 3){
         // isReady = true;
          
          //}
          
       // }); 
        
               
        
      
    

    //if(isReady && counter < 2){
     // Navigator.pushNamed( context, OnBoarding1.routeName ); 
   // }else{
      
    //}
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(
        child: Center(
          child:  Image(
            image: AssetImage(
              'assets/logo.png',                 
            ),
          ),
        ),
      ),
    );
  }
}