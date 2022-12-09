import 'dart:ui';

import 'package:edyble_app/AuthScreens/prelogin.dart';
import 'package:edyble_app/Home/Createprofile.dart';
import 'package:edyble_app/flow2/createshopprofile.dart';
import 'package:edyble_app/global/Global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class confirmationaboutuser extends StatefulWidget {
  const confirmationaboutuser({super.key});

  @override
  State<confirmationaboutuser> createState() => _confirmationaboutuserState();
}

class _confirmationaboutuserState extends State<confirmationaboutuser> {
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/backgroundedyble.jpg",
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Image.asset(
              "assets/images/Icon ionic-ios-arrow-back.png",
              scale: 4.5,
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: 388.w,
              height: 186.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.r),
                color: Color(0xffB6FF6F),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000),
                    spreadRadius: 0,
                    blurRadius: 42,
                    offset: Offset(0, 23), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Container(
                  width: 265.w,
                  child: Text(
                    "Do you own or manage a shop?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 32.sp,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isUser = "yes";
                      });

                      isUser == "yes"
                          ? Get.to(() => createshopprofile())
                          : Get.to(() => createprofile());
                    },
                    child: Container(
                      width: 159.w,
                      height: 62.h,
                      decoration: BoxDecoration(
                        color: Color(0xff5f8771),
                        border: Border.all(
                          width: 2,
                          color: Color(0xffB6FF6F),
                        ),
                        borderRadius: BorderRadius.circular(31.r),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffB6FF6F),
                            spreadRadius: 0,
                            blurRadius: 7,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Yes",
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.white,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                    ),
                  ),
                  10.horizontalSpace,
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isUser = "no";
                      });

                      isUser == "no" ? Get.to(() => preloginscreen()) : null;
                    },
                    child: Container(
                      width: 159.w,
                      height: 62.h,
                      decoration: BoxDecoration(
                        color: Color(0xff5f8771),
                        border: Border.all(
                          width: 2,
                          color: Color(0xffB6FF6F),
                        ),
                        borderRadius: BorderRadius.circular(31.r),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffB6FF6F),
                            spreadRadius: 0,
                            blurRadius: 7,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "No",
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.white,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
