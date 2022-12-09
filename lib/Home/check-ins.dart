import 'package:edyble_app/Home/bottomnavbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'badges.dart';
import 'controller.dart';

class checksin extends StatefulWidget {
  const checksin({super.key});

  @override
  State<checksin> createState() => _checksinState();
}

class _checksinState extends State<checksin> {
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
              bottomcontroller.navBarChange(3);
              Get.to(() => navbar());
            },
            child: Image.asset(
              "assets/images/Icon ionic-ios-arrow-back.png",
              scale: 3.5,
            ),
          ),
          title: Text(
            "My Check-Ins",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                mycheckinwidget(),
                14.verticalSpace,
                mycheckinwidget(),
                14.verticalSpace,
                mycheckinwidget(),
                14.verticalSpace,
                mycheckinwidget(),
                14.verticalSpace,
                mycheckinwidget(),
                14.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class mycheckinwidget extends StatelessWidget {
  const mycheckinwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 388.w,
      height: 182.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Color(0xff646962).withOpacity(0.75),
      ),
      child: Column(
        children: [
          15.verticalSpace,
          Container(
            width: 57.w,
            height: 57.h,
            child: Image.asset(
              "assets/images/createprofileEllipse 2.png",
            ),
          ),
          14.verticalSpace,
          Text(
            "Greenside Recreational",
            style: TextStyle(
                fontSize: 15.sp,
                fontFamily: "Poppins, SemiBold",
                color: Colors.white),
          ),
          8.verticalSpace,
          Container(
            width: 360.w,
            height: 1.w,
            color: Colors.white.withOpacity(0.20),
          ),
          7.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "Total Visits",
                    style: TextStyle(
                        fontFamily: "Poppins, SemiBold",
                        fontSize: 13.sp,
                        color: Colors.white),
                  ),
                  Text(
                    "02",
                    style: TextStyle(
                        fontFamily: "Poppins, SemiBold",
                        fontSize: 13.sp,
                        color: Colors.white),
                  )
                ],
              ),
              Container(
                width: 1.w,
                height: 41.h,
                color: Colors.white.withOpacity(0.20),
              ),
              Column(
                children: [
                  Text(
                    "Ratings",
                    style: TextStyle(
                        fontFamily: "Poppins, SemiBold",
                        fontSize: 13.sp,
                        color: Colors.white),
                  ),
                  Text(
                    "5.0",
                    style: TextStyle(
                        fontFamily: "Poppins, SemiBold",
                        fontSize: 13.sp,
                        color: Colors.white),
                  )
                ],
              ),
              Container(
                width: 1.w,
                height: 41.h,
                color: Colors.white.withOpacity(0.20),
              ),
              Column(
                children: [
                  Text(
                    "Last Visited:",
                    style: TextStyle(
                        fontFamily: "Poppins, SemiBold",
                        fontSize: 13.sp,
                        color: Colors.white),
                  ),
                  Text(
                    "8/22/22",
                    style: TextStyle(
                        fontFamily: "Poppins, SemiBold",
                        fontSize: 13.sp,
                        color: Colors.white),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
