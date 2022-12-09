import 'package:edyble_app/Home/reviews.dart';
import 'package:edyble_app/flow2/TopRatedProducts.dart';
import 'package:edyble_app/flow2/myproduct.dart';
import 'package:edyble_app/flow2/shopcheckin.dart';
import 'package:edyble_app/flow2/shopreview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:progress_indicator/progress_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

import '../Home/drawer.dart';
import '../Home/myprofile.dart';

class shophome extends StatefulWidget {
  const shophome({super.key});
  List<Color> get availableColors => const <Color>[
        Colors.purpleAccent,
        Colors.yellow,
        Colors.lightBlue,
        Colors.orange,
        Colors.pink,
        Colors.redAccent,
      ];

  @override
  State<shophome> createState() => _shophomeState();
}

class _shophomeState extends State<shophome> {
  int touchedIndex = -1;
  double _currentValue = 0;
  setEndPressed(double value) {
    setState(() {
      _currentValue = value;
    });
  }

  bool isPlaying = false;
  @override
  final GlobalKey<ScaffoldState> _key = GlobalKey();
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
        key: _key,
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
            child: GestureDetector(
              onTap: () {
                _key.currentState!.openDrawer();
              },
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
          ),
          title: Text(
            "Home",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        drawer: drawerscreen(),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
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
                            Container(
                              width: 10.w,
                              height: 160.h,
                              child: FAProgressBar(
                                currentValue: 60,
                                // displayText: '50%',
                                animatedDuration: Duration(milliseconds: 600),
                                direction: Axis.vertical,
                                verticalDirection: VerticalDirection.up,
                                backgroundColor: Colors.white,
                                progressColor: Color(0xffB6FF6F),
                              ),
                              // child: FAProgressBar(
                              //   currentValue: _currentValue,
                              //   size: 500,
                              //   maxValue: 100,
                              //   changeColorValue: 0,
                              //   changeProgressColor: Colors.red,
                              //   backgroundColor: Colors.white,
                              //   progressColor: Colors.lightBlue,
                              //   animatedDuration: Duration(milliseconds: 6000),
                              //   direction: Axis.vertical,
                              //   verticalDirection: VerticalDirection.up,
                              //   formatValueFixed: 100,
                              // ),
                            ),
                            // StepProgressIndicator(
                            //   fallbackLength: 140,
                            //   direction: Axis.vertical,
                            //   totalSteps: 200,
                            //   currentStep: 20,
                            //   size: 10,
                            //   padding: 0,
                            //   selectedColor: Colors.yellow,
                            //   unselectedColor: Colors.cyan,
                            //   roundedEdges: Radius.circular(10),
                            //   selectedGradientColor: LinearGradient(
                            //     end: Alignment.bottomRight,
                            //     colors: [Colors.white, Colors.white],
                            //   ),
                            //   unselectedGradientColor: LinearGradient(
                            //     begin: Alignment.topLeft,
                            //     end: Alignment.bottomRight,
                            //     colors: [Color(0xffB6FF6F), Color(0xffB6FF6F)],
                            //   ),
                            // ),

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
                            Container(
                              width: 10.w,
                              height: 160.h,
                              child: FAProgressBar(
                                currentValue: 80,
                                // displayText: '50%',
                                animatedDuration: Duration(milliseconds: 600),
                                direction: Axis.vertical,
                                verticalDirection: VerticalDirection.up,
                                backgroundColor: Colors.white,
                                progressColor: Color(0xffB6FF6F),
                              ),
                            ),
                            // StepProgressIndicator(
                            //   fallbackLength: 140,
                            //   direction: Axis.vertical,
                            //   totalSteps: 200,
                            //   currentStep: 100,
                            //   size: 10,
                            //   padding: 0,
                            //   selectedColor: Colors.yellow,
                            //   unselectedColor: Colors.cyan,
                            //   roundedEdges: Radius.circular(10),
                            //   selectedGradientColor: LinearGradient(
                            //     end: Alignment.bottomRight,
                            //     colors: [Colors.white, Colors.white],
                            //   ),
                            //   unselectedGradientColor: LinearGradient(
                            //     begin: Alignment.topLeft,
                            //     end: Alignment.bottomRight,
                            //     colors: [Color(0xffB6FF6F), Color(0xffB6FF6F)],
                            //   ),
                            // ),
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
                            Container(
                              width: 10.w,
                              height: 160.h,
                              child: FAProgressBar(
                                currentValue: 40,
                                // displayText: '50%',
                                animatedDuration: Duration(milliseconds: 600),
                                direction: Axis.vertical,
                                verticalDirection: VerticalDirection.up,
                                backgroundColor: Colors.white,
                                progressColor: Color(0xffB6FF6F),
                              ),
                            ),
                            // StepProgressIndicator(
                            //   fallbackLength: 140,
                            //   direction: Axis.vertical,
                            //   totalSteps: 200,
                            //   currentStep: 90,
                            //   size: 10,
                            //   padding: 0,
                            //   selectedColor: Colors.yellow,
                            //   unselectedColor: Colors.cyan,
                            //   roundedEdges: Radius.circular(10),
                            //   selectedGradientColor: LinearGradient(
                            //     end: Alignment.bottomRight,
                            //     colors: [Colors.white, Colors.white],
                            //   ),
                            //   unselectedGradientColor: LinearGradient(
                            //     begin: Alignment.topLeft,
                            //     end: Alignment.bottomRight,
                            //     colors: [Color(0xffB6FF6F), Color(0xffB6FF6F)],
                            //   ),
                            // ),
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
                            Container(
                              width: 10.w,
                              height: 160.h,
                              child: FAProgressBar(
                                currentValue: 90,
                                // displayText: '50%',
                                animatedDuration: Duration(milliseconds: 600),
                                direction: Axis.vertical,
                                verticalDirection: VerticalDirection.up,
                                backgroundColor: Colors.white,
                                progressColor: Color(0xffB6FF6F),
                              ),
                            ),
                            // StepProgressIndicator(
                            //   fallbackLength: 140,
                            //   direction: Axis.vertical,
                            //   totalSteps: 200,
                            //   currentStep: 80,
                            //   size: 10,
                            //   padding: 0,
                            //   selectedColor: Colors.yellow,
                            //   unselectedColor: Colors.cyan,
                            //   roundedEdges: Radius.circular(10),
                            //   selectedGradientColor: LinearGradient(
                            //     end: Alignment.bottomRight,
                            //     colors: [Colors.white, Colors.white],
                            //   ),
                            //   unselectedGradientColor: LinearGradient(
                            //     begin: Alignment.topLeft,
                            //     end: Alignment.bottomRight,
                            //     colors: [Color(0xffB6FF6F), Color(0xffB6FF6F)],
                            //   ),
                            // ),
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
                            Container(
                              width: 10.w,
                              height: 160.h,
                              child: FAProgressBar(
                                currentValue: 30,
                                // displayText: '50%',
                                animatedDuration: Duration(milliseconds: 600),
                                direction: Axis.vertical,
                                verticalDirection: VerticalDirection.up,
                                backgroundColor: Colors.white,
                                progressColor: Color(0xffB6FF6F),
                              ),
                            ),
                            // StepProgressIndicator(
                            //   fallbackLength: 140,
                            //   direction: Axis.vertical,
                            //   totalSteps: 200,
                            //   currentStep: 132,
                            //   size: 10,
                            //   padding: 0,
                            //   selectedColor: Colors.yellow,
                            //   unselectedColor: Colors.cyan,
                            //   roundedEdges: Radius.circular(10),
                            //   selectedGradientColor: LinearGradient(
                            //     end: Alignment.bottomRight,
                            //     colors: [Colors.white, Colors.white],
                            //   ),
                            //   unselectedGradientColor: LinearGradient(
                            //     begin: Alignment.topLeft,
                            //     end: Alignment.bottomRight,
                            //     colors: [Color(0xffB6FF6F), Color(0xffB6FF6F)],
                            //   ),
                            // ),
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
                            Container(
                              width: 10.w,
                              height: 160.h,
                              child: FAProgressBar(
                                currentValue: 50,
                                // displayText: '50%',
                                animatedDuration: Duration(milliseconds: 600),
                                direction: Axis.vertical,
                                verticalDirection: VerticalDirection.up,
                                backgroundColor: Colors.white,
                                progressColor: Color(0xffB6FF6F),
                              ),
                            ),
                            // StepProgressIndicator(
                            //   fallbackLength: 140,
                            //   direction: Axis.vertical,
                            //   totalSteps: 200,
                            //   currentStep: 120,
                            //   size: 10,
                            //   padding: 0,
                            //   selectedColor: Colors.yellow,
                            //   unselectedColor: Colors.cyan,
                            //   roundedEdges: Radius.circular(10),
                            //   selectedGradientColor: LinearGradient(
                            //     end: Alignment.bottomRight,
                            //     colors: [Colors.white, Colors.white],
                            //   ),
                            //   unselectedGradientColor: LinearGradient(
                            //     begin: Alignment.topLeft,
                            //     end: Alignment.bottomRight,
                            //     colors: [Color(0xffB6FF6F), Color(0xffB6FF6F)],
                            //   ),
                            // ),
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
                            Container(
                              width: 10.w,
                              height: 160.h,
                              child: FAProgressBar(
                                currentValue: 55,
                                // displayText: '50%',
                                animatedDuration: Duration(milliseconds: 600),
                                direction: Axis.vertical,
                                verticalDirection: VerticalDirection.up,
                                backgroundColor: Colors.white,
                                progressColor: Color(0xffB6FF6F),
                              ),
                            ),
                            // StepProgressIndicator(
                            //   fallbackLength: 140,
                            //   direction: Axis.vertical,
                            //   totalSteps: 200,
                            //   currentStep: 80,
                            //   size: 10,
                            //   padding: 0,
                            //   selectedColor: Colors.yellow,
                            //   unselectedColor: Colors.cyan,
                            //   roundedEdges: Radius.circular(10),
                            //   selectedGradientColor: LinearGradient(
                            //     end: Alignment.bottomRight,
                            //     colors: [Colors.white, Colors.white],
                            //   ),
                            //   unselectedGradientColor: LinearGradient(
                            //     begin: Alignment.topLeft,
                            //     end: Alignment.bottomRight,
                            //     colors: [Color(0xffB6FF6F), Color(0xffB6FF6F)],
                            //   ),
                            // ),
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
                      OnTap: () {
                        Get.to(() => shopscheckin());
                      },
                    ),
                    userhomewidget(
                      containerimage: "assets/images/Icon awesome-box.png",
                      containertext: "View Shop",
                      OnTap: () {
                        Get.to(() => myproduct());
                      },
                    ),
                  ],
                ),
                10.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => shopreview());
                          },
                          child: Column(children: [
                            Container(
                              width: 188.w,
                              height: 190.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                color: Color(0xff888a89),
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 35,
                              )),
                            ),
                            10.verticalSpace,
                            Text(
                              "Reviews",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontFamily: "Segoe UI, Bold",
                                  color: Colors.white),
                            ),
                          ]),
                        ),
                        10.verticalSpace,
                        userhomewidget(
                          containertext: "Top Rated Products",
                          containerimage:
                              "assets/images/Icon open-vertical-align-top.png",
                          OnTap: () {
                            Get.to(() => TopRatedProducts());
                          },
                        ),
                      ]),
                ),
                150.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class userhomewidget extends StatelessWidget {
  var containertext;
  String containerimage;
  var OnTap;

  userhomewidget({
    required this.containertext,
    required this.containerimage,
    required this.OnTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Column(
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
      ),
    );
  }
}
