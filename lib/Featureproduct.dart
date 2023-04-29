// ignore_for_file: file_names

import 'package:auto_app/PowerBrakes.dart';
import 'package:auto_app/TireBuynow.dart';
import 'package:flutter/material.dart';


class Featuredproduct extends StatefulWidget {
  const Featuredproduct({super.key});

  @override
  State<Featuredproduct> createState() => _FeaturedproductState();
}

class _FeaturedproductState extends State<Featuredproduct>with TickerProviderStateMixin {
  var currentindex=0;
  TabController? controller;
  @override
   void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
      var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
                     child: Scaffold(
                              body: SizedBox(
                                height: height,
                                width: width,
                                child: DefaultTabController(
                                  length: 3,
                                  child: CustomScrollView(
                                  
                                    slivers: [
                                      PreferredSize(
                                        preferredSize: Size.fromHeight(height*0.4),
                                        child: SliverAppBar(
                                         expandedHeight: height*0.32,
                                          pinned: true,
                                          backgroundColor: Colors.grey.shade800,
                                          flexibleSpace: FlexibleSpaceBar(
                                            title: const Text('Featured Products'),
                                            centerTitle: true,
                                            background: Image.asset('asset/Rectangle 497@2x.png',fit: BoxFit.cover,),
                                          ),),
                                      ),
                                        const SliverAppBar(
                                          shadowColor: Colors.black,
                                        //  backwardsCompatibility: false,
                                        automaticallyImplyLeading: false,
                                        
                                          pinned: true,
                                          primary: false,
                                         elevation: 23,
                                          backgroundColor: Colors.white,
                                       title: Align(
                                      //  alignment: AlignmentDirectional.center,
                                        child: TabBar(
                                      
                                          enableFeedback: false,
                                          labelColor: Colors.black,
                                          unselectedLabelColor: Colors.black45,
                                          automaticIndicatorColorAdjustment: false,
                                 
                                          indicatorColor: Colors.yellow,
                                          padding: EdgeInsets.only(left: 10),
                                          labelStyle: TextStyle(
                                           // fontSize: 20,
                                            fontWeight: FontWeight.bold
                                          ),
                                          //labelPadding: EdgeInsets.only(left: 10,right: 10),
                                         labelPadding: EdgeInsets.only(left: 28,right: 28),
                                         isScrollable: true,
                                          tabs:[
                                          Tab(text: 'HONDA',),
                                           
                                           Tab(text: 'Audi',),
                                           
                                            Tab(text: 'Mercedes-\nBens',),
                                                               
                                        ]),
                                       ),
                                        ),
                                         SliverToBoxAdapter(

                                          child: SizedBox(
                                            height: height,
                                            child: 
                                            //Padding(
                                           //   padding: const EdgeInsets.all(40.0),
                                              //child: 
                                              TabBarView(
                                                children: [
                                                 
                                                     SizedBox(
                                                       child: Column(
                                                         children: [
                                                          InkWell(
                                                            onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow())),
                                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png',
                                                                      'Jeep BF Goodrich Tires', 'AED 33')),
                                                                       InkWell(
                                                                        onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const PowerBrake())),
                                                            child: feauted('asset/Rectangle 500@2x.png',
                                                                'Jeep Power Stop\nBrakes', 'AED 33')),
                                                                InkWell(
                                                            onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow())),
                                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png',
                                                                      'Jeep BF Goodrich Tires', 'AED 33')),
                                                                       InkWell(
                                                                        onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const PowerBrake())),
                                                            child: feauted('asset/Rectangle 500@2x.png',
                                                                'Jeep Power Stop\nBrakes', 'AED 33')),
                                                                     InkWell(
                                                            onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow())),
                                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png',
                                                                      'Jeep BF Goodrich Tires', 'AED 33')),
                                                                       InkWell(
                                                                        onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const PowerBrake())),
                                                            child: feauted('asset/Rectangle 500@2x.png',
                                                                'Jeep Power Stop\nBrakes', 'AED 33')),
                                                              InkWell(
                                                            onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow())),
                                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png',
                                                                      'Jeep BF Goodrich Tires', 'AED 33')),
                                                                       InkWell(
                                                                        onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const PowerBrake())),
                                                            child: feauted('asset/Rectangle 500@2x.png',
                                                                'Jeep Power Stop\nBrakes', 'AED 33')),
                                                              InkWell(
                                                            onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow())),
                                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png',
                                                                      'Jeep BF Goodrich Tires', 'AED 33')),
                                                                       InkWell(
                                                                        onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const PowerBrake())),
                                                            child: feauted('asset/Rectangle 500@2x.png',
                                                                'Jeep Power Stop\nBrakes', 'AED 33')),
                                                                  InkWell(
                                                            onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow())),
                                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png',
                                                                      'Jeep BF Goodrich Tires', 'AED 33')),
                                                         ],
                                                       ),
                                                     ),
                                                SizedBox(
                                                       child: Column(
                                                         children: [
                                                           InkWell(
                                                            onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow())),
                                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png',
                                                                      'Jeep BF Goodrich Tires', 'AED 33')),
                                                                       InkWell(
                                                                        onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const PowerBrake())),
                                                            child: feauted('asset/Rectangle 500@2x.png',
                                                                'Jeep Power Stop\nBrakes', 'AED 33')),
                                                                         InkWell(
                                                            onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow())),
                                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png',
                                                                      'Jeep BF Goodrich Tires', 'AED 33')),
                                                                       InkWell(
                                                                        onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const PowerBrake())),
                                                            child: feauted('asset/Rectangle 500@2x.png',
                                                                'Jeep Power Stop\nBrakes', 'AED 33')),

                                                                     InkWell(
                                                            onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow())),
                                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png',
                                                                      'Jeep BF Goodrich Tires', 'AED 33')),
                                                                       InkWell(
                                                                        onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const PowerBrake())),
                                                            child: feauted('asset/Rectangle 500@2x.png',
                                                                'Jeep Power Stop\nBrakes', 'AED 33')),
                                                                InkWell(
                                                            onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow())),
                                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png',
                                                                      'Jeep BF Goodrich Tires', 'AED 33')),
                                                                       InkWell(
                                                                        onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const PowerBrake())),
                                                            child: feauted('asset/Rectangle 500@2x.png',
                                                                'Jeep Power Stop\nBrakes', 'AED 33')),
                                                                         InkWell(
                                                            onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow())),
                                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png',
                                                                      'Jeep BF Goodrich Tires', 'AED 33')),
                                                                       InkWell(
                                                                        onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const PowerBrake())),
                                                            child: feauted('asset/Rectangle 500@2x.png',
                                                                'Jeep Power Stop\nBrakes', 'AED 33')),
                                                                  InkWell(
                                                            onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow())),
                                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png',
                                                                      'Jeep BF Goodrich Tires', 'AED 33')),
                                                         ],
                                                       ),
                                                     ),
                                                              SizedBox(
                                                       child: Column(
                                                         children: [
                                                        InkWell(
                                                            onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow())),
                                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png',
                                                                      'Jeep BF Goodrich Tires', 'AED 33')),
                                                                       InkWell(
                                                                        onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const PowerBrake())),
                                                            child: feauted('asset/Rectangle 500@2x.png',
                                                                'Jeep Power Stop\nBrakes', 'AED 33')),
                                                             InkWell(
                                                            onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow())),
                                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png',
                                                                      'Jeep BF Goodrich Tires', 'AED 33')),
                                                                       InkWell(
                                                                        onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const PowerBrake())),
                                                            child: feauted('asset/Rectangle 500@2x.png',
                                                                'Jeep Power Stop\nBrakes', 'AED 33')),
                                                            InkWell(
                                                            onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow())),
                                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png',
                                                                      'Jeep BF Goodrich Tires', 'AED 33')),
                                                                       InkWell(
                                                                        onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const PowerBrake())),
                                                            child: feauted('asset/Rectangle 500@2x.png',
                                                                'Jeep Power Stop\nBrakes', 'AED 33')),
                                                               InkWell(
                                                            onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow())),
                                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png',
                                                                      'Jeep BF Goodrich Tires', 'AED 33')),
                                                                       InkWell(
                                                                        onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=> const PowerBrake())),
                                                            child: feauted('asset/Rectangle 500@2x.png',
                                                                'Jeep Power Stop\nBrakes', 'AED 33')),
                                                             InkWell(
                                                            onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow())),
                                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png',
                                                                      'Jeep BF Goodrich Tires', 'AED 33')),
                                                                       InkWell(
                                                                        onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const PowerBrake())),
                                                            child: feauted('asset/Rectangle 500@2x.png',
                                                                'Jeep Power Stop\nBrakes', 'AED 33')),
                                                                InkWell(
                                                            onTap:()=>
                                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow())),
                                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png',
                                                                      'Jeep BF Goodrich Tires', 'AED 33')),
                                                                      
                                                         ],
                                                       ),
                                                     ),
                                                   
                                                ]
                                                                            
                                              ),
                                            ),
                                        //  ),
                                        )
                                    ]
                                  ),
                                ) ,
                              ),
                                  ) );
  }
    Widget feauted(String image, String name, String model) {
    return ListTile(
      leading: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    //  horizontalTitleGap: 40,
      title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(
        model,
        style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      ),
    );
  }
}