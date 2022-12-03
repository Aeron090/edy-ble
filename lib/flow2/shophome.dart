import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:progress_indicator/progress_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../Home/myprofile.dart';

class shophome extends StatefulWidget {
  const shophome({super.key});

  @override
  State<shophome> createState() => _shophomeState();
}

class _shophomeState extends State<shophome> {
  @override
  final GlobalKey<ScaffoldState> _key = GlobalKey();
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
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                width: 45.w,
                height: 45.h,
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
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.asset(
                  "assets/images/Ellipse 41.png",
                ),
              ),
            )
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          toolbarHeight: 100.h,
          leading: Padding(
            padding: EdgeInsets.only(left: 15),
            child: Container(
              width: 57.w,
              height: 57.h,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xffB6FF6F),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffB6FF6F),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                  child: Image.asset(
                "assets/images/Icon feather-menu.png",
                scale: 4,
              )),
            ),
          ),
          title: Text(
            "Home",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: 388.w,
                height: 210.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: Color(0xff888a89),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "100%",
                          style: TextStyle(
                            fontFamily: "Sora, Regular",
                            fontSize: 10.sp,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "80%",
                          style: TextStyle(
                            fontFamily: "Sora, Regular",
                            fontSize: 10.sp,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "60%",
                          style: TextStyle(
                            fontFamily: "Sora, Regular",
                            fontSize: 10.sp,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "40%",
                          style: TextStyle(
                            fontFamily: "Sora, Regular",
                            fontSize: 10.sp,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "20%",
                          style: TextStyle(
                            fontFamily: "Sora, Regular",
                            fontSize: 10.sp,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "00%",
                          style: TextStyle(
                            fontFamily: "Sora, Regular",
                            fontSize: 10.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 5.w,
                          height: 1.h,
                          color: Colors.white,
                        ),
                        Container(
                          width: 5.w,
                          height: 1.h,
                          color: Colors.white,
                        ),
                        Container(
                          width: 5.w,
                          height: 1.h,
                          color: Colors.white,
                        ),
                        Container(
                          width: 5.w,
                          height: 1.h,
                          color: Colors.white,
                        ),
                        Container(
                          width: 5.w,
                          height: 1.h,
                          color: Colors.white,
                        ),
                        Container(
                          width: 5.w,
                          height: 1.h,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StepProgressIndicator(
                            fallbackLength: 140,
                            direction: Axis.vertical,
                            totalSteps: 200,
                            currentStep: 20,
                            size: 10,
                            padding: 0,
                            selectedColor: Colors.yellow,
                            unselectedColor: Colors.cyan,
                            roundedEdges: Radius.circular(10),
                            selectedGradientColor: LinearGradient(
                              end: Alignment.bottomRight,
                              colors: [Colors.white, Colors.white],
                            ),
                            unselectedGradientColor: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xffB6FF6F), Color(0xffB6FF6F)],
                            ),
                          ),
                          5.verticalSpace,
                          Text(
                            "SUN",
                            style: TextStyle(
                                fontSize: 11.sp,
                                color: Colors.white,
                                fontFamily: "Sora, Light"),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StepProgressIndicator(
                            fallbackLength: 140,
                            direction: Axis.vertical,
                            totalSteps: 200,
                            currentStep: 100,
                            size: 10,
                            padding: 0,
                            selectedColor: Colors.yellow,
                            unselectedColor: Colors.cyan,
                            roundedEdges: Radius.circular(10),
                            selectedGradientColor: LinearGradient(
                              end: Alignment.bottomRight,
                              colors: [Colors.white, Colors.white],
                            ),
                            unselectedGradientColor: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xffB6FF6F), Color(0xffB6FF6F)],
                            ),
                          ),
                          5.verticalSpace,
                          Text(
                            "MON",
                            style: TextStyle(
                                fontSize: 11.sp,
                                color: Colors.white,
                                fontFamily: "Sora, Light"),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StepProgressIndicator(
                            fallbackLength: 140,
                            direction: Axis.vertical,
                            totalSteps: 200,
                            currentStep: 90,
                            size: 10,
                            padding: 0,
                            selectedColor: Colors.yellow,
                            unselectedColor: Colors.cyan,
                            roundedEdges: Radius.circular(10),
                            selectedGradientColor: LinearGradient(
                              end: Alignment.bottomRight,
                              colors: [Colors.white, Colors.white],
                            ),
                            unselectedGradientColor: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xffB6FF6F), Color(0xffB6FF6F)],
                            ),
                          ),
                          5.verticalSpace,
                          Text(
                            "TUES",
                            style: TextStyle(
                                fontSize: 11.sp,
                                color: Colors.white,
                                fontFamily: "Sora, Light"),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StepProgressIndicator(
                            fallbackLength: 140,
                            direction: Axis.vertical,
                            totalSteps: 200,
                            currentStep: 80,
                            size: 10,
                            padding: 0,
                            selectedColor: Colors.yellow,
                            unselectedColor: Colors.cyan,
                            roundedEdges: Radius.circular(10),
                            selectedGradientColor: LinearGradient(
                              end: Alignment.bottomRight,
                              colors: [Colors.white, Colors.white],
                            ),
                            unselectedGradientColor: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xffB6FF6F), Color(0xffB6FF6F)],
                            ),
                          ),
                          5.verticalSpace,
                          Text(
                            "WED",
                            style: TextStyle(
                                fontSize: 11.sp,
                                color: Colors.white,
                                fontFamily: "Sora, Light"),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StepProgressIndicator(
                            fallbackLength: 140,
                            direction: Axis.vertical,
                            totalSteps: 200,
                            currentStep: 132,
                            size: 10,
                            padding: 0,
                            selectedColor: Colors.yellow,
                            unselectedColor: Colors.cyan,
                            roundedEdges: Radius.circular(10),
                            selectedGradientColor: LinearGradient(
                              end: Alignment.bottomRight,
                              colors: [Colors.white, Colors.white],
                            ),
                            unselectedGradientColor: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xffB6FF6F), Color(0xffB6FF6F)],
                            ),
                          ),
                          5.verticalSpace,
                          Text(
                            "THUR",
                            style: TextStyle(
                                fontSize: 11.sp,
                                color: Colors.white,
                                fontFamily: "Sora, Light"),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StepProgressIndicator(
                            fallbackLength: 140,
                            direction: Axis.vertical,
                            totalSteps: 200,
                            currentStep: 120,
                            size: 10,
                            padding: 0,
                            selectedColor: Colors.yellow,
                            unselectedColor: Colors.cyan,
                            roundedEdges: Radius.circular(10),
                            selectedGradientColor: LinearGradient(
                              end: Alignment.bottomRight,
                              colors: [Colors.white, Colors.white],
                            ),
                            unselectedGradientColor: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xffB6FF6F), Color(0xffB6FF6F)],
                            ),
                          ),
                          5.verticalSpace,
                          Text(
                            "FRI",
                            style: TextStyle(
                                fontSize: 11.sp,
                                color: Colors.white,
                                fontFamily: "Sora, Light"),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StepProgressIndicator(
                            fallbackLength: 140,
                            direction: Axis.vertical,
                            totalSteps: 200,
                            currentStep: 80,
                            size: 10,
                            padding: 0,
                            selectedColor: Colors.yellow,
                            unselectedColor: Colors.cyan,
                            roundedEdges: Radius.circular(10),
                            selectedGradientColor: LinearGradient(
                              end: Alignment.bottomRight,
                              colors: [Colors.white, Colors.white],
                            ),
                            unselectedGradientColor: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xffB6FF6F), Color(0xffB6FF6F)],
                            ),
                          ),
                          5.verticalSpace,
                          Text(
                            "SAT",
                            style: TextStyle(
                                fontSize: 11.sp,
                                color: Colors.white,
                                fontFamily: "Sora, Light"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              40.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  userhomewidget(
                    containerimage:
                        "assets/images/Icon awesome-map-marker-alt(1).png",
                    containertext: "Shop Check-Ins",
                  ),
                  userhomewidget(
                    containerimage: "assets/images/Icon awesome-box.png",
                    containertext: "View Shop",
                  ),
                ],
              ),
              10.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  userhomewidget(
                    containertext: "Reviews",
                    containerimage: "assets/images/Icon awesome-star.png",
                  ),
                  userhomewidget(
                    containertext: "Top Rated Products",
                    containerimage:
                        "assets/images/Icon open-vertical-align-top.png",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class userhomewidget extends StatelessWidget {
  var containertext;
  String containerimage;

  userhomewidget({
    required this.containertext,
    required this.containerimage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 188.w,
          height: 190.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: Color(0xff888a89),
          ),
          child: Center(
            child: Image.asset(
              containerimage,
              scale: 4,
            ),
          ),
        ),
        10.verticalSpace,
        Text(
          containertext,
          style: TextStyle(
              fontSize: 20.sp,
              fontFamily: "Segoe UI, Bold",
              color: Colors.white),
        ),
      ],
    );
  }
}
