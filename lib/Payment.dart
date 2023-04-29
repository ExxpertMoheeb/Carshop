// ignore_for_file: file_names, non_constant_identifier_names

import 'package:auto_app/AddCard.dart';
import 'package:auto_app/Adrress.dart';
import 'package:auto_app/OrderSuccessfully.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';


class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Address()));},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text(
          'Payment',
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: width * 0.03, right: width * 0.03, top: height * 0.004,),
        child: Column(
          children: [
                cardtype('Globel', 'asset/visa.png'),
                SizedBox(height: height*0.01,),
                cardtype('Fast cash','asset/master.png'),
              
              Padding(
                padding: EdgeInsets.only(left: width*0.04,right: width*0.03,top: height*0.06),
                child: InkWell(
                  onTap: (){
                     
                  },
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddCard()));
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
                          child:const Center(child: Text('+ Add Card',style: TextStyle(color: Colors.black,fontSize: 20),)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height*0.04,),
              Price('Dicount', 'AED 26', FontWeight.w500),
              Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, right: width * 0.04,top: height*0.01,bottom: height*0.01),
                  child: const Divider(
                    color: Colors.black,
                  ),
                ),
               Price('Subtotal', 'AED 324', FontWeight.w800),
               Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.04, right: width * 0.04,top: height*0.01,bottom: height*0.01),
                  child: const Divider(
                    color: Colors.black54,
                  ),
                ),
                Price('Total', 'AED 324', FontWeight.w800,),

              SizedBox(height: height*0.05,),
              SizedBox(
                width: width,
                 child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const OrderSuccessfull()));
                  },
                        style: ElevatedButton.styleFrom(
                          padding:const EdgeInsets.symmetric(horizontal: 80,vertical: 10),
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),

                         child: const Text('Place Order',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
               ),
        ]),
      ),
      
                 
    ));
  }
  // price and discount

   Widget Price(String name,String price,FontWeight sizes){
     // ignore: unused_local_variable
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: width*0.04,right: width*0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name),
          Text(price,style: TextStyle(color: Colors.yellow.shade800,fontWeight:sizes,fontSize: 17),)
        ],
      ),
    );
  }

  // Card Type
  
  Widget cardtype (String name,String image){
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
                //crossAxisAlignment: CrossAxisAlignment.start,
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
                // height: height*0.9,
                   child:  ListTile(
                    leading: Image(image: AssetImage(image)),
                      title: Text(
                        name,
                        style: const TextStyle(
                          fontSize: 18,
                            color: Color.fromARGB(198, 35, 34, 34), fontWeight: FontWeight.w700),
                                       ),
                                       subtitle:const Text(
                        '034XXX-00X001',
                        style: TextStyle(
                          fontSize: 15,
                            color: Color.fromARGB(199, 96, 94, 94), fontWeight: FontWeight.bold),
                                       ),
                     ),
                 ),
                  
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.black54,
                        size: 16,
                      ))
                ],
              ),
            ),
          );
  }
}
