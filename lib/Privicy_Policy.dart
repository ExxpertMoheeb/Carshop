// ignore_for_file: file_names

import 'package:auto_app/Setting.dart';
import 'package:flutter/material.dart';


class Priivic extends StatefulWidget {
  const Priivic({super.key});

  @override
  State<Priivic> createState() => _PriivicState();
}

class _PriivicState extends State<Priivic> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const Setting()));},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text(
          'Privacy Policy',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 20,right: 20),
        child: Text('Aenean non accumsan ante.'
        ' Duis et risus accumsan sem tempus porta nec sit amet est. Sed ut euismod quam. Suspendisse potenti. Aliquam fringilla orci tincidunt, ullamcorper erat in, malesuada metus. Vivamus luctus maximus vestibulum. Donec et enim vitae tellus auctor ornare. Aenean leo diam, feugiat sed nulla sed, consequat venenatis est. Praesent commodo consequat pharetra. Fusce fermentum ante ac metus interdum elementum. Nam arcu lectus, lacinia non augue a, mollis bibendum augue.',style: TextStyle(fontWeight: FontWeight.w400),),
      )
      ));
  }
}