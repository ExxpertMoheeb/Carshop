// ignore_for_file: file_names, prefer_final_fields, use_build_context_synchronously

import 'package:auto_app/Forget_password.dart';
import 'package:auto_app/CarouselForm.dart';
import 'package:auto_app/Registeration.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   bool hide=true;
 TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  String errorMessage='';
  // google sign in
    FirebaseAuth auth = FirebaseAuth.instance;
    User? loginuser;
final GoogleSignIn googleSignIns = GoogleSignIn();

    void googlesigning()async{


    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIns.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
            await auth.signInWithCredential(credential);

       var user= userCredential.user;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          // handle the error here
        }
        else if (e.code == 'invalid-credential') {
          // handle the error here
        }
      } catch (e) {
        // handle the error here
      }
    }

    return null;
  }

    
 
  signin() async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: emailcontroller.text, password: passwordcontroller.text);
          if(credential.user!=null){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const mainForm()));
              Fluttertoast.showToast(
        msg: "Succesfull Login",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );
          }
    } on FirebaseAuthException catch (e) {
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
    var width =MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
         body:Stack(
           children: [
             Padding(
               padding: EdgeInsets.only(left: width*0.05,right: width*0.05),
               child: Column(
                children: <Widget>[
                         Padding(
                           padding:  EdgeInsets.only(left: width*0.23,right: width*0.2,top: height*0.14,bottom: height*0.1),

                           child: Image.asset('asset/logo.png'),
                         ),
                           Card(
                            
                            elevation: 3,
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30)),
                             child: SizedBox(
                              height: height*0.07,
                               child: TextFormField(
                                cursorColor: Colors.black,
                                controller: emailcontroller,
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
                           SizedBox(height: height*0.02,),
                           Card(
                            
                            elevation: 3,
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30)),
                             child: SizedBox(
                              height: height*0.07,
                               child: TextFormField(
                                controller: passwordcontroller,
                                                         obscureText: hide,
                                cursorColor: Colors.black,
                                decoration:const InputDecoration(
                                      
                                     border: OutlineInputBorder(
                                      //borderRadius: BorderRadius.circular(30),
                                     borderSide: BorderSide.none
                                     ),
                                     hintText: 'Password',
                                     hintStyle: TextStyle(color: Colors.black54),
                                     hoverColor: Colors.white,
                                     
                                ),
                               ),
                             ),
                           ),
                            SizedBox(height: height*0.026,),
                
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 8),
                              child: SizedBox(
                                width:double.infinity,
                                height: height*0.055,
                                child: ElevatedButton(
                                  onPressed: (){
                                    signin();
                                  
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                  elevation: 5
                                  
                                  //RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                                ),
                                 child:const Text("Sign in",style: TextStyle(fontWeight: FontWeight.bold),
                                 
                                 )
                                 ),
                              ),


                            ),
                        SizedBox(height:height*0.02),
                        
                      
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Forget()));
                            },
                            child:const Text('Forgot your password?',style:
                             TextStyle(color: Colors.black,fontSize: 16),)),
                      
                        SizedBox(height:height*0.1),
                            const Text("Don't have an account?",style: 
                             TextStyle(color: Colors.black,fontSize: 16),),

                           SizedBox(height:height*0.01),
                        
                            InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Register()));
                            },
                            child: const Text('Register >',style:
                             TextStyle(color: Colors.orange,fontSize: 20),)),

                             
                             Container(alignment: Alignment.bottomRight,
                                   height: height*0.17,
                               child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const mainForm()));
                                },
                                child: const Text('Skip >',style:
                                 TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                             ),
                            
                             
                ],
               ),
             ),
           ],
         ) ,
    );
  }
}