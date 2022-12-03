import 'package:edyble_app/Home/bottomnavbar.dart';
import 'package:edyble_app/Home/cogragulation.dart';
import 'package:edyble_app/Home/profile.dart';
import 'package:edyble_app/Home/rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller.dart';

class GreensideRecreational extends StatefulWidget {
  const GreensideRecreational({super.key});

  @override
  State<GreensideRecreational> createState() => _GreensideRecreationalState();
}

class _GreensideRecreationalState extends State<GreensideRecreational> {
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
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: Column(
          children: [
            SizedBox(
              height: Get.height * 0.85,
            ),
            Container(
              width: 362.w,
              height: 62.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(31.r),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff00FFA3),
                    spreadRadius: 0,
                    blurRadius: 6,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: FloatingActionButton.extended(
                onPressed: () {
                  Get.to(() => ratingscreen());
                },
                label: Text(
                  'Submit a Review',
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontFamily: "Sora, ExtraBold"),
                ),
                // icon: Icon(Icons.thumb_up),
                backgroundColor: Color(0xffB6FF6F),
              ),
            ),
            // SizedBox(
            //   height: 10,
            // )
          ],
        ),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          toolbarHeight: 100.h,
          leading: GestureDetector(
            onTap: () {
              final bottomcontroller = Get.put(BottomController());
              bottomcontroller.navBarChange(1);
              Get.to(() => navbar());
            },
            child: Image.asset(
              "assets/images/Icon ionic-ios-arrow-back.png",
              scale: 3.5,
            ),
          ),
          title: Text(
            "Greenside Recreational",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 95.w,
                  height: 95.h,
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
                        blurRadius: 13,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/images/Ellipse 41.png",
                  ),
                ),
                13.verticalSpace,
                Text(
                  "Greenside Recreational",
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Color(0xffB6FF6F),
                      fontFamily: "Sora, ExtraBold"),
                ),
                Text(
                  "8871 NE John Rd, Tacoma WA.",
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xffFFFFFF).withOpacity(0.50),
                      fontFamily: "Sora, Thin"),
                ),
                15.verticalSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 85),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => congragulationscreen());
                        },
                        child: Container(
                          width: 119.w,
                          height: 46.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(31.r),
                            color: Color(0xffB6FF6F),
                            border: Border.all(
                              width: 3.w,
                              color: Color(0xffB6FF6F),
                            ),
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
                              "Check-In",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontFamily: "Sora, Regular"),
                            ),
                          ),
                        ),
                      ),
                      10.horizontalSpace,
                      Container(
                        width: 119.w,
                        height: 46.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(31.r),
                          color: Color(0xffB6FF6F),
                          border: Border.all(
                            width: 3.w,
                            color: Color(0xffB6FF6F),
                          ),
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
                            "Follow",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontFamily: "Sora, Regular"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                40.verticalSpace,
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
                                  'Wellness',
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
                                  'Wellness',
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
                              padding: EdgeInsets.symmetric(horizontal: 7),
                              child: Container(
                                width: double.infinity,
                                height: 0.7.sh,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount: 10,
                                        itemBuilder: (context, i) {
                                          return wellnesswidget();
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Padding(
                              padding: EdgeInsets.symmetric(horizontal: 7),
                              child: Container(
                                width: double.infinity,
                                height: 0.7.sh,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [],
                                    )
                                  ],
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
    );
  }
}

class wellnesswidget extends StatelessWidget {
  const wellnesswidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        15.verticalSpace,
        Row(
          children: [
            20.horizontalSpace,
            Container(
              width: 85.w,
              height: 85.h,
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
                    blurRadius: 13,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Image.asset(
                "assets/images/Ellipse 41.png",
              ),
            ),
            12.horizontalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Canadagummies",
                      style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.white,
                          fontFamily: "Sora, Bold"),
                    ),
                    11.horizontalSpace,
                    Text(
                      "4.5",
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.white,
                          fontFamily: "Sora, SemiBold"),
                    ),
                    5.horizontalSpace,
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 13,
                    ),
                  ],
                ),
                3.verticalSpace,
                Container(
                  width: 278.w,
                  height: 35.h,
                  child: Text(
                    "Lorem ipsum dolor sit amet consectetur, cursus adipiscing elit convallis.",
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.white,
                        fontFamily: "Sora, ExtraLight"),
                  ),
                ),
                3.verticalSpace,
                Text(
                  "Write a Review",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 12.sp,
                    color: Colors.white,
                    fontFamily: "Sora, ExtraLight",
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}

class check extends StatelessWidget {
  const check({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 119.w,
      height: 46.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(31.r),
        color: Color(0xffB6FF6F),
        border: Border.all(
          width: 3.w,
          color: Color(0xffB6FF6F),
        ),
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
          "Follow",
          style: TextStyle(
              color: Colors.black,
              fontSize: 15.sp,
              fontFamily: "Sora, Regular"),
        ),
      ),
    );
  }
}
