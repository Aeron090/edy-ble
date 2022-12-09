import 'dart:ui';

import 'package:edyble_app/Home/badges.dart';
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

class wishlist extends StatefulWidget {
  const wishlist({super.key});

  @override
  State<wishlist> createState() => _wishlistState();
}

class _wishlistState extends State<wishlist> {
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
            "My Wishlist",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Badgesscreenwidget(),
                16.verticalSpace,
                Badgesscreenwidget(),
                16.verticalSpace,
                Badgesscreenwidget(),
                16.verticalSpace,
                Badgesscreenwidget(),
                16.verticalSpace,
                Badgesscreenwidget(),
                16.verticalSpace,
                Badgesscreenwidget(),
                16.verticalSpace,
                Badgesscreenwidget(),
                16.verticalSpace,
                Badgesscreenwidget(),
                16.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Badgesscreenwidget extends StatelessWidget {
  const Badgesscreenwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 388.w,
      height: 101.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Color(0xff646962),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black,
        //     spreadRadius: 42,
        //     blurRadius: 3,
        //     offset: Offset(0, 23), // changes position of shadow
        //   ),
        // ],
      ),
      child: Row(
        children: [
          Image.asset("assets/images/Ellipse 33.png"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Canadagummies",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontFamily: "Segoe UI, Bold"),
                  ),
                  4.verticalSpace,
                  Text(
                    "4.5",
                    style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.white,
                        fontFamily: "Segoe UI, Bold"),
                  ),
                  1.verticalSpace,
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 10,
                  ),
                  51.horizontalSpace,
                  Image.asset(
                    "assets/images/Icon material-delete-forever.png",
                    scale: 5,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 19,
                  )
                ],
              ),
              Container(
                width: 267.w,
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur, cursus adipiscing elit convallis.",
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontFamily: "Segoe UI, Regular",
                      color: Colors.white),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
