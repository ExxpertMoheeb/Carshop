 // ignore_for_file: file_names, non_constant_identifier_names

 import 'package:auto_app/Splash_Screen/First_splash.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
     body: Column(
      children:[
        
                Padding(
                  padding:  EdgeInsets.only(top:height*0.17 ,left: width*0.03),
                  child: Image.asset('asset/logo1.png'),
                ),
                   Padding(
                    padding:  EdgeInsets.only(left: width*0.023,right: width*0.023,top: height*0.07),
                    child: Card(
                       elevation: 4,
                       shadowColor: Colors.black,
                       color: Colors.white,
                       shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
                       child: SizedBox(
                                    
                        height: height*0.4,
                        width: width,
                     
                            child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                        
                                 Padding(
                                   padding: const EdgeInsets.all(15.0),
                                   child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children:<Widget> [
                                      
                                        Image.asset('asset/Icon.png'),
                                         SizedBox(height: height*0.02,),
                                       const    Text('Choose Your Preferred Language',style:TextStyle(
                                       fontWeight: FontWeight.bold,fontSize: 17
                                      ),),
                                        SizedBox(height: height*0.015,),
                                          
                                         const Text('Please Select Your Language',style:TextStyle(color: Colors.black26
                                         )),
                                         ]
                                   ),

                                 ),
                                 SizedBox(height: height*0.005,),
                                     
                                  
                                   const  Divider(color:Colors.black38,),
                                    SizedBox(height: height*0.01,), 
                                    Row(
                                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(width:width*0.03),
                                        Image.asset('asset/arab.png',height: 20,width: 20,),
                                        SizedBox(width:width*0.15,),
                                        const  Text('عربی'),
                                         SizedBox(width:width*0.52,),
                                      const   CircleAvatar(
                                          backgroundColor: Colors.black,
                                          radius: 12,
                                          
                                               child: Icon(Icons.navigate_next_outlined,color: Colors.white,),
                                      ),
                                        // )
                                     
                                      ],
                                    ),
                                    SizedBox(height: height*0.01,),
                                  const   Divider(color:Colors.black38,), 
                                  //     SizedBox(height: height*0.02,),
                                           Row(
                                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                          SizedBox(width:width*0.03),
                                          Image.asset('asset/download.png',height: 20,width: 20,),
                                          SizedBox(width:width*0.15,),
                                         const   Text('English'),
                                           SizedBox(width:width*0.47,),
                                     InkWell(
                                          onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>const FirstSplash())),
                                          child :const CircleAvatar(
                                              backgroundColor: Colors.black,
                                              radius: 12,
                                                   child: Icon(Icons.navigate_next_outlined,color: Colors.white,),
                                                 ),
                                                
                                      ),
                                        
                                      ],
                                    ),
                                      

                   ]) ))
                          

            
    ) ]));                     
                      
  }
Widget Cards( String text,IconData iconss
){
 return  ListTile(
                 // leading:  Image.asset(Images,height: 20,width: 20,),
                  title: Text(text),
                  trailing: IconButton(onPressed: (){},
                  icon: Icon(iconss),
                  ),
       
     
   );
}

}