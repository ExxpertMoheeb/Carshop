// ignore_for_file: file_names, non_constant_identifier_names

import 'package:auto_app/TireBuynow.dart';
import 'package:flutter/material.dart';
class TiresAndWheels extends StatefulWidget {
  const TiresAndWheels({super.key});

  @override
  State<TiresAndWheels> createState() => _TiresAndWheelsState();
}

class _TiresAndWheelsState extends State<TiresAndWheels> {
  List<Map> items=[
    { "id": 0,
      "image": 'asset/BFG_KO2Tire_02.png',
      "name": 'Jeep BF Goodrich Tires',
      "model":'AED 33'
    },
    { "id": 1,
      "image": 'asset/2020-04-dealsoftheweek-05@2x.png',
      "name": 'Jeep Power Stop Brakes',
       "model":'AED 41'
    },
    { "id": 2,
      "image": 'asset/Rectangle 500@2x.png',
      "name": 'RT Off-Road Jeep Accessories & Parts',
       "model":'AED 33'
    },
    { "id": 3,
      "image": 'asset/Rectangle 501@2x.png',
      "name": 'Jeep Rubicon Express Suspension Parts',
       "model":'AED 41'
    },
    { "id": 4,
      "image": 'asset/2020-04-dealsoftheweek-05@2x.png',
      "name": 'Service Parts',
       "model":'AED 33'
    },
    { "id": 5,
      "image": 'asset/Rectangle 489@2x.png',
      "name": 'Filters',
       "model":'AED 41'
    },

  ];
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
          child: CustomScrollView(slivers: [
            PreferredSize(
              preferredSize: Size.fromHeight(height * 0.4),
              child: SliverAppBar(
                expandedHeight: height * 0.32,
                pinned: true,
                backgroundColor:const Color.fromARGB(255, 40, 39, 39),
                flexibleSpace: FlexibleSpaceBar(
                  title: const Text('Tires & Wheels'),
                  centerTitle: true,
                  background: Image.asset(
                    'asset/Rectangle 490@3x.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // SizedBox(height: height*0.03,),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: height * 0.02),
                child: Column(
                  children: [
                
                    Padding(
                      padding: EdgeInsets.only(left: width*0.04,right:width*0.04),
                      child: Parts(),
                    ),
                    
                   // Parts('asset/Rectangle 488@2x.png')
                    //Parts('asset/Rectangle 488@2x.png', 'Engine Parts')
                  ],
                ),
              ),
            )
          ])),
      //  ),
    )));
  }

  Widget Parts() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount:items.length ,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 12,
        mainAxisExtent: height*0.32,
        crossAxisCount: 2,crossAxisSpacing: 12),
       itemBuilder: ((context, index) {
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const TireBuyNow()));
          },
          child: Container(
            //height: height*0.02,
            //width: width*0.3,
            decoration: BoxDecoration(
             // color: Colors.yellowAccent,
              borderRadius: BorderRadius.circular(12)
            ),
             child: Column(
              children: [
                ClipRRect(
                  child: Image.asset(items.elementAt(index)['image'],height: height*0.2,),
                ),
                SizedBox(height: height*0.01),
                Padding(
                  padding: EdgeInsets.only(left: width*0.03,right: width*0.02),
                  child: Text(items.elementAt(index)['name'],style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: height*0.01),
                 Padding(
                  padding: EdgeInsets.only(left: width*0.03,right: width*0.02),
                  child: Text(items.elementAt(index)["model"],style: TextStyle(color: Colors.yellow.shade800,fontSize: 17,fontWeight: FontWeight.bold),),
                )
              ],
             )
          ),
        );
       }));
       
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
  }}