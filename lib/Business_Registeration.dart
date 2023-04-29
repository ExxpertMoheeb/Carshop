// ignore_for_file: unnecessary_string_interpolations, file_names, non_constant_identifier_names

import 'package:auto_app/CarouselForm.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BusinessRegistration extends StatefulWidget {
  const BusinessRegistration({super.key});

  @override
  State<BusinessRegistration> createState() => _BusinessRegistrationState();
}

class _BusinessRegistrationState extends State<BusinessRegistration> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      drawerEnableOpenDragGesture: false,
      resizeToAvoidBottomInset: false,
      endDrawerEnableOpenDragGesture: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const mainForm()));
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: width * 0.07, right: width * 0.03, top: height * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width * 0.05),
                  child: const Text(
                    'Register Business',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Userfiels('Business Name'),
                SizedBox(
                  height: height * 0.01,
                ),
                Userfiels('E-Mail'),
                SizedBox(
                  height: height * 0.01,
                ),
                Userfiels('Location'),
                SizedBox(
                  height: height * 0.01,
                ),
                Numberfiels('Phone Number'),
                SizedBox(
                  height: height * 0.01,
                ),
                Numberfiels('License Number'),
                SizedBox(
                  height: height * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                  child: DottedBorder(
                    radius: const Radius.circular(20),
                    borderType: BorderType.RRect,
                    strokeWidth: 1,
                    dashPattern: const [0, 0, 1, 5],
                    padding: const EdgeInsets.all(6),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      child: SizedBox(
                        height: height * 0.04,
                        width: width,
                        child: Padding(
                          padding: EdgeInsets.only(left: width * 0.16),
                          child: Center(
                              child: Row(
                            children: [
                              Icon(
                                Icons.cloud_upload_outlined,
                                color: Colors.yellow.shade700,
                              ),
                              SizedBox(
                                width: width * 0.04,
                              ),
                              const Text(
                                'Upload license',
                                style:
                                    TextStyle(color: Colors.black38, fontSize: 17),
                              ),
                            ],
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                SizedBox(
                  width: width,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 80, vertical: 8),
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
              
               
               SizedBox(height: height*0.01,),
               const Center(
                  child:Text(
                    'Terms and Conditions',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                     // fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  Widget Userfiels(String name) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 2,
      borderOnForeground: true,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: height * 0.066,
        width: width,
        child: TextFormField(
          autofocus: false,
          textAlign: TextAlign.start,
          cursorColor: Colors.black45,
          textDirection: TextDirection.ltr,

          /// textInputAction: TextInputAction.continueAction,
          keyboardType: TextInputType.name,
          keyboardAppearance: Brightness.dark,
          textAlignVertical: TextAlignVertical.bottom,

          decoration: InputDecoration(
            hintText: name,
            border: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding: const EdgeInsets.all(13),
            counterStyle:
              const  TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget Numberfiels(String titlename) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 2,
      borderOnForeground: true,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: height * 0.066,
        width: width,
        child: TextFormField(
          autofocus: false,
          textAlign: TextAlign.start,
          cursorColor: Colors.black45,
          textDirection: TextDirection.ltr,

          /// textInputAction: TextInputAction.continueAction,
          keyboardType: TextInputType.number,
          keyboardAppearance: Brightness.dark,
          textAlignVertical: TextAlignVertical.bottom,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: titlename,
            contentPadding:const EdgeInsets.all(13),
            counterStyle:
               const TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
