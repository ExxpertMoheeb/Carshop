// ignore_for_file: unused_local_variable, file_names

import 'package:auto_app/Splash_Screen/loginScreen.dart';
import 'package:flutter/material.dart';

class FirstSplash extends StatefulWidget {
  const FirstSplash({super.key});

  @override
  State<FirstSplash> createState() => _FirstSplashState();
}

class _FirstSplashState extends State<FirstSplash> {
  final pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  var index = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: PageView(
            controller: pageController,
            onPageChanged: (value) {
              setState(() {
                index = value + 1;
              });
            },
            children: [
              screens(),
              screens(),
              screens(),
              screens(),
              screens(),
            ]),
        bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            elevation: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13, bottom: 13, top: 7),
                  child: Row(
                    children: [
                      Text(
                        index.toString(),
                        style:const  TextStyle(fontSize: 28),
                      ),
                      const Text('/5'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: Row(
                    children: [
                      index < 2
                          ? const SizedBox()
                          : IconButton(
                              onPressed: () {
                                setState(() {
                                  index != index;
                                });
                                pageController.previousPage(
                                    duration: const Duration(
                                      seconds: 2,
                                    ),
                                    curve: Curves.easeInOut);
                              },
                              icon:const Icon(
                                Icons.keyboard_arrow_left,
                              ),
                            ),
                     const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                          icon: Icon(
                            (index < 5)
                                ? Icons.navigate_next_outlined
                                : Icons.check_circle,
                            
                          ),
                          onPressed: () {
                            setState(() {
                              
                                index != index;
                            
                            }); 
                       if(index==5){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                              }else{
                            pageController.nextPage(
                                duration: const Duration(
                                  seconds: 2,
                                ),
                                curve: Curves.easeInOut);
  }})
                    ],
                  ),
                )
              ],
            )));
  }

  Widget screens() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(top: height * 0.07),
      child: Column(
        children: [
          const Text(
            '  In Consequat, quam id sodales \nhenderit, eros mi molestie leo, nec\nlacinia risus neque tristique augue. ',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black38),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Image.asset(
            'asset/Mask iPhone X@3x.png',
            height: height * 0.7,
            width: width,
          ),
        ],
    
      ),
    );
  }
}
