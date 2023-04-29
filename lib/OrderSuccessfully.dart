// ignore_for_file: file_names
import 'package:auto_app/CarouselForm.dart';
import 'package:flutter/material.dart';
class OrderSuccessfull extends StatefulWidget {
  const OrderSuccessfull({super.key});

  @override
  State<OrderSuccessfull> createState() => _OrderSuccessfullState();
}

class _OrderSuccessfullState extends State<OrderSuccessfull> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration:const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/interface (1)@2x.png')
                  )
                ),
              ),
            const  Text('Thank you\n for your\n order!',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            const  SizedBox(height: 13,),
            const   Text(' Question suscipit ipsum est, eu\n      venenatis leo ornare eget.',style: TextStyle(color:Colors.black54,),),
            const SizedBox(height: 30,),
           ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const mainForm()));
                  },
                        style: ElevatedButton.styleFrom(
                          padding:const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),

                         child: const Text('Back to Home',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
               
            ],
          ),
        ),
      )
    );
  }
}