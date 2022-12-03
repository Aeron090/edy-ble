import 'package:edyble_app/Home/changepassword.dart';
import 'package:edyble_app/Home/discoveryhome.dart';
import 'package:edyble_app/Home/privacypolicy.dart';
import 'package:edyble_app/Home/profile.dart';
import 'package:edyble_app/Home/termsandconditions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'bottomnavbar.dart';
import 'controller.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  bool switchValue = true;
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
              bottomcontroller.navBarChange(0);
              Get.to(() => navbar());
            },
            child: Image.asset(
              "assets/images/Icon ionic-ios-arrow-back.png",
              scale: 3.5,
            ),
          ),
          title: Text(
            "Settings",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(children: [
            Container(
              width: 388.w,
              height: 62.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Color(0xff646962).withOpacity(0.80)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Notifications",
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: "Poppins, Regular",
                          color: Colors.white),
                    ),
                    Container(
                      width: 36.w,
                      height: 24.h,
                      child: Transform.scale(
                        transformHitTests: false,
                        scale: .6,
                        child: CupertinoSwitch(
                          trackColor: Colors.white.withOpacity(0.30),
                          // This bool value toggles the switch.
                          value: switchValue,
                          activeColor: Colors.white,
                          thumbColor: Color(0xff646962),

                          onChanged: (bool? value) {
                            // This is called when the user toggles the switch.
                            setState(() {
                              switchValue = value ?? false;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            10.verticalSpace,
            settingswidget(
              containertext: "Change Password",
              OnTap: () {
                Get.to(() => changepassword());
              },
            ),
            10.verticalSpace,
            settingswidget(
              containertext: "Privacy Policy",
              OnTap: () {
                Get.to(() => privacypolicy());
              },
            ),
            10.verticalSpace,
            settingswidget(
              containertext: "Terms & Conditions",
              OnTap: () {
                Get.to(() => termsandconditions());
              },
            ),
          ]),
        ),
      ),
    );
  }
}

class settingswidget extends StatelessWidget {
  String containertext;
  var OnTap;
  settingswidget({
    required this.containertext,
    required this.OnTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        width: 388.w,
        height: 62.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Color(0xff646962).withOpacity(0.80)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                containertext,
                style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: "Poppins, Regular",
                    color: Colors.white),
              ),
              Container(
                  width: 36.w,
                  height: 24.h,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
