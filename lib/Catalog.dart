// ignore_for_file: file_names, override_on_non_overriding_member, non_constant_identifier_names

import 'package:auto_app/Tires&Wheels.dart';
import 'package:flutter/material.dart';
class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> with TickerProviderStateMixin {

  @override
  
List<Map> items=[
    { "id": 0,
      "image": 'asset/Rectangle 488@2x.png',
      "name": 'Engine Parts',
    },
    { "id": 1,
      "image": 'asset/Rectangle 489@2x.png',
      "name": 'Lights',
    },
    { "id": 2,
      "image": 'asset/Rectangle 500@2x.png',
      "name": 'Tires & Wheels',
    },
    { "id": 3,
      "image": 'asset/Rectangle 494@3x.png',
      "name": 'Brake system',
    },
    { "id": 4,
      "image": 'asset/2020-04-dealsoftheweek-05@2x.png',
      "name": 'Service Parts',
    },
    { "id": 5,
      "image": 'asset/Rectangle 489@2x.png',
      "name": 'Filters',
    },
    // { "id": 6,
    //   "image": 'asset/Rectangle 489@2x.png',
    //   "name": 'Lights',
    // },

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
                backgroundColor: const Color.fromARGB(255, 40, 39, 39),
                flexibleSpace: FlexibleSpaceBar(
                  title: const Text('Catalog 4X4'),
                  centerTitle: true,
                  background: Image.asset(
                    'asset/Rectangle 497@2x.png',
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
                    SizedBox(
                        height: height * 0.056,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // SizedBox(height: height*0.03,width: width*0.1,),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Colors.black38, width: 2),
                              ),
                              child: const Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text('Gladiator mojova 2020     X'),
                                ),
                              ),
                            ),
                            Image.asset('asset/Filter Icon.png')
                          ],
                        )),
                    SizedBox(
                      height: height * 0.02,

                    ),
                    InkWell(
                      onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const TiresAndWheels()));
                       },
                        child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Parts(),
                      ),
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
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount:items.length ,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 12,
        mainAxisExtent: height*0.276,
        crossAxisCount: 2,crossAxisSpacing: 12),
       itemBuilder: ((context, index) {
        return Container(
          //height: height*0.02,
          //width: width*0.3,
          decoration: BoxDecoration(
           // color: Colors.yellowAccent,
            borderRadius: BorderRadius.circular(12)
          ),
           child: Column(
            children: [
              ClipRRect(
                child: Image.asset(items.elementAt(index)['image'],),
              ),
              SizedBox(height: height*0.01,),
              Text(items.elementAt(index)['name'],style:const TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
            ],
           )
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
  }
}
