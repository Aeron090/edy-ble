import 'package:edyble_app/flow2/Adson.dart';
import 'package:edyble_app/flow2/selecttempelate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:dotted_border/dotted_border.dart';

import '../Home/bottomnavbar.dart';
import '../Home/controller.dart';

class pushnotification extends StatefulWidget {
  const pushnotification({super.key});

  @override
  State<pushnotification> createState() => _pushnotificationState();
}

class _pushnotificationState extends State<pushnotification> {
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
            "Create a Push Notification",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: 362.w,
                height: 134.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.r),
                    color: Color(0xff6d726b).withOpacity(0.65)),
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(31.r),
                  dashPattern: [8, 8],
                  color: Color(0xffB6FF6F),
                  strokeWidth: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/Icon awesome-upload.png",
                            scale: 5,
                            color: Colors.white.withOpacity(0.75),
                          ),
                          6.verticalSpace,
                          Text(
                            "Product Name",
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontFamily: "Sora, Thin",
                                color: Colors.white.withOpacity(0.75)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              15.verticalSpace,
              textfieldwidget(
                containerheight: 62.h,
                containerwidth: 362.w,
                hinttextforfield: "Product Name",
              ),
              15.verticalSpace,
              textfieldwidget(
                  containerheight: 126.h,
                  hinttextforfield: "Detail",
                  containerwidth: 362.w),
              15.verticalSpace,
              buttonswidget(
                buttontext: "Add",
              ),
              15.verticalSpace,
              buttonswidget(
                buttontext: "Add More",
                OnTap: () {
                  Get.to(() => addsonscreen());
                },
              ),
              15.verticalSpace,
              buttonswidget(
                buttontext: "Continue",
                OnTap: () {
                  Get.to(() => selecttempelate());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class buttonswidget extends StatelessWidget {
  String buttontext;
  var OnTap;
  buttonswidget({
    required this.buttontext,
    this.OnTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        width: 362.w,
        height: 62.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(31.r),
          color: Color(0xffB6FF6F),
          boxShadow: [
            BoxShadow(
              color: Color(0xff00FFA3),
              spreadRadius: 0,
              blurRadius: 7,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Text(
            buttontext,
            style: TextStyle(
                fontSize: 20.sp,
                color: Colors.black,
                fontFamily: "Sora, ExtraBold"),
          ),
        ),
      ),
    );
  }
}

class textfieldwidget extends StatelessWidget {
  String hinttextforfield;
  double containerwidth;
  double containerheight;
  textfieldwidget({
    required this.containerheight,
    required this.hinttextforfield,
    required this.containerwidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerwidth.w,
      height: containerheight.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(31.r),
        color: Color(0xff6d726b).withOpacity(0.65),
        border: Border.all(
          width: 2.w,
          color: Color(0xffB6FF6F),
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Color(0xffB6FF6F).withOpacity(0.5),
        //     spreadRadius: 0,
        //     blurRadius: 7,
        //     offset: Offset(0, 1), // changes position of shadow
        //   ),
        // ],
      ),
      child: TextFormField(
        style: TextStyle(
          fontSize: 20.sp,
          color: Colors.white.withOpacity(0.75),
        ),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            border: InputBorder.none,
            labelText: hinttextforfield,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
            labelStyle: TextStyle(
                fontSize: 20.sp,
                color: Colors.white.withOpacity(0.75),
                fontFamily: "Sora Thin"),
            fillColor: Color(0xff687a6c).withOpacity(0.5)),
      ),
    );
  }
}
