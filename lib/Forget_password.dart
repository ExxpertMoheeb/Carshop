// ignore_for_file: file_names

import 'package:auto_app/Register_verification.dart';
import 'package:flutter/material.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
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
               child: Container(
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
                                     Navigator.push(context, MaterialPageRoute(builder: (context)=>verification()));
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
        ])))])

    );
  }
}