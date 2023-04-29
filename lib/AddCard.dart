

// ignore_for_file: file_names, non_constant_identifier_names, unused_local_variable

import 'package:auto_app/Payment.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return SafeArea(child: 
                Scaffold(
               appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Payment()));},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text(
          'Add Card',
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: width*0.06,right: width*0.07),
        child: ListView(
           children: [
            SizedBox(height:height*0.02),
             Padding(
               padding:  EdgeInsets.only(left: width*0.1,right: width*0),
               child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Image.asset('asset/visa.png'),
            SizedBox(width:width*0.03),

                  Image.asset('asset/master.png'),
                    SizedBox(width:width*0.03),

                  Image.asset('asset/american.png'),
                    SizedBox(width:width*0.03),

                  Image.asset('asset/discover.png')
                 ],
               ),
             ),
              Padding(
                padding: EdgeInsets.only(left: width*0.15,right: width*0.16),
                child: ElevatedButton(
                 onPressed: (){
                 //   Navigator.push(
                 //                 context,
                 //                 MaterialPageRoute(
                 //                     builder: (context) => const OrderSuccessfull()));
                  },
                       style: ElevatedButton.styleFrom(
                         padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 7),
                         backgroundColor: Colors.yellow.shade800,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20),
                         )),

                        child: const Text('Scan Credit Card',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
              SizedBox(height: height*0.04,),
                 hintname('Name on Card'),
                 Userfiels(),
                  SizedBox(height: height*0.02,),
                 hintname('Card number'),
                 Numberfiels(width),
                 SizedBox(height: height*0.02,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     hintname('Expiry date'),
                     
                     Padding(
                       padding:  EdgeInsets.only(right: width*0.1),
                       child: hintname('Security code'),
                     ),
                  ],
                 ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     Numberfiels(width*0.4),
                      Numberfiels(width*0.4),
                  ],
                 ),
                 SizedBox(height: height*0.02,),
                 hintname('ZIP/Postal code'),
                 Numberfiels(width),
                 SizedBox(height: height*0.02,),
                 hintname('Nick Name'),
                 Userfiels(),
                 SizedBox(height: height*0.02,),
               
                Padding(
                padding: EdgeInsets.only(left: width*0.03,right: width*0.03),
                child: ElevatedButton(
                 onPressed: (){
                   Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => const Payment()));
                  },
                       style: ElevatedButton.styleFrom(
                         padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 7),
                         backgroundColor: Colors.black,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20),
                         )),

                        child: const Text('Add Card',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
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
   Widget Numberfiels(double widths){
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
                  width:widths ,
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