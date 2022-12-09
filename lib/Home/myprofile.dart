import 'package:edyble_app/Home/bottomnavbar.dart';
import 'package:edyble_app/Home/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'badges.dart';
import 'controller.dart';

class myprofilescreen extends StatefulWidget {
  const myprofilescreen({super.key});

  @override
  State<myprofilescreen> createState() => _myprofilescreenState();
}

class _myprofilescreenState extends State<myprofilescreen> {
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
              Get.back();
            },
            child: Image.asset(
              "assets/images/Icon ionic-ios-arrow-back.png",
              scale: 3.5,
            ),
          ),
          title: Text(
            "My Profile",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                        width: 95.w,
                        height: 95.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffB6FF6F),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffB6FF6F),
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.image,
                          size: 27,
                        )),
                    Positioned(
                      bottom: -10,
                      left: 55,
                      child: Container(
                        width: 35.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1.w,
                            color: Color(0xff707070),
                          ),
                          color: Color(0xffB6FF6F),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffB6FF6F),
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/images/Icon-camera.png",
                            scale: 3.8,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              55.verticalSpace,
              createprofiletextfield("Full Name"),
              14.verticalSpace,
              Container(
                width: 362.w,
                height: 62.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(31.r),
                  border: Border.all(width: 2.w, color: Color(0xffB6FF6F)),
                  color: Colors.white.withOpacity(0.4),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffB6FF6F).withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 7,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                  ),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      suffixIcon: Image.asset(
                        "assets/images/material-my-location.png",
                        scale: 4.5,
                      ),
                      disabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      border: InputBorder.none,
                      labelText: "Location",
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 30.0),
                      labelStyle: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                          fontFamily: "Sora Thin"),
                      fillColor: Color(0xff687a6c).withOpacity(0.5)),
                ),
              ),
              13.verticalSpace,
              GestureDetector(
                onTap: () {
                  final bottomcontroller = Get.put(BottomController());
                  bottomcontroller.navBarChange(3);
                  Get.to(() => navbar());
                },
                child: Container(
                  width: 362.w,
                  height: 62.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Color(0xffB6FF6F),
                    ),
                    borderRadius: BorderRadius.circular(31.r),
                    color: Color(0xffB6FF6F),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff00FFA3),
                        spreadRadius: 0,
                        blurRadius: 13,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Save",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: "Sora, ExtraBold",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container createprofiletextfield(
    txt,
  ) {
    return Container(
      width: 362.w,
      height: 62.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(31.r),
        border: Border.all(width: 2.w, color: Color(0xffB6FF6F)),
        color: Colors.white.withOpacity(0.4),
        boxShadow: [
          BoxShadow(
            color: Color(0xffB6FF6F).withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 7,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
        style: TextStyle(
          fontSize: 18.sp,
          color: Colors.white,
        ),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            border: InputBorder.none,
            labelText: txt,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30.0),
            labelStyle: TextStyle(
                fontSize: 18.sp, color: Colors.white, fontFamily: "Sora Thin"),
            fillColor: Color(0xff687a6c).withOpacity(0.5)),
      ),
    );
  }
}
