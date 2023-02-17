import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class latestproduct extends StatefulWidget {
  const latestproduct({super.key});

  @override
  State<latestproduct> createState() => _latestproductState();
}

class _latestproductState extends State<latestproduct> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
    body: CustomScrollView(
                                slivers: <Widget>[
                                  SliverAppBar(
                                    foregroundColor: Colors.transparent,
                                    expandedHeight: height*0.35,
                                    backgroundColor: Colors.transparent,
                                    
                                     surfaceTintColor: Colors.transparent,
                                     shadowColor: Colors.transparent,
                                    flexibleSpace:FlexibleSpaceBar(
                                      
                                      background: Image.asset('asset/Rectangle 497@3x.png',fit: BoxFit.cover,),
                                      centerTitle: true,
                                      title:Text( 'Latest Products'),

                                      )  ),

                                     

                                      SliverToBoxAdapter(
                                        child: ListView.builder(
                                          primary: false,
                                          scrollDirection: Axis.vertical,
                                          shrinkWrap: true,
                                          itemCount: 5,
                                          itemBuilder: (context, index) {
                                            return Column(
                                              children: [
                                                InkWell(
                                                  child: feauted('asset/BFG_KO2Tire_02@3x.png', 'Jeep BF Goodrich Tires', 'AED 33')
                                                  ),
                                                InkWell(
                                                  child: feauted('asset/Rectangle 500@2x.png',
                                                   'Jeep Power Stop\nBrakes', 'AED 33')),
                                               
                                              ],
                                             
                                            );
                                          },
                                          
                                        
                                        )
                                      )
                                ],
                              ),
    );
  }
  Widget feauted (String image ,String name,String model){
    return ListTile(
                                          
                                            leading:Image.asset('$image',
                                            fit: BoxFit.cover,),
                                            title: Text(name,style: const TextStyle(fontWeight: FontWeight.bold)),
                                            subtitle: Text(model,style: const TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
    );
  
}
  }
