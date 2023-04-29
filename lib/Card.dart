// ignore_for_file: file_names

import 'package:auto_app/Adrress.dart';
import 'package:auto_app/TireBuynow.dart';

import 'package:flutter/material.dart';

class PaymentCard extends StatefulWidget {
  const PaymentCard({super.key});

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            // backgroundColor: Colors.white70,
            appBar: AppBar(
              elevation: 0,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow()));
                  
                    },
              ),
              backgroundColor: Colors.white70,
              title: const Text(
                'Card',
                style: TextStyle(
                    color: Color.fromARGB(255, 34, 34, 34),
                    fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            ),
            body: ListView(
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  height: height * 0.07,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'PRODUCTS',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        '4 ITEM',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                Items('asset/BFG_KO2Tire_02@3x.png'),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.1, right: width * 0.135),
                  child: const Divider(
                    color: Colors.black26,
                  ),
                ),
                jeepitem('asset/Rectangle 497.png'),
                // Items('asset/Rectangle 497.png'),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.1, right: width * 0.135),
                  child: const Divider(
                    color: Colors.black26,
                  ),
                ),

                Items('asset/BFG_KO2Tire_02@3x.png'),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.1, right: width * 0.135),
                  child: const Divider(
                    color: Colors.black26,
                  ),
                ),
                jeepitem('asset/Rectangle 497.png'),
                // Items('asset/Rectangle 497.png'),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.1, right: width * 0.135),
                  child: const Divider(
                    color: Colors.black26,
                  ),
                ),

                // Coupan Number 

                SizedBox(
                  height: height * 0.1,
                  child: Padding(
                    padding: EdgeInsets.only(left: width*0.04,right: width*0.085),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: width * 0.45,
                         height: height*0.07,
                          child: Card(
                          //  elevation: 1,
                           color: Colors.white,

                            child: TextFormField(
                              
                            //  cursorHeight: height*0.08,
                              textAlign: TextAlign.center,
                             readOnly: true,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                hintText: "Coupan Number",
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          padding:const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                          backgroundColor: Colors.black),
                         child: const Text('Apply',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),))
                      ],
                    ),
                  ),
                ),
               Padding(
                 padding:
                      EdgeInsets.only(left: width * 0.1, right: width * 0.135,top: height*0.015,bottom: height*0.01),
                  child: const Divider(
                    color: Colors.black54,
                  ),
                ),
                Price('Discount', 'AED 26',FontWeight.w500),
                 Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.1, right: width * 0.135,top: height*0.015,bottom: height*0.01),
                  child: const Divider(
                    color: Colors.black54,
                  ),
                ),
                Price('Subtotal', 'AED 324',FontWeight.w600),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.1, right: width * 0.135,top: height*0.01,bottom: height*0.01),
                  child: const Divider(
                    color: Colors.black,
                  ),
                ),
                
                 Padding(
                   padding:  EdgeInsets.only(left: width*0.12,right: width*0.13,top: height*0.013),
                   child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Address()));
                    },
                          style: ElevatedButton.styleFrom(
                            padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),

                           child: const Text('Checkout',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),)),
                 ),
                 SizedBox(height: height*0.03,),
              ],
            )));
  }
  // ignore: non_constant_identifier_names
  Widget Price(String name,String price,FontWeight sizes){
     // ignore: unused_local_variable
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding:
                      EdgeInsets.only(left: width * 0.1, right: width * 0.135),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name),
          Text(price,style: TextStyle(color: Colors.yellow.shade800,fontWeight:sizes,fontSize: 17),)
        ],
      ),
    );
  }
  // ignore: non_constant_identifier_names
  Widget Items(String image) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.18,
      child: Row(
       
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          
            Image.asset(image, height: height * 0.25, fit: BoxFit.fitHeight),
          
            Padding(
              padding: EdgeInsets.only(top: height * 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'BF Goodrich\n315/70R17\nTire,All',
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'AED 41',
                    style: TextStyle(
                        color: Colors.yellow.shade800,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text('Delete'),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    color: Colors.black54,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle,
                      color: Colors.black26,
                    )),
                const Text(
                  '3',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    color: Colors.black26,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove_circle,
                      color: Colors.black26,
                    ))
              ],
            ),
          ]),
    );
  }

  Widget jeepitem(String image) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.175,
      child: Padding(
        padding: EdgeInsets.only(left: width * 0.06, right: width * 0.07),
        child: Row(
        
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Image.asset(image, height: height * 0.145, fit: BoxFit.fitHeight),

              Padding(
                padding: EdgeInsets.only(top: height * 0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'BF Goodrich\n315/70R17\nTire,All',
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'AED 41',
                      style: TextStyle(
                          color: Colors.yellow.shade800,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text('Delete'),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      color: Colors.black54,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_circle,
                        color: Colors.black26,
                      )),
                  const Text(
                    '3',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      color: Colors.black26,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove_circle,
                        color: Colors.black26,
                      ))
                ],
              ),
            ]),
      ),
    );
  }
}
