import 'package:edyble_app/Home/bottomnavbar.dart';
import 'package:edyble_app/Home/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rate/rate.dart';

import 'controller.dart';
import 'discoveryhome.dart';

class reviewsscreen extends StatefulWidget {
  const reviewsscreen({super.key});

  @override
  State<reviewsscreen> createState() => _reviewsscreenState();
}

class _reviewsscreenState extends State<reviewsscreen> {
  bool alllbool = true;
  bool creditbool = true;
  bool debitbool = false;
  var _selectedButton = 1;
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
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          toolbarHeight: 100.h,
          leading: GestureDetector(
            onTap: () {
              final bottomcontroller = Get.put(BottomController());
              bottomcontroller.navBarChange(3);
              Get.to(() => navbar());
            },
            child: Image.asset(
              "assets/images/Icon ionic-ios-arrow-back.png",
              scale: 3.5,
            ),
          ),
          title: Text(
            "My Reviews",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Container(
              height: Get.height,
              width: Get.width,
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage("assets/images/Background.png"),
              //     fit: BoxFit.cover,
              //   ),
              // ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  creditbool = true;
                                });
                              },
                              child: Column(
                                children: [
                                  Text(
                                    'Shops',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Sora, Regular",
                                      color: creditbool == true
                                          ? Color(0xffB6FF6F)
                                          : Color(0xffB6FF6F).withOpacity(0.20),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: Get.width * 0.45,
                                    color: creditbool
                                        ? Color(0xffB6FF6F)
                                        : Color(0xffB6FF6F).withOpacity(0.20),
                                    height: creditbool == true ? 3 : 1,
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: () {
                                setState(() {
                                  creditbool = false;
                                });
                              },
                              child: Column(
                                children: [
                                  Text(
                                    'Edibles',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Segoe UI, Semibold",
                                      color: creditbool == false
                                          ? Color(0xffB6FF6F)
                                          : Color(0xffB6FF6F).withOpacity(0.20),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: Get.width * 0.45,
                                    color: creditbool == false
                                        ? Color(0xffB6FF6F)
                                        : Color(0xffB6FF6F).withOpacity(0.20),
                                    height: creditbool == false ? 3 : 1,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        creditbool == true
                            ? Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7),
                                child: Container(
                                  width: double.infinity,
                                  height: 0.8.sh,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        26.verticalSpace,
                                        shopsscreenwidget(),
                                        15.verticalSpace,
                                        shopsscreenwidget(),
                                        15.verticalSpace,
                                        shopsscreenwidget(),
                                        15.verticalSpace,
                                        shopsscreenwidget(),
                                        15.verticalSpace,
                                        shopsscreenwidget(),
                                        15.verticalSpace,
                                        shopsscreenwidget(),
                                        15.verticalSpace,
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            : Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7),
                                child: Container(
                                  width: double.infinity,
                                  height: 0.8.sh,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        25.verticalSpace,
                                        ediblewidget(),
                                        19.verticalSpace,
                                        ediblewidget(),
                                        19.verticalSpace,
                                        ediblewidget(),
                                        19.verticalSpace,
                                        ediblewidget(),
                                        19.verticalSpace,
                                        ediblewidget(),
                                        19.verticalSpace,
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ediblewidget extends StatelessWidget {
  const ediblewidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 388.w,
      // height: 100.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Color(0xff848886),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10, top: 5),
                child: Text(
                  "Review Now",
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.white,
                      fontFamily: "Poppins, Regular"),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/images/Ellipse 33.png",
                    scale: 4,
                  ),
                  Text(
                    "Canadagummies",
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontFamily: "Poppins, SemiBold",
                        color: Colors.white),
                  ),
                  10.verticalSpace
                ],
              ),
              Container(
                width: 1.w,
                height: 100.h,
                color: Colors.black.withOpacity(0.1),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Rate(
                      iconSize: 18,
                      color: Colors.white,
                      allowHalf: true,
                      allowClear: true,
                      initialValue: 5,
                      readOnly: true,
                      onChange: (value) => print(value),
                    ),
                    10.verticalSpace,
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
    );
  }
}

class shopsscreenwidget extends StatelessWidget {
  const shopsscreenwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.r),
        color: Color(0xff848886).withOpacity(0.75),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: 80.w,
                  height: 90.h,
                  // color: Colors.amber,
                  child: Image.asset(
                    "assets/images/Ellipse 2.png",
                    scale: 7,
                  ),
                ),
              ),
              // 10.horizontalSpace,
              // VerticalDivider(
              //   color: Colors.red,
              //   thickness: 100,
              //   endIndent: 50,
              //   indent: 50,
              //   width: 1.w,
              // )
              Container(
                width: 0.75.w,
                height: 96.h,
                color: Colors.grey,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    dense: true,
                    title: Rate(
                      iconSize: 18,
                      color: Colors.white,
                      allowHalf: true,
                      allowClear: true,
                      initialValue: 5,
                      readOnly: true,
                      onChange: (value) => print(value),
                    ),
                    subtitle: Text(
                      "Lorem ipsum dolor sit amet consectetur adipiscing elit duis donec pretium potenti",
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontFamily: "Poppins, Regular"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 1.sw,
            height: 1.h,
            color: Colors.grey,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Total Visits",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontFamily: "Poppins, SemiBold"),
                      ),
                      Text(
                        "02",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                            fontFamily: "Poppins, SemiBold"),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 0.75.w,
                height: 60.h,
                color: Colors.grey,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Total Visits",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontFamily: "Poppins, SemiBold"),
                      ),
                      Text(
                        "02",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                            fontFamily: "Poppins, SemiBold"),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 0.75.w,
                height: 60.h,
                color: Colors.grey,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Total Visits",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontFamily: "Poppins, SemiBold"),
                      ),
                      Text(
                        "02",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                            fontFamily: "Poppins, SemiBold"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
