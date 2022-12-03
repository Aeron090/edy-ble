import 'dart:ui';

import 'package:edyble_app/AuthScreens/prelogin.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ConfirmAge extends StatefulWidget {
  const ConfirmAge({super.key});

  @override
  State<ConfirmAge> createState() => _ConfirmAgeState();
}

class _ConfirmAgeState extends State<ConfirmAge> {
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/Group 682.png",
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                // 59.verticalSpace,
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/images/PNG-01.png",
                    scale: 2,
                  ),
                ),
                200.verticalSpace,

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi,",
                      style: TextStyle(
                        fontSize: 32.sp,
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      "Are you over 21 years old?",
                      style: TextStyle(
                          fontSize: 41.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                15.verticalSpace,
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => preloginscreen());
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
                                offset:
                                    Offset(0, 1), // changes position of shadow
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
                    ),
                    10.horizontalSpace,
                    Expanded(
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
                              offset:
                                  Offset(0, 1), // changes position of shadow
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
              ]),
            )),
      ),
    );
  }
}
