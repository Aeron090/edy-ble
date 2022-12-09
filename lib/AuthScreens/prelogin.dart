import 'package:edyble_app/AuthScreens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/preloginbutton.dart';

class preloginscreen extends StatefulWidget {
  const preloginscreen({super.key});

  @override
  State<preloginscreen> createState() => _preloginscreenState();
}

class _preloginscreenState extends State<preloginscreen> {
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
            // actions: [Image.asset("assets/images/Icon ionic-ios-arrow-back.png")],
            leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Image.asset(
                "assets/images/Icon ionic-ios-arrow-back.png",
                scale: 4.5,
              ),
            )),
        body: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/images/PNG-01.png",
                  scale: 4,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => loginscreen());
                },
                child: Preloginbuttonswidget(
                  text: "Login With Email",
                  iconimage: "assets/images/-email.png",
                ),
              ),
              10.verticalSpace,
              Container(
                width: 362.w,
                height: 62.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xffB6FF6F),
                  ),
                  borderRadius: BorderRadius.circular(31.r),
                  color: Color(0xffB6FF6F),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffB6FF6F),
                      spreadRadius: 0,
                      blurRadius: 13,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 80.w,
                    ),
                    Container(
                      width: 11.w,
                      height: 21.h,
                      child: Image.asset(
                        "assets/images/Icon awesome-facebook-f.png",
                        scale: 4.5,
                      ),
                    ),
                    SizedBox(
                      width: 19.w,
                    ),
                    Text(
                      "Login With Facebook",
                      style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              10.verticalSpace,
              Preloginbuttonswidget(
                text: "Login With Google",
                iconimage: "assets/images/Icon awesome-google.png",
              ),
              10.verticalSpace,
              Preloginbuttonswidget(
                text: "Login With Apple",
                iconimage: "assets/images/Icon awesome-apple.png",
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
