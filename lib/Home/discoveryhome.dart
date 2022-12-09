import 'package:edyble_app/Home/drawer.dart';
import 'package:edyble_app/Home/friendsrecommendation.dart';
import 'package:edyble_app/widgets/horizontalscrollablerow.dart';
import 'package:edyble_app/widgets/textformfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:simple_star_rating/simple_star_rating.dart';
import 'package:rate_in_stars/rate_in_stars.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:rate/rate.dart';

class discovery extends StatefulWidget {
  const discovery({super.key});

  @override
  State<discovery> createState() => _discoveryState();
}

class _discoveryState extends State<discovery> {
  double value = 3.5;
  bool allowEditing = false;
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
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          toolbarHeight: 100.h,
          leading: GestureDetector(
            onTap: () {
              _key.currentState!.openDrawer();
            },
            child: Padding(
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
                      blurRadius: 1,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Center(
                    child: Image.asset(
                  "assets/images/Icon feather-menu.png",
                  scale: 3.5,
                )),
              ),
            ),
          ),
          title: Text(
            "Discovery",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        drawer: drawerscreen(),
        body: Container(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 328.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: Color(0xff5f8771),
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
                      Container(
                        width: 51.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: Color(0xff5f8771),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xffB6FF6F),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffB6FF6F),
                              spreadRadius: 0,
                              blurRadius: 1,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                            child: Image.asset(
                          "assets/images/Icon feather-menu.png",
                          scale: 3.5,
                        )),
                      ),
                    ],
                  ),
                  40.verticalSpace,
                  Container(
                    height: 0.8.sh,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            width: 388.w,
                            height: 220.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      width: 388.w,
                                      height: 177.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(31.r),
                                        color: Colors.white.withOpacity(0.3),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xff000000)
                                                .withOpacity(0.05),
                                            spreadRadius: 0,
                                            blurRadius: 42,
                                            offset: Offset(0,
                                                23), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 23),
                                        child: ListView(children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              32.verticalSpace,
                                              Text(
                                                "Reccomendations",
                                                style: TextStyle(
                                                    fontSize: 15.sp,
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    fontFamily:
                                                        "Sora, ExtraLight"),
                                              ),
                                              Text(
                                                "Hemptopia",
                                                style: TextStyle(
                                                    fontSize: 30.sp,
                                                    color: Colors.white,
                                                    fontFamily:
                                                        "Sora, ExtraBold"),
                                              ),
                                              1.verticalSpace,
                                              Container(
                                                width: 177.w,
                                                child: Text(
                                                  "Lorem ipsum dolor sit amet consectetur adipiscing elit vehicula phasellus gravida torquent, nibh",
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      fontFamily: "Sora, Thin"),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ]),
                                      ),
                                    ),
                                    Positioned(
                                      top: -27,
                                      right: 20,
                                      child: Container(
                                        child: Image.asset(
                                          "assets/images/imgbin_cannabidiol-medical-cannabis-hemp-oil-vaporizer-png.png",
                                          // fit: BoxFit.cover,
                                          scale: 4.5,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          10.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 6.w,
                                height: 6.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffB6FF6F)),
                              ),
                              2.horizontalSpace,
                              Container(
                                width: 6.w,
                                height: 6.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffB6FF6F)),
                              ),
                              2.horizontalSpace,
                              Container(
                                width: 6.w,
                                height: 6.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffB6FF6F)),
                              )
                            ],
                          ),
                          10.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Friends Recomendations",
                                style: TextStyle(
                                    fontSize: 22.sp,
                                    color: Colors.white,
                                    fontFamily: "Sora, ExtraLight"),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(() => friendsrecommendation());
                                },
                                child: Image.asset(
                                  "assets/images/Icon awesome-arrow-circle-up.png",
                                  scale: 4.5,
                                ),
                              )
                            ],
                          ),
                          13.verticalSpace,
                          horizontalscrollablerow(),
                          // SingleChildScrollView(
                          //   scrollDirection: Axis.horizontal,
                          //   child: Row(
                          //     children: [
                          //       friendsrecomendations(),
                          //       10.horizontalSpace,
                          //       friendsrecomendations(),
                          //       10.horizontalSpace,
                          //       friendsrecomendations(),
                          //       10.horizontalSpace,
                          //       friendsrecomendations(),
                          //     ],
                          //   ),
                          // ),
                          20.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Trending Edibles",
                                style: TextStyle(
                                    fontSize: 22.sp,
                                    color: Colors.white,
                                    fontFamily: "Sora, ExtraLight"),
                              ),
                              Image.asset(
                                "assets/images/Icon awesome-arrow-circle-up.png",
                                scale: 4.5,
                              )
                            ],
                          ),
                          10.verticalSpace,
                          horizontalscrollablerow(),
                          250.verticalSpace,
                        ],
                      ),
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

class friendsrecomendations extends StatelessWidget {
  const friendsrecomendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 166.w,
                height: 205.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(31.r),
                  color: Colors.white.withOpacity(0.3),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff000000).withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 42,
                      offset: Offset(0, 23), // changes position of shadow
                    ),
                  ],
                ),
              ),
              24.verticalSpace,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Mel K.",
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontFamily: "Sora, ExtraBold"),
                      children: <TextSpan>[
                        TextSpan(
                            text: "Highly EDIBLE",
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.white.withOpacity(0.5),
                                fontFamily: "Sora, Thin"))
                      ],
                    ),
                  ),
                  Text(
                    "Organic Fruity Bears",
                    style: TextStyle(
                        fontSize: 11.sp, color: Colors.white.withOpacity(0.25)),
                  ),
                  Rate(
                    iconSize: 24,
                    color: Color(0xffFFCB1E),
                    allowHalf: true,
                    allowClear: true,
                    initialValue: 5,
                    readOnly: true,
                    onChange: (value) => print(value),
                  ),
                  Text(
                    "\$99",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: "Sora, ExtraBold",
                        color: Colors.white),
                  )
                ],
              ),
            ],
          ),
          Positioned(
            top: -55,
            left: -35,
            child: Container(
              child: Image.asset(
                "assets/images/full-spectrum-cbd-oil.png",
                fit: BoxFit.cover,
                scale: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
