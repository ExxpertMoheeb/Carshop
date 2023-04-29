// ignore_for_file: file_names, unused_field, prefer_final_fields, use_build_context_synchronously

import 'package:auto_app/Register_verification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  TextEditingController emailcontroller=TextEditingController();
  FirebaseAuth _auth=FirebaseAuth.instance;
  String errorMessage='';
  forget()async{
    try{
     await _auth.sendPasswordResetEmail(email: emailcontroller.text);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const verification()));
      Fluttertoast.showToast(
        msg:'Send Messsage',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );
    }on FirebaseAuthException catch(e){
           switch (e.code) {
        case "invalid-email":
          errorMessage = "Invalid Email!";
          break;
         case "wrong-password":
          errorMessage = "Wrong Password";
          break;
        case "user-not-found":
          errorMessage = "User with this email doesn't exist.";
          break;
        case "user-disabled":
          errorMessage = "User with this email has been disabled.";
          break;
        case "too-many-requests":
          errorMessage = "Too many requests";
          break;
        case "":
          errorMessage = "Signing in with Email and Password is not enabled.";
          break;
        default:
          errorMessage = "An undefined Error happened.";
      }
      Fluttertoast.showToast(
        msg: errorMessage,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    }
  }
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      //resizeToAvoidBottomInset: false,

        body: Stack(
                  children:<Widget> [
                      Padding(
               padding: EdgeInsets.only(left: width*0.05,right: width*0.05),
               child: Column(
                children: <Widget>[
                         Padding(
                           padding:  EdgeInsets.only(left: width*0.23,right: width*0.2,top: height*0.2,bottom: height*0.1),

                           child: Image.asset('asset/logo.png'),
                         ),
                   SizedBox(height: height*0.001,),
                   const Text('Forget Password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),)
                   ,
                   SizedBox(height: height*0.03,),
                  const   Text('enter email address to receive\n '   
                                  '  a 4 digit verification code',
                     style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),),
               
               SizedBox(height: height*0.03,),
                 Card(
                            
                            elevation: 3,
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30)),
                             child: SizedBox(
                              height: height*0.07,
                               child: TextFormField(
                                controller: emailcontroller,
                                textAlign: TextAlign.center,
                                cursorColor: Colors.black,
                                decoration:const InputDecoration(
                             
                                     border: OutlineInputBorder(

                                      //borderRadius: BorderRadius.circular(30),
                                     borderSide: BorderSide.none
                                     ),
                                     hintText: 'E-Mail',
                                     hintStyle: TextStyle(color: Colors.black54),
                                     hoverColor: Colors.white,
                                     
                                ),
                               ),
                             ),
                           ),
                          

                             SizedBox(height: height*0.04,),
                          Padding(
                              padding: const EdgeInsets.only(left: 10,right: 8),
                              child: SizedBox(
                                width:double.infinity,
                                height: height*0.055,
                                child: ElevatedButton(onPressed: (){
                                  forget();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                  elevation: 5
                                  
                                 
                                ),
                                 child:const Text("Submit",style: TextStyle(fontWeight: FontWeight.bold),
                                 
                                 )
                                 ),
                              ),


                            ),
        ]))])

    );
  }
}