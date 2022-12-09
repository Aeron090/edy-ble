import 'package:edyble_app/Home/GreensideRecreational.dart';

import 'package:edyble_app/Home/bottomnavbar.dart';
import 'package:edyble_app/Home/discoveryhome.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'controller.dart';
import 'controller/bottomcontroller.dart';

class MapSScreen extends StatefulWidget {
  const MapSScreen({super.key});

  @override
  State<MapSScreen> createState() => _MapSScreenState();
}

class _MapSScreenState extends State<MapSScreen> {
  bool directionbutton = true;

  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/Map.jpg",
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
              bottomcontroller.navBarChange(0);
              Get.to(() => navbar());
            },
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Container(
                width: 54.w,
                height: 54.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.30)),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(right: 3),
                    child: Image.asset(
                      "assets/images/Icon ionic-ios-arrow-back.png",
                      scale: 5,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          title: Text(
            "Map",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 328.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.30),
                          borderRadius: BorderRadius.circular(31.r),
                          border: Border.all(
                            color: Color(0xffB6FF6F),
                            width: 1.w,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff636761),
                              spreadRadius: 0,
                              blurRadius: 6,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search here",
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 30.0),
                            hintStyle: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 14),
                            prefixIcon: Image.asset(
                                alignment: Alignment.center,
                                "assets/images/Icon ionic-ios-search.png",
                                scale: 3.5,
                                color: Colors.white.withOpacity(0.5)),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      5.horizontalSpace,
                      Container(
                        width: 51.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.30),
                          borderRadius: BorderRadius.circular(31.r),
                          border: Border.all(
                            color: Color(0xffB6FF6F),
                            width: 1.w,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff636761),
                              spreadRadius: 0,
                              blurRadius: 6,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Image.asset(
                          "assets/images/Icon metro-filter.png",
                          scale: 5,
                        ),
                      ),
                    ],
                  ),
                  80.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/Icon awesome-map-marker-alt.png",
                        scale: 4,
                        color: Color(0xff656565),
                      ),
                      72.horizontalSpace,
                      directionbutton == true
                          ? Stack(clipBehavior: Clip.none, children: [
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
                            ])
                          : Container(),
                    ],
                  ),
                  80.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: 29.w,
                                height: 10.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(100, 50)),
                                  color: Color(0xffB6FF6F).withOpacity(0.72),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff000000),
                                      spreadRadius: 0,
                                      blurRadius: 6,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                  bottom: 8,
                                  left: 4,
                                  child: Image.asset(
                                    "assets/images/Icon awesome-map-pin.png",
                                    scale: 4,
                                  ))
                            ],
                          ),
                        ],
                      ),
                      70.horizontalSpace,
                      Image.asset(
                        "assets/images/Icon awesome-map-marker-alt.png",
                        scale: 4,
                      ),
                    ],
                  ),
                  60.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/images/Icon awesome-map-marker-alt.png",
                        scale: 4,
                        color: Color(0xff656565),
                      ),
                      Image.asset(
                        "assets/images/Icon awesome-map-marker-alt.png",
                        scale: 4,
                        color: Color(0xff656565),
                      ),
                    ],
                  ),
                  40.verticalSpace,
                  Container(
                    height: 190.h,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(() => GreensideRecreational());
                                },
                                child: Container(
                                  width: 375.w,
                                  height: 133.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.r),
                                    color: Color(0xffa5bdb0),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      16.horizontalSpace,
                                      Container(
                                        width: 63.w,
                                        height: 63.h,
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
                                              offset: Offset(0,
                                                  0), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: Image.asset(
                                          "assets/images/Ellipse 41.png",
                                        ),
                                      ),
                                      13.horizontalSpace,
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Greenside Recreational",
                                            style: TextStyle(
                                                fontFamily: "Sora, ExtraBold",
                                                fontSize: 20.sp,
                                                color: Colors.white),
                                          ),
                                          Container(
                                            width: 235.w,
                                            height: 40.h,
                                            child: Text(
                                              "8871 NE John Rd, Tacoma WA. Categories: Cannabis, Gummmies CBD.",
                                              style: TextStyle(
                                                  fontFamily:
                                                      "Sora, ExtraLight",
                                                  fontSize: 12.sp,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/Icon ionic-ios-call.png",
                                                scale: 4,
                                              ),
                                              6.horizontalSpace,
                                              Text(
                                                "+45223644852",
                                                style: TextStyle(
                                                    fontFamily:
                                                        "Sora, ExtraLight",
                                                    fontSize: 12.sp,
                                                    color: Colors.white),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: -25,
                                left: 130,
                                child: GestureDetector(
                                  behavior: HitTestBehavior.translucent,
                                  onTap: () {
                                    setState(() {
                                      directionbutton = false;
                                    });
                                  },
                                  child: Container(
                                    width: 123.w,
                                    height: 48.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(31.r),
                                        color: Color(0xffB6FF6F)),
                                    child: Center(child: Text("Direction")),
                                  ),
                                ),
                              )
                            ],
                          ),
                          10.horizontalSpace,
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: 375.w,
                                height: 133.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.r),
                                  color: Color(0xffa5bdb0),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    16.horizontalSpace,
                                    Container(
                                      width: 63.w,
                                      height: 63.h,
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
                                            offset: Offset(0,
                                                0), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Image.asset(
                                        "assets/images/Ellipse 41.png",
                                      ),
                                    ),
                                    13.horizontalSpace,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Greenside Recreational",
                                          style: TextStyle(
                                              fontFamily: "Sora, ExtraBold",
                                              fontSize: 20.sp,
                                              color: Colors.white),
                                        ),
                                        Container(
                                          width: 235.w,
                                          height: 40.h,
                                          child: Text(
                                            "8871 NE John Rd, Tacoma WA. Categories: Cannabis, Gummmies CBD.",
                                            style: TextStyle(
                                                fontFamily: "Sora, ExtraLight",
                                                fontSize: 12.sp,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              "assets/images/Icon ionic-ios-call.png",
                                              scale: 4,
                                            ),
                                            6.horizontalSpace,
                                            Text(
                                              "+45223644852",
                                              style: TextStyle(
                                                  fontFamily:
                                                      "Sora, ExtraLight",
                                                  fontSize: 12.sp,
                                                  color: Colors.white),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: -25,
                                left: 130,
                                child: Container(
                                  width: 123.w,
                                  height: 48.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(31.r),
                                      color: Color(0xffB6FF6F)),
                                  child: Center(child: Text("Direction")),
                                ),
                              )
                            ],
                          ),
                          10.verticalSpace,
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class MapSScreenwidget extends StatelessWidget {
//   const MapSScreenwidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
