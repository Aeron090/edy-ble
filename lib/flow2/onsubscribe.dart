import 'package:edyble_app/Home/bottomnavbar.dart';
import 'package:edyble_app/flow2/shophome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Home/controller.dart';

class onsubscribescreen extends StatefulWidget {
  const onsubscribescreen({super.key});

  @override
  State<onsubscribescreen> createState() => _onsubscribescreenState();
}

class _onsubscribescreenState extends State<onsubscribescreen> {
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/Image 3.png",
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.transparent,
        //   automaticallyImplyLeading: false,
        //   toolbarHeight: 100.h,
        //   leading: GestureDetector(
        //     onTap: () {
        //       Get.back();
        //     },
        //     child: Image.asset(
        //       "assets/images/Image 3.png",
        //       scale: 3.5,
        //     ),
        //   ),
        //   title: Text(
        //     "My Wishlist",
        //     style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
        //   ),
        //   centerTitle: true,
        // ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              290.verticalSpace,
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 179.w,
                    height: 76.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: Color(0xffa3a8a5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Is this business yours?",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xffB6FF6F),
                              fontFamily: "Sora, Thin"),
                        ),
                        Text(
                          "Claim It Now",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white,
                              fontFamily: "Sora, ExtraBold"),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: -10,
                      left: 150,
                      child: Container(
                        width: 31.w,
                        height: 31.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.close_rounded,
                          size: 20,
                          color: Colors.black,
                        ),
                      ))
                ],
              ),
              10.verticalSpace,
              Image.asset(
                "assets/images/Icon awesome-map-marker-alt.png",
                scale: 5,
              ),
              400.verticalSpace,
              GestureDetector(
                onTap: () {
                  Get.to(() => navbar());
                },
                child: Container(
                  width: 388.w,
                  height: 66.h,
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
                      "Continue",
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
