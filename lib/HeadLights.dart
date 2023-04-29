// ignore_for_file: file_names

import 'package:auto_app/Card.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

class HeadLight extends StatefulWidget {
  const HeadLight({super.key});

  @override
  State<HeadLight> createState() => _HeadLightState();
}

class _HeadLightState extends State<HeadLight> {
   var currentindex=0;
  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * 0.54,
            width: width,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.08,
                ),
                CarouselSlider(
                  items: [
                    Container(
                      height: height,
                      width: width * 0.7,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('asset/Mask Group 4@3x.png'),
                        fit: BoxFit.cover,
                      )),
                    ),
                    Container(
                      height: height,
                      width: width * 0.7,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('asset/Mask Group 4@3x.png'),
                        fit: BoxFit.cover,
                      )),
                    ),
                    Container(
                      height: height,
                      width: width * 0.7,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('asset/Mask Group 4@3x.png'),
                        fit: BoxFit.cover,
                      )),
                    ),
                    Container(
                      height: height,
                      width: width * 0.7,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('asset/Mask Group 4@3x.png'),
                        fit: BoxFit.cover,
                      )),
                    ),
                  ],
                  options: CarouselOptions(
                    height: height * 0.32,

                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    initialPage: 0,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    //  reverse: true,

                    autoPlayAnimationDuration: const Duration(seconds: 3),
                    autoPlayInterval:const  Duration(seconds: 3),
                    viewportFraction: 0.8,

                    onPageChanged: (index, indexs) {
                      setState(() {
                        currentindex = index;
                      });
                    },
                  ),
                ),
                // SizedBox(height: height*0.04,),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.4, top: height * 0.1),
                  child: Row(
                    children: [
                      Container(
                        height: height * 0.01,
                        width: width * 0.02,
                        //color: Colors.black,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: currentindex == 0
                                ? Colors.black
                                : Colors.black26),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Container(
                        height: height * 0.01,
                        width: width * 0.02,
                        //color: Colors.black,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: currentindex == 1
                                ? Colors.black
                                : Colors.black26),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Container(
                        height: height * 0.01,
                        width: width * 0.02,
                        //color: Colors.black,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: currentindex == 2
                                ? Colors.black
                                : Colors.black26),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      Container(
                        height: height * 0.01,
                        width: width * 0.02,
                        //color: Colors.black,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: currentindex == 3
                                ? Colors.black
                                : Colors.black26),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.06, top: height * 0.012),
            child:const  Text(
              'BF Goodrich 315/70R17 Tire,\nAll-Terrain T/A KO2 - 08806',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.06, top: height * 0.018),
            child:const  Text(
              'Etiam convallis elementum sapiend,a aliquam turois aliuam vitae. Prasent sollicitudin felis vel mi facilisis posuere.nulla ultrices facilisis justo,\n non varius nisl semper vel.Interdum et malesuada fames ac ante ipsun\nprimis in faucibus ',
              style: TextStyle(color:Colors.black38,fontSize: 17, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 9.0,
        notchMargin: 8.0,
        child: SizedBox(
          height: height * 0.085,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(
              'AED 33',
              style: TextStyle(
                  color: Colors.yellow.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:const  Color.fromARGB(255, 28, 23, 23),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 34, vertical: 10)),
                // onPressed: ()=>,
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentCard()));
                },
                child: const Text(
                  'Buy Now',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 20),
                ))
          ]),
        ),
      ),
    ));
  }
}