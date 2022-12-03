import 'package:edyble_app/Home/bottomnavbar.dart';
import 'package:edyble_app/Home/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller.dart';

class badgesscreen extends StatefulWidget {
  const badgesscreen({super.key});

  @override
  State<badgesscreen> createState() => _badgesscreenState();
}

class _badgesscreenState extends State<badgesscreen> {
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
            "Badges",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Column(children: [
            Center(
              child: Text(
                "Achievements",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: "Segoe UI, Bold",
                  color: Color(0xffB6FF6F),
                ),
              ),
            ),
            15.verticalSpace,
            Container(
              width: 388.w,
              height: 126.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Color(0xff848886)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  imagewithtextwidget(
                    imagename: "Added First Friend",
                  ),
                  dividerwidget(),
                  imagewithtextwidget(
                    imagename: "Checked in to First Shop",
                  ),
                  dividerwidget(),
                  imagewithtextwidget(
                    imagename: "Rated First Shop",
                  ),
                  dividerwidget(),
                ],
              ),
            ),
            21.verticalSpace,
            Column(
              children: [
                Center(
                  child: Text(
                    "Badges",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: "Segoe UI, Bold",
                      color: Color(0xffB6FF6F),
                    ),
                  ),
                ),
              ],
            ),
            10.verticalSpace,
            Container(
              width: 388.w,
              height: 126.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Color(0xff848886),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    imagewithtextwidget(
                      imagename: "Drink Star Only 5 Drinks Away!",
                    ),
                    dividerwidget(),
                    imagewithtextwidget(
                      imagename: "Groupie Join a Group to get Badge!",
                    ),
                  ]),
            ),
            21.verticalSpace,
            Column(
              children: [
                Center(
                  child: Text(
                    "Friends Achievements",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: "Segoe UI, Bold",
                      color: Color(0xffB6FF6F),
                    ),
                  ),
                ),
              ],
            ),
            10.verticalSpace,
            Container(
              width: 388.w,
              height: 126.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Color(0xff848886),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    imagewithtextwidget(
                      imagename: "Bobby42",
                    ),
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}

class dividerwidget extends StatelessWidget {
  const dividerwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.75,
      height: 80.h,
      color: Colors.white.withOpacity(0.20),
    );
  }
}

class imagewithtextwidget extends StatelessWidget {
  String imagename;
  imagewithtextwidget({
    required this.imagename,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            child: Image.asset(
              "assets/images/Ellipse 33.png",
              scale: 5.5,
              fit: BoxFit.cover,
            ),
          ),
          Container(
              width: 86.w,
              height: 31.h,
              child: Padding(
                padding: EdgeInsets.only(bottom: 0),
                child: Text(
                  imagename,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: "Poppins, SemiBold",
                    color: Colors.white,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
