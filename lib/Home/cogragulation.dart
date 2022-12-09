import 'package:edyble_app/Home/badges.dart';
import 'package:edyble_app/Home/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class congragulationscreen extends StatefulWidget {
  const congragulationscreen({super.key});

  @override
  State<congragulationscreen> createState() => _congragulationscreenState();
}

class _congragulationscreenState extends State<congragulationscreen> {
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/backgroundedyble.jpg"),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          toolbarHeight: 100.h,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Image.asset(
              "assets/images/Icon ionic-ios-arrow-back.png",
              scale: 3.5,
              color: Color(0xff0B9771),
            ),
          ),
          // title: Text(
          //   "My Wishlist",
          //   style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          // ),
          // centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              250.verticalSpace,
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 388.w,
                    height: 204.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(59.r),
                      color: Color(0xffB6FF6F),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Congratulations",
                          style: TextStyle(
                              fontFamily: "Sora, ExtraBold",
                              fontSize: 36.sp,
                              color: Colors.black),
                        ),
                        Text(
                          "You have earned a new badge!",
                          style: TextStyle(
                              fontFamily: "Sora, SemiBold",
                              fontSize: 18.sp,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -80,
                    left: 110,
                    child: Container(
                      width: 164.w,
                      height: 133.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(59.r),
                          color: Colors.black),
                      child: Image.asset(
                        "assets/images/9055284_bxs_badge_dollar_icon.png",
                        scale: 5,
                      ),
                    ),
                  )
                ],
              ),
              250.verticalSpace,
              GestureDetector(
                onTap: () {
                  Get.to(() => badgesscreen());
                },
                child: Container(
                  width: 362.w,
                  height: 62.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Color(0xffB6FF6F),
                    ),
                    borderRadius: BorderRadius.circular(31.r),
                    color: Color(0xffB6FF6F),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff00FFA3),
                        spreadRadius: 0,
                        blurRadius: 6,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Collect",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: "Sora, ExtraBold",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
