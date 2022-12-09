import 'package:edyble_app/flow2/myaccount.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class subscriptionscreendrawer extends StatefulWidget {
  const subscriptionscreendrawer({super.key});

  @override
  State<subscriptionscreendrawer> createState() => _subscriptionscreendrawer();
}

class _subscriptionscreendrawer extends State<subscriptionscreendrawer> {
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
            ),
          ),
          title: Text(
            "Subscribe",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                20.verticalSpace,
                Stack(clipBehavior: Clip.none, children: [
                  Container(
                    width: 388.w,
                    height: 386.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Color(0xff6d726b),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: [
                              5.verticalSpace,
                              Text(
                                "PREMUIM",
                                style: TextStyle(
                                    fontFamily: "Sora, Regular",
                                    fontSize: 16.sp,
                                    color: Colors.white),
                              ),
                              45.horizontalSpace,
                            ],
                          ),
                        ),
                        10.verticalSpace,
                        Container(
                          width: 80.w,
                          height: 1.h,
                          color: Colors.white.withOpacity(0.2),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 15, left: 20),
                              child: Container(
                                // width: .w,
                                height: 50.h,
                                child: Text(
                                  "\$",
                                  style: TextStyle(
                                      fontSize: 33,
                                      fontFamily: "Sora, Regular",
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              width: 170.w,
                              height: 101.h,
                              child: Text(
                                "199",
                                style: TextStyle(
                                    fontSize: 80.sp,
                                    color: Colors.white,
                                    fontFamily: "Sora, Bold"),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              fontFamily: "Sora, Thin"),
                        ),
                        15.verticalSpace,
                        Text(
                          "Lorem ipsum dolor sit amet",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              fontFamily: "Sora, Thin"),
                        ),
                        10.verticalSpace,
                        Text(
                          "Lorem ipsum dolor sit amet",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              fontFamily: "Sora, Thin"),
                        ),
                        10.verticalSpace,
                        Text(
                          "Lorem ipsum dolor sit amet",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              fontFamily: "Sora, Thin"),
                        ),
                        15.verticalSpace,
                        Text(
                          "Exp Date",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              fontFamily: "Sora, SemiBold"),
                        ),
                        10.verticalSpace,
                        Text(
                          "April 12, 2022",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white.withOpacity(0.5),
                              fontFamily: "Sora, Thin"),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -40,
                    left: 12,
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => myaccount());
                      },
                      child: Container(
                        width: 362.w,
                        height: 62.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(31.r),
                          color: Color(0xffB6FF6F),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff00FFA3),
                              spreadRadius: 0,
                              blurRadius: 6,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => myaccount());
                            },
                            child: Text(
                              "Start Free",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                  fontFamily: "Sora, ExtraBold"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
                50.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
