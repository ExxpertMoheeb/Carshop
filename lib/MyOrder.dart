// ignore_for_file: avoid_print, file_names

import 'package:auto_app/CarouselForm.dart';
import 'package:flutter/material.dart';


class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder>with TickerProviderStateMixin {
 TabController? controller;
 
 var currentvalue=0;
  @override
   void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  DefaultTabController(length: 2,
      child: SafeArea(
        child:Scaffold(
            appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const mainForm()));},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: const Text(
            'Create Address',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        
          bottom: TabBar(
            // onTap: (value) {
            //  setState(() {
            //     currentvalue=value;
            //     print(currentvalue);
            //  });
            // },
            controller: controller,
                                        
                                            enableFeedback: false,
                                            labelColor: Colors.black,
                                            unselectedLabelColor: Colors.black45,
                                            automaticIndicatorColorAdjustment: false,
                                   
                                            indicatorColor: Colors.yellow.shade800,
                                            padding: EdgeInsets.only(left: width*0.03,right: width*0.03),
                                            labelStyle:const TextStyle(
                                              //fontSize: 20,
                                              fontWeight: FontWeight.bold
                                            ),
                                         
                                           labelPadding: EdgeInsets.only(left: width*0.1,right:width*0.15),
                                           isScrollable: true,
                                            tabs:const[
                                            Tab(text: 'Active Orders',),
                                             
                                             Tab(text: 'Past Orders',),
                                             
                                             
                                                                 
                                          ]),                                         
       ),
              body: ListView(
                children: [
                  SizedBox(
                    height: height,
                    width: width,
                    child: TabBarView(
                      controller: controller,
                      children: [
                     SizedBox(
                          height: height,
                          child: ListView(
                              shrinkWrap: true,
       physics:const NeverScrollableScrollPhysics(),
                            children: [
                              feauted('asset/Rectangle 490@3x.png'),
                              feauted('asset/BFG_KO2Tire_02.png'),
                              feauted('asset/Rectangle 490@3x.png'),
                              feauted('asset/BFG_KO2Tire_02.png'),
                              feauted('asset/Rectangle 490@3x.png'),
                              feauted('asset/BFG_KO2Tire_02.png'),
                              feauted('asset/Rectangle 490@3x.png'),
                              feauted('asset/BFG_KO2Tire_02.png'),
                              feauted('asset/Rectangle 490@3x.png'),
                              feauted('asset/BFG_KO2Tire_02.png'),
                              feauted('asset/Rectangle 490@3x.png'),
                              feauted('asset/BFG_KO2Tire_02.png'),
                              feauted('asset/Rectangle 490@3x.png'),
                            ],
                          ),
                         ),
                           SizedBox(
                          height: height,
                          child: ListView(
                              shrinkWrap: true,
       physics:const NeverScrollableScrollPhysics(),
                            children: [
                              feauted('asset/Rectangle 490@3x.png'),
                              feauted('asset/BFG_KO2Tire_02.png'),
                              feauted('asset/Rectangle 490@3x.png'),
                              feauted('asset/BFG_KO2Tire_02.png'),
                              feauted('asset/Rectangle 490@3x.png'),
                              feauted('asset/BFG_KO2Tire_02.png'),
                              feauted('asset/Rectangle 490@3x.png'),
                              feauted('asset/BFG_KO2Tire_02.png'),
                              feauted('asset/Rectangle 490@3x.png'),
                              feauted('asset/BFG_KO2Tire_02.png'),
                              feauted('asset/Rectangle 490@3x.png'),
                              feauted('asset/BFG_KO2Tire_02.png'),
                              feauted('asset/Rectangle 490@3x.png'),
                            ],
                          ),
                         ),
                      ],
                    ),
                  ),
                ],
              ),
        )),
    );
  }
  
  
   Widget feauted(String images,) {
    
    return ListView(
      shrinkWrap: true,
      physics:const NeverScrollableScrollPhysics(),
      children: [
        ListTile(
          leading: Image.asset(
            images,
            fit: BoxFit.cover,
          ),
          title: const Text('Jeep BF Goodrich Tires', style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle:const Text(
            'AED 33',
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}