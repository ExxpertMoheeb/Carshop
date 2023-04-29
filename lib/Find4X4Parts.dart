
// ignore_for_file: file_names, non_constant_identifier_names

import 'package:auto_app/CarouselForm.dart';
import 'package:auto_app/Catalog.dart';
import 'package:flutter/material.dart';



class FindParts extends StatefulWidget {
  const FindParts({super.key});

  @override
  State<FindParts> createState() => _FindPartsState();
}

class _FindPartsState extends State<FindParts> {
  String drowpdownd = 'Select Brand';
  String selected="Select Model";
  List<String> items = <String>["Select Brand","Sugladiator","Land Rover","Gladiator","Land Rover","Gladiator","Land Rover","Gladiator","Land Rover",
    
  ];
  List<Map> item = [
    {
      "id":0,
     "name":"Select Model",
  },
   {
      "id":1,
     "name":"Sugladiator",
  },
   {
      "id":2,
     "name":"Land Rover",
  },
   {
      "id":3,
     "name":"Gladiator",
  },
   {
      "id":4,
     "name":"Land Rover",
  },
  {
      "id":5,
     "name":"Gladiator",
  },
  {
      "id":6,
     "name":"Land Rover",
  },

 
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
          elevation: 0,
              leading: IconButton(
                icon:const Icon(Icons.arrow_back,color: Colors.black,),
                onPressed: () {
                   Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => const mainForm()));
                },

              ),
              backgroundColor: Colors.white,
            ),
            body: Column(children: [
              SizedBox(
                height: height * 0.04,
                width: width,
              ),
              const Text(
                'Find parts for 4X4\n and adventues',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              ),
              SizedBox(height: height * 0.04,),
              MenueSelection('Select Brand'),
             SizedBox(height: height * 0.03,),
             Container(
                width: width*0.8,
               decoration: BoxDecoration(
               border: Border.all(color: Colors.black38),
               borderRadius: BorderRadius.circular(15),
               ),

                height: height*0.05,
                child:  DropdownButton<String>(
                  //menuMaxHeight: height*0.9,
                  elevation: 5,
                  underline:const SizedBox(),
                  isExpanded: true,
                  hint:const Text('Select Model',style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),),
                   icon: const Icon(Icons.arrow_drop_down),
                   items: item.map((Map maps){
                     return  DropdownMenuItem<String>(
                        value: maps['name'].toString(),
                    
                      child: Padding(
                        padding:EdgeInsets.only(left: width*0.01),
                        child: Text(maps['name']),
                      ),
                     );
                   }).toList(),

                   onChanged: (value){
                     setState(() {
                      selected!=value;
                     });
                   },
                   value:selected,

                 ),
                    
                  ),
  
              SizedBox(height: height * 0.03,),
              MenueSelection('Select Parts Year'),
                            SizedBox(height: height * 0.05,),
                 Padding(
                   padding:  EdgeInsets.only(left: width*0.06,right: width*0.07,top: height*0.01),
                   child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Catalog()));
                    },
                          style: ElevatedButton.styleFrom(
                            padding:const EdgeInsets.symmetric(horizontal: 120,vertical: 12),
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),

                           child: const Text('Search',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),)),
                 ),
            ])
              ),
            );
  }
  Widget MenueSelection(String title){
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
                width: width*0.8,
               decoration: BoxDecoration(
               border: Border.all(color: Colors.black38),
               borderRadius: BorderRadius.circular(15),
               ),

                height: height*0.05,
                child:  DropdownButton<String>(
                  elevation: 4,
                  //itemHeight: height,
                 // menuMaxHeight: height,
                  underline: const SizedBox(),
                  isExpanded: true,
                  hint: Text(title,style: const TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),),
                   icon: const Icon(Icons.arrow_drop_down),
                   items: items.map(( maps){
                     return  DropdownMenuItem<String>(
                        value: maps,
                     child: Padding(
                        padding:EdgeInsets.only(left: width*0.01),
                        child: Text(maps),
                      ),
                     );
                   }).toList(),

                   onChanged: (value){
                     setState(() {
                      drowpdownd!=value;
                     });
                   },
                   value:drowpdownd,

                 ),
                    
                  );
  }
}
