import 'package:edyble_app/Home/drawersettings.dart';
import 'package:edyble_app/Home/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class changepassword extends StatefulWidget {
  const changepassword({super.key});

  @override
  State<changepassword> createState() => _changepasswordState();
}

class _changepasswordState extends State<changepassword> {
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
              Get.to(() => profilescreen());
            },
            child: Image.asset(
              "assets/images/Icon ionic-ios-arrow-back.png",
              scale: 3.5,
            ),
          ),
          title: Text(
            "Change Password",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              changepasswordwidget(
                containertext: "Old Password",
              ),
              13.verticalSpace,
              changepasswordwidget(containertext: "New Password"),
              13.verticalSpace,
              changepasswordwidget(containertext: "Confirm New Password"),
              14.verticalSpace,
              GestureDetector(
                onTap: () {
                  Get.to(() => settings());
                },
                child: Container(
                  width: 387.w,
                  height: 63.h,
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
}

class changepasswordwidget extends StatelessWidget {
  var containertext;

  changepasswordwidget({
    required this.containertext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 388.w,
      height: 61.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(31.r),
        border: Border.all(
          width: 2.w,
          color: Color(0xffB6FF6F),
        ),
        color: Colors.white.withOpacity(0.5),
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
            hintText: containertext,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 18.0, horizontal: 30.0),
            hintStyle: TextStyle(
                fontSize: 18.sp, color: Colors.white, fontFamily: "Sora Thin"),
            fillColor: Color(0xff687a6c).withOpacity(0.5)),
      ),
    );
  }
}
