// ignore_for_file: file_names, non_constant_identifier_names

import 'package:auto_app/Adrress.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CreateAddres extends StatefulWidget {
  const CreateAddres({super.key});

  @override
  State<CreateAddres> createState() => _CreateAddresState();
}

class _CreateAddresState extends State<CreateAddres> {
  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child:Scaffold(
        drawerEnableOpenDragGesture: false,
        resizeToAvoidBottomInset: false,
        endDrawerEnableOpenDragGesture: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const Address()));},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text(
          'Create Address',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
         body: Padding(
           padding:  EdgeInsets.only(left: width*0.07,right: width*0.03,top: height*0.03),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              //SizedBox(width: width*0.02,),
              hintname('Name'),
             Userfiels(),
             SizedBox(height: height*0.01,),
             hintname('Address lane'),
             Userfiels(),
              SizedBox(height: height*0.01,),
              hintname('City'),
             Userfiels(),
              SizedBox(height: height*0.01,),
              hintname('Postal Code'),
             Numberfiels(),
              SizedBox(height: height*0.01,),
              hintname('Phone Number'),
             Numberfiels(),
              SizedBox(height: height*0.05,),
               SizedBox(
                width: width,
                 child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Address()));
                  },
                        style: ElevatedButton.styleFrom(
                          padding:const EdgeInsets.symmetric(horizontal: 80,vertical: 12),
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),

                         child: const Text('Add Address',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),)),
               ),
             ],
           ),
         ),
       ));
  }
  Widget hintname(String name){
    
    var width = MediaQuery.of(context).size.width;
     return  Padding(
         padding: EdgeInsets.only(left:width*0.03 ),
         child:  Text(name,style:const TextStyle(color: Colors.black45,
         fontSize: 18,fontWeight: FontWeight.bold)),
       );
  }
  Widget Userfiels(){
      var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Card(
                elevation: 2,
                 borderOnForeground: true,
                 color: Colors.white,
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                 ),
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
  }
   Widget Numberfiels(){
      var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Card(
                elevation: 2,
                 borderOnForeground: true,
                 color: Colors.white,
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                 ),
                child: SizedBox(
                  height: height*0.066,
                  width: width,
                  child: TextFormField(
                    autofocus: false,
                    textAlign: TextAlign.start,
                    cursorColor: Colors.black45,
                    textDirection: TextDirection.ltr,
                   /// textInputAction: TextInputAction.continueAction,
                    keyboardType: TextInputType.number,
                    keyboardAppearance: Brightness.dark,
                    textAlignVertical: TextAlignVertical.bottom,
                   inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly
                   ],
                    decoration:const InputDecoration(
                      border: InputBorder.none,
                   
                     contentPadding: EdgeInsets.all(13),
                    
                      counterStyle:TextStyle(color: Colors.black45,fontWeight: FontWeight.bold), 
                    ),
                  ),
                ),
              );
  }
}