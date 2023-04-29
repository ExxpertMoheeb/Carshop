// ignore_for_file: file_names, non_constant_identifier_names

import 'package:auto_app/Profile.dart';
import 'package:flutter/material.dart';


class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
             appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const Profile()));},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text(
          'Change Password ',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
        ),
      ),

      body: Padding(
        padding:  EdgeInsets.only(left:width*0.04,top: height*0.016,right: width*0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            hintname('Current password'),
           
            Userfiels(),
            SizedBox(height: height*0.01,),
            hintname('New password'),
           
            Userfiels(),
            SizedBox(height: height*0.04,),
              SizedBox(
                width: width,
                 child: ElevatedButton(
                   onPressed: (){
                 
                   },
                        style: ElevatedButton.styleFrom(
                          padding:const EdgeInsets.symmetric(horizontal: 80,vertical: 10),
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),

                         child: const Text('Submit',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
               ),

          ],
        ),
      ),
      ));
  }
  Widget hintname(String name){
    
    var width = MediaQuery.of(context).size.width;
     return  Padding(
         padding: EdgeInsets.only(left:width*0.01 ),
         child:  Text(name,style:const TextStyle(color: Colors.black45,
         fontSize: 18,fontWeight: FontWeight.bold)),
       );
  }
  Widget Userfiels(){
      var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Card(
                elevation: 1,
                 borderOnForeground: true,
                 color: Colors.white,
               
                  child: SizedBox(
                  height: height*0.066,
                  width: width,
                  child: TextFormField(
                    autofocus: false,
                    textAlign: TextAlign.start,
                    cursorColor: Colors.black45,
                    textDirection: TextDirection.ltr,
                   /// textInputAction: TextInputAction.continueAction,
                    keyboardType: TextInputType.name,
                    keyboardAppearance: Brightness.dark,
                    textAlignVertical: TextAlignVertical.bottom,

                    decoration:const InputDecoration(
                      border: InputBorder.none,
                     disabledBorder: InputBorder.none,
                     contentPadding: EdgeInsets.all(13),
                    
                      counterStyle:TextStyle(color: Colors.black45,fontWeight: FontWeight.bold), 
                    ),
                  ),
                ),
              );
  }}