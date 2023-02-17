// ignore_for_file: file_names, camel_case_types

import 'package:auto_app/First_Screen.dart';
import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

 @override
  void initState() {
     Future.delayed(
           const Duration(seconds: 3),
              () => Navigator.push(
          context, MaterialPageRoute(builder:(context)=>const FirstScreen())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
          backgroundColor: Colors.white.withOpacity(0.95),
      body:Column(
       mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        
            Center(
              
              child:  Image.asset('asset/black.gif',height: 200,width: 200,)
              
              )    
        ],
      )
                
    );
  }
}