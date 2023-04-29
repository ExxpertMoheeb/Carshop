// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, camel_case_types, file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:auto_app/BodyParts.dart';
import 'package:auto_app/Brake_Switch.dart';
import 'package:auto_app/Business_Registeration.dart';
import 'package:auto_app/Card.dart';
import 'package:auto_app/Engine_Parts.dart';
import 'package:auto_app/Featureproduct.dart';
import 'package:auto_app/Find4X4Parts.dart';
import 'package:auto_app/HeadLights.dart';
import 'package:auto_app/MyOrder.dart';
import 'package:auto_app/Notification.dart';
import 'package:auto_app/Profile.dart';
import 'package:auto_app/Search.dart';
import 'package:auto_app/Setting.dart';
import 'package:auto_app/latestproducts.dart';

class mainForm extends StatefulWidget {
  const mainForm({super.key});

  @override
  State<mainForm> createState() => _mainFormState();
}

class _mainFormState extends State<mainForm> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          key: scaffoldKey,
          body:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    if (scaffoldKey.currentState!.isDrawerOpen) {
                      scaffoldKey.currentState!.closeDrawer();
                      //close drawer, if drawer is open
                    } else {
                      scaffoldKey.currentState!.openDrawer();
                      //open drawer, if drawer is closed
                    }
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.indigo,
                  ),
                ),
                SizedBox(width: width * 0.6),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Notifications()));
                  },
                  icon: const Icon(
                    Icons.notification_add,
                    color: Colors.indigo,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaymentCard()));
                  },
                  icon: const Icon(
                    Icons.add_shopping_cart_sharp,
                    color: Colors.indigo,
                  ),
                )
              ],
            ),
            SearchField(),
            SizedBox(width: width * 0.08),
            SizedBox(
              height: height * 0.03,
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: height * 0.27,
                    child: CarouselSlider(
                      items: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FindParts()));
                          },
                          child: Container(
                            //  height: height*0.03,
                            // color: Colors.red,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff1A237E),
                            ),
                            child: Center(
                                child: Column(
                              children: <Widget>[
                                const SizedBox(
                                  height: 28,
                                ),
                                const Text(
                                  'Search for',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  '4x4  parts',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                const SizedBox(
                                  height: 17,
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                  width: width * 0.35,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(17)),
                                        backgroundColor: Colors.white,
                                      ),
                                      child: const Text(
                                        'Search',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      )),
                                )
                              ],
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FindParts()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orange,
                            ),
                            child: Center(
                                child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 28,
                                ),
                                const Text(
                                  'Search for',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '4x4  parts',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                SizedBox(
                                  height: 17,
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                  width: width * 0.35,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(17)),
                                        backgroundColor: Colors.white,
                                      ),
                                      child: const Text(
                                        'Search',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      )),
                                )
                              ],
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FindParts()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff1A237E),
                            ),
                            child: Center(
                                child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 28,
                                ),
                                Text(
                                  'Search for',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '4x4  parts',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                SizedBox(
                                  height: 17,
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                  width: width * 0.35,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(17)),
                                        backgroundColor: Colors.white,
                                      ),
                                      child: const Text(
                                        'Search',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      )),
                                )
                              ],
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FindParts()));
                          },
                          child: Container(
                            // color: Colors.red,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orange,
                            ),
                            child: Center(
                                child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 28,
                                ),
                                Text(
                                  'Search for',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '4x4  parts',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                SizedBox(
                                  height: 17,
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                  width: width * 0.35,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(17)),
                                        backgroundColor: Colors.white,
                                      ),
                                      child: const Text(
                                        'Search',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      )),
                                )
                              ],
                            )),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        height: height * 0.3,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        initialPage: 0,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: const Duration(seconds: 3),
                        autoPlayInterval: Duration(seconds: 3),
                                              onPageChanged: (index,indexs) {
                          setState(() {
                            currentindex = index;
                          });
                        },
                      ),
                  ),),
                  SizedBox(
                    height: height * 0.02,
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: width * 0.35),
                    child: Row(
                      children: [
                        Container(
                          height: height * 0.01,
                          width: width * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: currentindex == 0
                                ? Colors.black
                                : Colors.grey[300],
                          ),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Container(
                          height: height * 0.01,
                          width: width * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: currentindex == 1
                                ? Colors.black
                                : Colors.grey[300],
                          ),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Container(
                          height: height * 0.01,
                          width: width * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: currentindex == 2
                                ? Colors.black
                                : Colors.grey[300],
                          ),
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Container(
                          height: height * 0.01,
                          width: width * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: currentindex == 3
                                ? Colors.black
                                : Colors.grey[300],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Featured Product Description
                  Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.075, right: width * 0.075),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Featured Products',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Featuredproduct()));
                                  },
                                  child: Text(
                                    'View all',
                                    style: const TextStyle(
                                        color: Colors.black26,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            )
                          ])),
                  SizedBox(
                    height: height * 0.03,
                  ),

                  // Product Feature
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.08, right: width * 0.08),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EngineParts()));
                          }),
                          child: Products('asset/Mask Group 2@2x.png',
                              "Engine Part", "AED 33", Colors.blue, Colors.red),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BodyParts()));
                          },
                          child: Products('asset/Mask Group 1@2x.png',
                              'Body Part', 'AED 33', Colors.blue, Colors.red),
                        )
                      ],
                    ),
                  ),
                  // Latest Product
                  Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.075, right: width * 0.075),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Latest Products',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                latestproduct()));
                                  },
                                  child: Text(
                                    'View all',
                                    style: const TextStyle(
                                        color: Colors.black26,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            )
                          ])),
                  // Latest product feature
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.08, right: width * 0.08),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HeadLight()));
                            },
                            child: Products(
                                'asset/Mask Group 4@2x.png',
                                'Head Light',
                                'AED 33',
                                Colors.blue,
                                Colors.red)),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BrakeSwitch()));
                          },
                          child: Products(
                              'asset/Mask Group 3@2x.png',
                              "Brake Switch",
                              'AED 33',
                              Colors.blue,
                              Colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
          drawer: Drawer(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  Image.asset('asset/logo1.png'),
                  SizedBox(
                    height: height * 0.07,
                  ),
// Register Business Option
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BusinessRegistration()));
                    },
                    child: draweritems(
                        Icons.dashboard_outlined, 'Register Business'),
                  ),

