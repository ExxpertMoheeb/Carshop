// ignore_for_file: file_names

import 'package:auto_app/CarouselForm.dart';
import 'package:auto_app/ChangePassword.dart';
import 'package:auto_app/EditProfileName.dart';
import 'package:auto_app/Edit_Email.dart';
import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
         var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
    
      child: Scaffold(
        backgroundColor: Colors.black,
          appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const mainForm()));},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
       
      
      ),
        body: SizedBox(
          height: height,
          width: width,
          child: Column(
            children: [
              SizedBox(
                 
               
                height: height*0.3,
               child: Padding(
                 padding: EdgeInsets.only(top: height*0.2),
                 child: Center(
                  
                  child: Text('Mark William',style: TextStyle(color: Colors.yellow.shade800,fontSize: 33,fontWeight: FontWeight.bold),),
                 ),
               ),
              ),
              Container(
              //  color: Colors.white,
                width: width,
                height: height*0.57,
               // height: height*0.4,
                decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(20),
                    topRight: Radius.circular(20),
                  )
                ),
                child: Column(
                  children: [
                    const Center(
                      child: Text('Profile',style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold),),
                    ),
                   
                
                  ListTile(
                      title:const Text('Name'),
                      subtitle:const Text('Mark William',style:TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87
                      ),),
                      trailing: IconButton(
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>const EditProfileName()));
                        },
                        icon: Icon(Icons.edit,color: Colors.yellow.shade800,),
                      ),
                    ),
                const  Divider(),
                   ListTile(
                      title:const Text('Email'),
                      subtitle:const Text('Markweise@gmail.com',style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87
                      ),),
                      trailing: IconButton(
                        onPressed: (){
                           Navigator.push(context,MaterialPageRoute(builder: (context)=>const EditEmail()));
                        },
                        icon: Icon(Icons.edit,color: Colors.yellow.shade800,),
                      ),
                    ),
                 
                   const Divider(),
                    ListTile(
                      title:const Text('Password'),
                      subtitle:const Text('Change Password',style:TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87
                      ),),
                      trailing: IconButton(
                        onPressed: (){
                           Navigator.push(context,MaterialPageRoute(builder: (context)=>const ChangePassword()));
                        },
                        icon: Icon(Icons.edit,color: Colors.yellow.shade800,),
                      ),
                    ),
               
                  ],
                ),
              )
            ],
          ),
        ),
      ));
  }
 
}