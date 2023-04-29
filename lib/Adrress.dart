// ignore_for_file: non_constant_identifier_names, file_names


import 'package:auto_app/Card.dart';
import 'package:auto_app/Create_Address.dart';
import 'package:auto_app/Payment.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
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
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentCard()));},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text(
          'Address',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: width * 0.04, right: width * 0.04, top: height * 0.004,),
        child: ListView(
          children: [
                Addres(),
                SizedBox(height: height*0.015,),
                Addres(),
                  SizedBox(height: height*0.015,),
                Addres(),
                SizedBox(height: height*0.07,),
              Padding(
                padding: EdgeInsets.only(left: width*0.04,right: width*0.03,top: height*0.08),
                child: InkWell(
                  onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreateAddres()));
                  },
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    strokeWidth: 1,
                    dashPattern: const [1,0,2,5],
                    padding: const EdgeInsets.all(6),
                    
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      child: SizedBox(
                        height: height*0.05,
                        width: width,
                        child:const Center(child: Text('+ Add Address',style: TextStyle(color: Colors.black,fontSize: 20),)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height*0.13,),
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Padding(
                   padding:  EdgeInsets.only(left: width*0.09,right: width*0.09,),
                   child: ElevatedButton(
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Payment()));
                    },
                          style: ElevatedButton.styleFrom(
                            padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 11),
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),

                           child: const Text('Continue To Payment',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
                 ),)
                 
    ));
  }

  // Address class 
  
  Widget Addres (){
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
            height: height * 0.175,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 8,
             // shadowColor: Colors.black54,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.radio_button_checked_rounded,
                        color: Colors.black54,
                        size: 20,
                      )),
                    //  SizedBox(height: height*0.1,width: width*0,),
                 SizedBox(
                  width: width*0.6,
                 height: height*0.9,
                   child: const  ListTile(
                    
                      title: Text(
                        'Michelangelo Flores',
                        style: TextStyle(
                          fontSize: 18,
                            color: Color.fromARGB(198, 35, 34, 34), fontWeight: FontWeight.w700),
                                       ),
                                       subtitle: Text(
                        '09297575442\n658 Yost Island Apt,Seattle\nUS',
                        style: TextStyle(
                          fontSize: 15,
                            color: Color.fromARGB(199, 96, 94, 94), fontWeight: FontWeight.bold),
                                       ),
                     ),
                 ),
                  
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove_circle,
                        color: Colors.black54,
                        size: 16,
                      ))
                ],
              ),
            ),
          );
  }
}