// Home Option

                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => mainForm()));
                      },
                      child: draweritems(Icons.home, 'Home')),
// Profile Option
                   InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Profile()));
                          },
                 child: draweritems(Icons.person, 'Profile'),
                   ),
// My Card Option
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentCard()));
                    },
// My Card Option
                    child: draweritems(Icons.card_giftcard, 'My Cart'),
                  ),

// My Order Option
                   InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyOrder()));
                    },
                 child:draweritems(Icons.note_outlined, 'My Order'),
                   ),
// Setting Option

                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Setting()));
                    },
                    child: draweritems(Icons.settings, 'Setting'),
                  ),

                  SizedBox(
                    height: height * 0.2,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                    child:
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person_add_alt_1_outlined),
                    ),
                    title: Text(
                      'Mark  William',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Markwilliam@gmail.com'),
                  ))
                ],
              ),
            ),
          )),
    );
  }

  Widget draweritems(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Widget SearchField() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 2,
      borderOnForeground: true,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: height * 0.066,
        width: width * 0.87,
        child: TextFormField(
          readOnly: true,
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SearchItem()));
          },
          autofocus: false,
          textAlign: TextAlign.start,
          cursorColor: Colors.black45,
          textDirection: TextDirection.ltr,

          /// textInputAction: TextInputAction.continueAction,
          keyboardType: TextInputType.name,
          keyboardAppearance: Brightness.dark,
          textAlignVertical: TextAlignVertical.bottom,

          decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            border: InputBorder.none,
            hintText: 'Search name or chassis number',
            hintStyle: TextStyle(color: Colors.black),
            disabledBorder: InputBorder.none,
            contentPadding: EdgeInsets.all(13),
            counterStyle:
                TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget Products(String partimage, String enginename, String model,
      Color color, Color modelcolors) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Image.asset(
          partimage,
          height: height * 0.25,
          width: width * 0.4,
        ), // Container(

        Text(
          enginename,
          style: TextStyle(color: color, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Text(
          model,
          style: TextStyle(color: modelcolors, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
