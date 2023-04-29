// ignore_for_file: file_names, prefer_final_fields, non_constant_identifier_names, unused_local_variable, use_build_context_synchronously

import 'package:auto_app/Register_verification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool hide = true;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  String errorMessage='';
  signup() async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: emailcontroller.text, password: passwordcontroller.text);
          if(credential.user!=null){
            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const verification()));
         Fluttertoast.showToast(
        msg: "Registration Successfully",
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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: width * 0.23,
                      right: width * 0.2,
                      top: height * 0.2,
                      bottom: height * 0.1),
                  child: Image.asset('asset/logo.png'),
                ),

                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: SizedBox(
                    height: height * 0.07,
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            //borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none),
                        hintText: 'Name',
                        hintStyle: TextStyle(color: Colors.black54),
                        hoverColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: SizedBox(
                    height: height * 0.07,
                    child: TextFormField(
                      controller: emailcontroller,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            //borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none),
                        hintText: 'E-Mail',
                        hintStyle: TextStyle(color: Colors.black54),
                        hoverColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                //SizedBox(height: height*0.02,),
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: SizedBox(
                    height: height * 0.07,
                    child: TextFormField(
                      controller: passwordcontroller,
                      obscureText: hide,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            //borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.black54),
                        hoverColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.026,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 8),
                  child: SizedBox(
                    width: double.infinity,
                    height: height * 0.055,
                    child: ElevatedButton(
                        onPressed: () {
                          signup();
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 5),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                ),

                SizedBox(height: height * 0.025),

                InkWell(
                    onTap: () {},
                    child: const Text(
                      'Terms and Conditions',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          textBaseline: TextBaseline.alphabetic),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
