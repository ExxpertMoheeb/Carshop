// ignore_for_file: file_names, non_constant_identifier_names

import 'package:auto_app/Adrress.dart';
import 'package:auto_app/CarouselForm.dart';
import 'package:auto_app/First_Screen.dart';
import 'package:auto_app/Privicy_Policy.dart';

import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool isSwitch=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const mainForm()));},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text(
          'Setting',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
        ),
      ),
         body: Column(
          children: [

               InkWell(
                onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const FirstScreen()));
                  },
                    child: Items('Language'),
                ),

                InkWell(
                onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Address()));
                },
                child: Items('Address'),
                ),
               
               InkWell(
                onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Priivic()));
                 },
                  child: Items('Privicy Policy'),
                ),
              

               Padding(
                 padding: const EdgeInsets.all(0),
                 child: ListTile(
                  leading:const Text('Notification',style: TextStyle(
                    color: Colors.black54,
                           fontWeight: FontWeight.bold,
                           fontSize: 16
         ),), 
         trailing: Switch(

  // thumb color (round icon)
  activeColor: Colors.white,
  
  activeTrackColor: Colors.yellow.shade800,
  inactiveThumbColor: Colors.white,
  inactiveTrackColor: Colors.grey,
  splashRadius: 50.0,
  // boolean variable value
            onChanged: (value){
                      setState(() {
                        isSwitch=value;
                      });
            },
          value:isSwitch,

), 
                 ),
               )
         ]),
      ));
  }
  Widget Items(String name,){
    return ListTile(
         leading: Text(name,style:const TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 16,
                         color: Colors.black54,
         ),),
         trailing:const Icon(Icons.navigate_next),
    );
  }
}