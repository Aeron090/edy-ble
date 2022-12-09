import 'package:edyble_app/Home/discoveryhome.dart';
import 'package:edyble_app/Home/drawer.dart';
import 'package:edyble_app/Home/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'bottomnavbar.dart';
import 'controller.dart';

class edibleguide extends StatefulWidget {
  const edibleguide({super.key});

  @override
  State<edibleguide> createState() => _edibleguideState();
}

class _edibleguideState extends State<edibleguide> {
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
            "Edible Guide",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
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
                                'Potency',
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
                            padding: const EdgeInsets.symmetric(horizontal: 7),
                            child: Container(
                              width: double.infinity,
                              height: 0.8.sh,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    26.verticalSpace,
                                    wellnesswidget(),
                                    24.verticalSpace,
                                    Container(
                                      width: 388.w,
                                      height: 1.h,
                                      color:
                                          Color(0xffB6FF6F).withOpacity(0.20),
                                    ),
                                    24.verticalSpace,
                                    wellnesswidget(),
                                    24.verticalSpace,
                                    Container(
                                      width: 388.w,
                                      height: 1.h,
                                      color:
                                          Color(0xffB6FF6F).withOpacity(0.20),
                                    ),
                                    24.verticalSpace,
                                    wellnesswidget(),
                                    24.verticalSpace,
                                    Container(
                                      width: 388.w,
                                      height: 1.h,
                                      color:
                                          Color(0xffB6FF6F).withOpacity(0.20),
                                    ),
                                    24.verticalSpace,
                                    wellnesswidget(),
                                    24.verticalSpace,
                                    Container(
                                      width: 388.w,
                                      height: 1.h,
                                      color:
                                          Color(0xffB6FF6F).withOpacity(0.20),
                                    ),
                                    24.verticalSpace,
                                    wellnesswidget(),
                                    24.verticalSpace,
                                    Container(
                                      width: 388.w,
                                      height: 1.h,
                                      color:
                                          Color(0xffB6FF6F).withOpacity(0.20),
                                    ),
                                    24.verticalSpace,
                                    wellnesswidget(),
                                    24.verticalSpace,
                                    Container(
                                      width: 388.w,
                                      height: 1.h,
                                      color:
                                          Color(0xffB6FF6F).withOpacity(0.20),
                                    ),
                                    24.verticalSpace,
                                    wellnesswidget(),
                                    24.verticalSpace,
                                    Container(
                                      width: 388.w,
                                      height: 1.h,
                                      color:
                                          Color(0xffB6FF6F).withOpacity(0.20),
                                    ),
                                    24.verticalSpace,
                                  ],
                                ),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 7),
                            child: Container(
                              width: double.infinity,
                              height: 0.8.sh,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    25.verticalSpace,
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
    );
  }
}

class wellnesswidget extends StatelessWidget {
  const wellnesswidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
              // image: DecorationImage(
              //     image: AssetImage(
              //       "assets/images/Ellipse 7.png",
              //     ),
              //     fit: BoxFit.fill),
            ),
            child: Image.asset(
              "assets/images/Ellipse 41.png",
            ),
          ),
          15.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Greenside Recreational",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                    fontFamily: "Segoe UI, Bold"),
              ),
              5.verticalSpace,
              Container(
                width: 298.w,
                height: 38.h,
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur adipiscing elit",
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.white,
                      fontFamily: "Sora, ExtraLight"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
