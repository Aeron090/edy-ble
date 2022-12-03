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

class ediblesscreen extends StatefulWidget {
  const ediblesscreen({super.key});

  @override
  State<ediblesscreen> createState() => _ediblesscreenState();
}

class _ediblesscreenState extends State<ediblesscreen> {
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
            "Edibles",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ediblescreenwidget(),
                15.verticalSpace,
                ediblescreenwidget(),
                15.verticalSpace,
                ediblescreenwidget(),
                15.verticalSpace,
                ediblescreenwidget(),
                15.verticalSpace,
                ediblescreenwidget(),
                15.verticalSpace,
                ediblescreenwidget(),
                15.verticalSpace,
                ediblescreenwidget(),
                15.verticalSpace,
                ediblescreenwidget(),
                15.verticalSpace,
                ediblescreenwidget(),
                15.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ediblescreenwidget extends StatelessWidget {
  const ediblescreenwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 388.w,
      height: 98.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Color(0xff646962).withOpacity(0.75),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  width: 57.w,
                  height: 57.h,
                  child:
                      Image.asset("assets/images/createprofileEllipse 2.png"),
                ),
                Text(
                  "Canadagummies",
                  style: TextStyle(
                      fontFamily: "Poppins, SemiBold",
                      fontSize: 15.sp,
                      color: Colors.white),
                ),
              ],
            ),
            Container(
              width: 1.w,
              height: 80.h,
              color: Colors.white.withOpacity(0.20),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                width: 204.w,
                height: 53.h,
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur adipiscing elit duis donec pretium potenti",
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white,
                      fontFamily: "Poppins, Regular"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
