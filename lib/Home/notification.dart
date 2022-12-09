import 'package:edyble_app/Home/bottomnavbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'controller.dart';
import 'controller/bottomcontroller.dart';

import 'discoveryhome.dart';

class drawernotification extends StatefulWidget {
  const drawernotification({super.key});

  @override
  State<drawernotification> createState() => _drawernotificationState();
}

class _drawernotificationState extends State<drawernotification> {
  bool alllbool = true;
  bool creditbool = true;
  bool debitbool = false;
  var _selectedButton = 1;
  var selcted;
  @override
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
            "Notifications",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
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
                                selcted = 1;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Activities',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Sora, Regular",
                                    color: selcted == 1
                                        ? Color(0xffB6FF6F)
                                        : Color(0xffB6FF6F).withOpacity(0.20),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: Get.width * 0.30,
                                  color: selcted == 1
                                      ? Color(0xffB6FF6F)
                                      : Color(0xffB6FF6F).withOpacity(0.20),
                                  height: selcted == 1 ? 3 : 1,
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              setState(() {
                                selcted = 2;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Shops',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Segoe UI, Semibold",
                                    color: selcted == 2
                                        ? Color(0xffB6FF6F)
                                        : Color(0xffB6FF6F).withOpacity(0.20),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: Get.width * 0.30,
                                  color: selcted == 2
                                      ? Color(0xffB6FF6F)
                                      : Color(0xffB6FF6F).withOpacity(0.20),
                                  height: creditbool == 2 ? 3 : 1,
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              setState(() {
                                selcted = 3;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  'News',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Segoe UI, Semibold",
                                    color: selcted == 3
                                        ? Color(0xffB6FF6F)
                                        : Color(0xffB6FF6F).withOpacity(0.20),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: Get.width * 0.30,
                                  color: selcted == 3
                                      ? Color(0xffB6FF6F)
                                      : Color(0xffB6FF6F).withOpacity(0.20),
                                  height: selcted == 3 ? 3 : 1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      selcted == 1
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                width: double.infinity,
                                height: 0.9.sh,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount: 10,
                                        itemBuilder: (context, i) {
                                          return Activitieswidget();
                                        },
                                      ),
                                    ),
                                    100.verticalSpace,
                                  ],
                                ),
                              ),
                            )
                          : selcted == 2
                              ? Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 7),
                                  child: Container(
                                    width: double.infinity,
                                    height: 0.9.sh,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: ListView.builder(
                                            itemCount: 10,
                                            itemBuilder: (context, i) {
                                              return shopwidget();
                                            },
                                          ),
                                        ),
                                        100.verticalSpace,
                                      ],
                                    ),
                                  ),
                                )
                              : Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 7),
                                  child: Container(
                                    width: double.infinity,
                                    height: 0.9.sh,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: ListView.builder(
                                            itemCount: 10,
                                            itemBuilder: (context, i) {
                                              return shopwidget();
                                            },
                                          ),
                                        ),
                                        150.verticalSpace,
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

class shopwidget extends StatelessWidget {
  const shopwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          20.verticalSpace,
          Row(
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
          20.verticalSpace,
          Container(
            width: 387.w,
            height: 1.h,
            color: Color(0xffB6FF6F).withOpacity(0.20),
          ),
        ],
      ),
    );
  }
}

class Activitieswidget extends StatelessWidget {
  const Activitieswidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.verticalSpace,
        Row(
          children: [
            8.horizontalSpace,
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
                    blurRadius: 10,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Image.asset(
                "assets/images/Ellipse 41.png",
              ),
            ),
            10.horizontalSpace,
            Text(
              "BOBBY42 Checked in @ NECTAR Main St.",
              style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.white,
                  fontFamily: "Sora, ExtraLight"),
            ),
          ],
        ),
        20.verticalSpace,
        Container(
          width: 387.w,
          height: 1.h,
          color: Color(0xffB6FF6F).withOpacity(0.20),
        ),
      ],
    );
  }
}
