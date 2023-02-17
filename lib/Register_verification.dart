// ignore_for_file: file_names, camel_case_types

import 'package:auto_app/Resend_email_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class verification extends StatefulWidget {
  const verification({super.key});

  @override
  State<verification> createState() => _verificationState();
}

class _verificationState extends State<verification> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
     var width=MediaQuery.of(context).size.width;
    return  Scaffold(
resizeToAvoidBottomInset: false,
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
                   const Text('Enter Code',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),)
                   ,
                   SizedBox(height: height*0.03,),
                  const   Text('enter a verification code we sentyou on you\n '   
                                  '                     on your email',
                     style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),),

                     SizedBox(height: height*0.03,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        verifybox(),
                        verifybox(),
                        verifybox(),
                        verifybox()


                        ],
                      ),
                       SizedBox(height: height*0.04,),

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
                                 child:const Text("Verify",style: TextStyle(fontWeight: FontWeight.bold),
                                 
                                 )
                                 ),
                              ),


                            ),
                             SizedBox(height: height*0.045,),
                         const    Text('Not received?',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),)
 ,
                              SizedBox(height: height*0.03,),

                               InkWell(
                            onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const Resend()));
                            },
                            child: const Text('Resend Code >',style:
                             TextStyle(color: Colors.black,fontSize: 18),)),
                    ],
               )),
                  
                   ]));
  }

  Widget verifybox(){
   var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return   Card(
                            child: SizedBox(
                              height: height*0.06,
                              width: width*0.12,
                              
                              child: TextField(
                                
                                onChanged: ((value){
                                  if(value.length==1){
                                    FocusScope.of(context).nextFocus();
                                  }
                                }),
                                cursorColor: Colors.black,
                              
                                style: Theme.of(context).textTheme.headline6,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                 
                                ],
                                textDirection: TextDirection.ltr,
                                decoration: const InputDecoration.collapsed(hintText: ''),
                              ),
                            ),
                          );
  }
}