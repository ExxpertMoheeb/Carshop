// ignore_for_file: file_names

import 'package:auto_app/CarouselForm.dart';
import 'package:flutter/material.dart';
class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    //var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
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
          'Notification',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body:ListView(
        children: [
          notificationlist(),
          SizedBox(
           // height: height*0.3,
            width: width,
            child:notificationlist() ,
          ),
          
        ],
      ),
      
      ));
  }
  Widget notificationlist(){

    var height = MediaQuery.of(context).size.height;
    return GridView.builder(
      itemCount: 20,
      shrinkWrap: true,
      
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        //mainAxisSpacing: 0,
        mainAxisExtent: height*0.1,
        ),
     itemBuilder: ((context, index){
      
      return const ListTile(
           leading: CircleAvatar(
            radius: 17,
           backgroundImage: AssetImage('asset/redIcon.png'),
          
           ),
            title:Text('Aenean non accumsan ante. Duis et risus accumsan sem tempus..'),
            subtitle: Text('1 hours ago'),
      );
     }));
  }
}