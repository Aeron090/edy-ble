import 'package:edyble_app/Home/discoveryhome.dart';
import 'package:edyble_app/Home/friendsprofiled.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'badges.dart';
import 'bottomnavbar.dart';
import 'controller.dart';

class drawerfriendsscreen extends StatefulWidget {
  const drawerfriendsscreen({super.key});

  @override
  State<drawerfriendsscreen> createState() => _drawerfriendsscreenState();
}

class _drawerfriendsscreenState extends State<drawerfriendsscreen> {
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
              final bottomcontroller = Get.put(BottomController());
              bottomcontroller.navBarChange(0);
              Get.to(() => navbar());
            },
            child: Image.asset(
              "assets/images/Icon ionic-ios-arrow-back.png",
              scale: 3.5,
            ),
          ),
          title: Text(
            "Friends",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(children: [
            Text(
              "Pending",
              style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Sora, Regular",
                  color: Color(0xffB6FF6F)),
            ),
            15.verticalSpace,
            Container(
              width: 388.w,
              height: 182.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Color(0xff646962).withOpacity(0.9),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Column(
                  children: [
                    pendingcontainerswidget(),
                    Container(
                      width: 356.w,
                      height: 1.h,
                      color: Color(0xffB6FF6F).withOpacity(0.20),
                    ),
                    pendingcontainerswidget(),
                  ],
                ),
              ),
            ),
            13.verticalSpace,
            Text(
              "Groups",
              style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Sora, Regular",
                  color: Color(0xffB6FF6F)),
            ),
            13.verticalSpace,
            Container(
              width: 388.w,
              height: 182.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Color(0xff646962).withOpacity(0.9),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/Ellipse 33.png",
                          scale: 5,
                        ),
                        12.horizontalSpace,
                        Text(
                          "Lorem Ipsum",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: "Segoe UI, Bold",
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Container(
                      width: 356.w,
                      height: 1.h,
                      color: Color(0xffB6FF6F).withOpacity(0.20),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/Ellipse 33.png",
                          scale: 5,
                        ),
                        12.horizontalSpace,
                        Text(
                          "Lorem Ipsum",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: "Segoe UI, Bold",
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            13.verticalSpace,
            Text(
              "Friends",
              style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: "Sora, Regular",
                  color: Color(0xffB6FF6F)),
            ),
            13.verticalSpace,
            Container(
              width: 388.w,
              height: 182.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Color(0xff646962).withOpacity(0.9),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Column(
                  children: [
                    Row(children: [
                      Image.asset(
                        "assets/images/Ellipse 33.png",
                        scale: 5,
                      ),
                      12.horizontalSpace,
                      Text(
                        "John Doe",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: "Segoe UI, Bold",
                            color: Colors.white),
                      ),
                      101.horizontalSpace,
                      GestureDetector(
                        onTap: () {
                          Get.to(() => friendsprofile());
                        },
                        child: Container(
                          width: 114.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(37.r),
                            color: Color(0xffB6FF6F),
                          ),
                          child: Center(
                            child: Text(
                              "View Profile",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: "Segoe UI, Semibold",
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    Container(
                      width: 356.w,
                      height: 1.h,
                      color: Color(0xffB6FF6F).withOpacity(0.20),
                    ),
                    Row(children: [
                      Image.asset(
                        "assets/images/Ellipse 33.png",
                        scale: 5,
                      ),
                      12.horizontalSpace,
                      Text(
                        "John Doe",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: "Segoe UI, Bold",
                            color: Colors.white),
                      ),
                      101.horizontalSpace,
                      GestureDetector(
                        onTap: () {
                          Get.to(() => friendsprofile());
                        },
                        child: Container(
                          width: 114.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(37.r),
                            color: Color(0xffB6FF6F),
                          ),
                          child: Center(
                            child: Text(
                              "View Profile",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: "Segoe UI, Semibold",
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class pendingcontainerswidget extends StatelessWidget {
  const pendingcontainerswidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              "assets/images/Ellipse 33.png",
              scale: 5,
            ),
            12.horizontalSpace,
            Text(
              "John Doe",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: "Segoe UI, Bold",
                  color: Colors.white),
            ),
            115.horizontalSpace,
            Container(
              width: 45.w,
              height: 45.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffB6FF6F),
              ),
              child: Image.asset(
                "assets/images/Icon awesome-check.png",
                scale: 4,
              ),
            ),
            10.horizontalSpace,
            Container(
              width: 45.w,
              height: 45.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffB6FF6F),
              ),
              child: Image.asset(
                "assets/images/Icon metro-cross(1).png",
                scale: 4,
              ),
            )
          ],
        ),
      ],
    );
  }
}
