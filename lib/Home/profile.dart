import 'package:edyble_app/Home/Check-ins.dart';
import 'package:edyble_app/Home/Createprofile.dart';
import 'package:edyble_app/Home/Edibles.dart';
import 'package:edyble_app/Home/badges.dart';
import 'package:edyble_app/Home/bottomnavbar.dart';
import 'package:edyble_app/Home/discoveryhome.dart';
import 'package:edyble_app/Home/myprofile.dart';
import 'package:edyble_app/Home/reviews.dart';
import 'package:edyble_app/Home/wishlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller.dart';

class profilescreen extends StatefulWidget {
  const profilescreen({super.key});

  @override
  State<profilescreen> createState() => _profilescreenState();
}

class _profilescreenState extends State<profilescreen> {
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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => myprofilescreen());
                },
                child: Icon(
                  Icons.edit,
                  size: 25,
                  color: Color(0xff0B9771),
                ),
              ),
            )
          ],
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
            "My Profile",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      firstrowwidget(
                          Text1: "Reviews",
                          widgetimage:
                              "assets/images/Icon material-rate-review.png",
                          OnTap: () {
                            Get.to(() => reviewsscreen());
                          }),
                      firstrowwidget(
                          Text1: "Badges",
                          widgetimage: "assets/images/Group 684.png",
                          OnTap: () {
                            Get.to(() => badgesscreen());
                          }),
                      firstrowwidget(
                          Text1: "Wishlist",
                          widgetimage: "assets/images/Icon awesome-heart.png",
                          OnTap: () {
                            Get.to(() => wishlist());
                          }),
                    ],
                  ),
                  30.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      secondlinewidget(
                        containerimage:
                            "assets/images/Icon material-location-on.png",
                        numtext: "5",
                        text2: "Check-Ins",
                        ontap: () {
                          Get.to(() => checksin());
                        },
                      ),
                      Container(
                        width: 150.w,
                        height: 150.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          "assets/images/Ellipse 2.png",
                          fit: BoxFit.cover,
                          scale: 3,
                        ),
                      ),
                      secondlinewidget(
                        containerimage: "assets/images/Path 31.png",
                        numtext: "5",
                        text2: "Edibles",
                        ontap: () {
                          Get.to(() => ediblesscreen());
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "John Smith",
                        style: TextStyle(
                            fontSize: 23,
                            fontFamily: "Sora, ExtraBold",
                            color: Colors.white),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Joined",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: "Sora, ExtraLight",
                              color: Colors.white.withOpacity(0.7)),
                          children: <TextSpan>[
                            TextSpan(
                                text: " April 12, 2022",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white.withOpacity(0.7),
                                    fontFamily: "Sora, ExtraLight"))
                          ],
                        ),
                      ),
                      35.verticalSpace,
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      fontFamily: "Sora, ExtraBold",
                                      fontSize: 26.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Un-Rated",
                                    style: TextStyle(
                                      fontFamily: "Sora, Regular",
                                      fontSize: 17.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 1.w,
                                height: 130.h,
                                color: Color(0xff0B9771).withOpacity(0.5),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "3.5",
                                    style: TextStyle(
                                      fontFamily: "Sora, ExtraBold",
                                      fontSize: 26.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Avg.Rating",
                                    style: TextStyle(
                                      fontFamily: "Sora, Regular",
                                      fontSize: 17.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          31.verticalSpace,
                          Text(
                            "Activity Feed",
                            style: TextStyle(
                                fontFamily: "Poppins, Bold",
                                fontSize: 24.sp,
                                color: Color(0xffB6FF6F)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Activityfeedwidget(),
                  Container(
                    width: 389.w,
                    height: 1,
                    color: Color(0xff0B9771),
                  ),
                  Activityfeedwidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Activityfeedwidget extends StatelessWidget {
  const Activityfeedwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/Ellipse 8.png",
          scale: 4,
          fit: BoxFit.contain,
        ),
        Text(
          "You checked in @ NECTAR",
          style: TextStyle(
              fontFamily: "Segoe UI, Bold",
              fontSize: 20.sp,
              color: Colors.white),
        )
      ],
    );
  }
}

class secondlinewidget extends StatelessWidget {
  String text2;
  String numtext;
  String containerimage;
  var ontap;

  secondlinewidget({
    required this.text2,
    required this.numtext,
    required this.containerimage,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: ontap,
          child: Container(
            width: 66.w,
            height: 65.h,
            decoration: BoxDecoration(
              color: Color(0xff646962),
              shape: BoxShape.circle,
              border: Border.all(
                width: 1.w,
                color: Color(0xffB6FF6F),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffB6FF6F),
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Image.asset(
                containerimage,
                scale: 4.5,
              ),
            ),
          ),
        ),
        10.verticalSpace,
        Text(
          text2,
          style: TextStyle(
              fontSize: 16.sp,
              fontFamily: "Sora, ExtraBold",
              color: Colors.white),
        ),
        6.verticalSpace,
        Text(
          numtext,
          style: TextStyle(
              color: Color(0xffB6FF6F),
              fontSize: 18.sp,
              fontFamily: "Sora, Light"),
        ),
      ],
    );
  }
}

class firstrowwidget extends StatelessWidget {
  String Text1;
  String widgetimage;
  var OnTap;
  firstrowwidget({
    required this.Text1,
    required this.widgetimage,
    required this.OnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: OnTap,
          child: Container(
            width: 66.w,
            height: 65.h,
            decoration: BoxDecoration(
              color: Color(0xff646962),
              shape: BoxShape.circle,
              border: Border.all(
                width: 1.w,
                color: Color(0xffB6FF6F),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffB6FF6F),
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Image.asset(
                widgetimage,
                scale: 4.5,
              ),
            ),
          ),
        ),
        29.verticalSpace,
        Text(
          Text1,
          style: TextStyle(
              fontSize: 20.sp, fontFamily: "Sora, Bold", color: Colors.white),
        )
      ],
    );
  }
}
