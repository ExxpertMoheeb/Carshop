// ignore_for_file: file_names, non_constant_identifier_names



import 'package:auto_app/CarouselForm.dart';
import 'package:auto_app/Catalog.dart';

import 'package:flutter/material.dart';


class SearchItem extends StatefulWidget {
  const SearchItem({super.key});

  @override
  State<SearchItem> createState() => _SearchItemState();
}

class _SearchItemState extends State<SearchItem> {
  @override
  Widget build(BuildContext context) {
      var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child:
       Scaffold(
        drawerEnableOpenDragGesture: false,

            appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const mainForm()));},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text(
          'Search',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),   
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            SizedBox(height: height*0.02,),
            SearchField(),
         SizedBox(height: height*0.01,),
         Padding(
           padding: EdgeInsets.only(left: width*0.06,right: width*0.06),
           child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            elevation: 2,
             child: SizedBox(
              height: height*0.73,
       
             
               child: ListView.builder(
                itemCount: 23,
                itemBuilder:(BuildContext context,int index){
                 return Column(
                   children: [
                     Itemlist(),
                    const Divider(color: Colors.black54,),
                   ],
                 );
                } ),
             ),
           ),
         ), 
         SizedBox(height: height*0.01,)
          ],
        ),
      ),
    ));
  }
  Widget Itemlist(){
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Catalog()));
      },
      child: Padding(
        padding: EdgeInsets.only(left: width*0.04,right: width*0.04),
        child: SizedBox(
          height: height*0.06,
          child:
               const  ListTile(
                  leading: Icon(Icons.search),
                  title: Text('Excepteur sint occaecat'),
               ),
             
          
        ),
      ),
    );
  }
  Widget SearchField(){
      var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Card(
                elevation: 2,
                 borderOnForeground: true,
                 color: Colors.white,
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                 ),
                child: SizedBox(
                  height: height*0.066,
                  width: width*0.87,
                  child: TextFormField(
                    autofocus: false,
                    textAlign: TextAlign.start,
                    cursorColor: Colors.black45,
                    textDirection: TextDirection.ltr,
                   /// textInputAction: TextInputAction.continueAction,
                    keyboardType: TextInputType.name,
                    keyboardAppearance: Brightness.dark,
                    textAlignVertical: TextAlignVertical.bottom,

                    decoration:const InputDecoration(
                      prefixIcon:Icon(Icons.search,color: Colors.black,),
                      border: InputBorder.none,
                      hintText: 'Audi ',
                      hintStyle: TextStyle(color: Colors.black),
                     disabledBorder: InputBorder.none,
                     contentPadding: EdgeInsets.all(13),
                    
                      counterStyle:TextStyle(color: Colors.black45,fontWeight: FontWeight.bold), 
                    ),
                  ),
                ),
              );
  }
  
}