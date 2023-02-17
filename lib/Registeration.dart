

// ignore_for_file: file_names

import 'package:auto_app/Register_verification.dart';
import 'package:flutter/material.dart';


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
  Signup() async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: emailcontroller.text, password: passwordcontroller.text);
    } on FirebaseAuthException catch (e) {
      
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
                      obscureText: hide,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
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
                                child: ElevatedButton(onPressed: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const verification()));
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                  elevation: 5
                                  
                                 
                                ),
                                 child:const Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold),
                                 
                                 )
                                 ),
                              ),


                            ),
                      
                           SizedBox(height:height*0.025),
                        
                            InkWell(
                            onTap: (){
                              
                            },
                            child: const Text('Terms and Conditions',style:
                             TextStyle(color: Colors.black,fontSize: 14,textBaseline: TextBaseline.alphabetic),)),

                            
                             
                ],
               ),
             ),
           ],
         ) ,





    );




  }
}