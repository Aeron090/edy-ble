import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rate/rate.dart';

import 'Home/controller.dart';

class commentsscreen extends StatefulWidget {
  const commentsscreen({super.key});

  @override
  State<commentsscreen> createState() => _commentsscreenState();
}

class _commentsscreenState extends State<commentsscreen> {
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/backgroundedyble.jpg"),
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
            ),
          ),
          title: Text(
            "Comments",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              15.verticalSpace,
              Container(
                width: 388.w,
                // height: 100.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Color(0xff7f8a84),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10, top: 5),
                          child: Text(
                            "01/02/2022",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white,
                                fontFamily: "Poppins, Regular"),
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        18.horizontalSpace,
                        Container(
                          width: 57.w,
                          height: 57.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1.w,
                              color: Color(0xffB6FF6F),
                            ),
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffB6FF6F),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.asset(
                            "assets/images/Ellipse 41.png",
                          ),
                        ),
                        18.horizontalSpace,
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "John Doe",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: "Poppins, SemiBold",
                                        color: Colors.white),
                                  ),
                                  8.horizontalSpace,
                                  Rate(
                                    iconSize: 15,
                                    color: Colors.white,
                                    allowHalf: true,
                                    allowClear: true,
                                    initialValue: 5,
                                    readOnly: true,
                                    onChange: (value) => print(value),
                                  ),
                                ],
                              ),
                              Container(
                                width: 204.w,
                                child: Text(
                                  "Lorem ipsum dolor sit amet consectetur adipiscing elit duis donec pretium potenti",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontFamily: "Poppins, Regular"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              40.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    10.verticalSpace,
                    Row(
                      children: [
                        Container(
                          width: 56.w,
                          height: 56.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1.w,
                              color: Color(0xffB6FF6F),
                            ),
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffB6FF6F),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.asset(
                            "assets/images/Ellipse 41.png",
                          ),
                        ),
                        10.horizontalSpace,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Sarah Smith",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                      fontFamily: "Segoe UI, Bold"),
                                ),
                                5.horizontalSpace,
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Colors.white,
                                      fontFamily: "Segoe UI, Bold"),
                                ),
                                5.horizontalSpace,
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 10,
                                ),
                              ],
                            ),
                            Container(
                              width: 267.w,
                              child: Text(
                                "Lorem ipsum dolor sit amet consectetur, cursus adipiscing elit convallis.",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontFamily: "Sora, ExtraLight",
                                    color: Colors.white.withOpacity(0.5)),
                              ),
                            ),
                            2.verticalSpace,
                            Text(
                              "5 day ago",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontFamily: "Sora, ExtraLight",
                                  color: Colors.white.withOpacity(0.5)),
                            )
                          ],
                        ),
                      ],
                    ),
                    20.verticalSpace,
                    Container(
                      width: 378.w,
                      height: 1,
                      color: Colors.white.withOpacity(0.25),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    10.verticalSpace,
                    Row(
                      children: [
                        Container(
                          width: 56.w,
                          height: 56.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1.w,
                              color: Color(0xffB6FF6F),
                            ),
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffB6FF6F),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Image.asset(
                            "assets/images/Ellipse 41.png",
                          ),
                        ),
                        10.horizontalSpace,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Sarah Smith",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                      fontFamily: "Segoe UI, Bold"),
                                ),
                                5.horizontalSpace,
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Colors.white,
                                      fontFamily: "Segoe UI, Bold"),
                                ),
                                5.horizontalSpace,
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 10,
                                ),
                              ],
                            ),
                            Container(
                              width: 267.w,
                              child: Text(
                                "Lorem ipsum dolor sit amet consectetur, cursus adipiscing elit convallis.",
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontFamily: "Sora, ExtraLight",
                                    color: Colors.white.withOpacity(0.5)),
                              ),
                            ),
                            2.verticalSpace,
                            Text(
                              "5 day ago",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontFamily: "Sora, ExtraLight",
                                  color: Colors.white.withOpacity(0.5)),
                            )
                          ],
                        ),
                      ],
                    ),
                    20.verticalSpace,
                    Container(
                      width: 378.w,
                      height: 1,
                      color: Colors.white.withOpacity(0.25),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
