import 'package:edyble_app/AuthScreens/ConfirmationUser.dart';
import 'package:edyble_app/AuthScreens/createprofilecontinue.dart';
import 'package:edyble_app/AuthScreens/login.dart';
import 'package:edyble_app/widgets/textformfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Home/Createprofile.dart';

class createaccount extends StatefulWidget {
  const createaccount({super.key});

  @override
  State<createaccount> createState() => _createaccountState();
}

class _createaccountState extends State<createaccount> {
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
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/PNG-01.png", scale: 5.5),
                    Row(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Create account",
                              style: TextStyle(
                                  fontSize: 39.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => loginscreen());
                              },
                              child: RichText(
                                text: TextSpan(
                                  text: " Enter you details below or ",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "login",
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: Colors.white))
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ]),
                    30.verticalSpace,
                    textformfield(
                        labelText: "Name",
                        prefixIconimage: "assets/images/awesome-user-alt.png",
                        containerwidth: 362.w),
                    7.verticalSpace,
                    textformfield(
                        labelText: "Email",
                        prefixIconimage:
                            "assets/images/Icon material-email.png",
                        containerwidth: 362.w),
                    7.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        textformfield(
                            labelText: "Day",
                            prefixIconimage:
                                "assets/images/awesome-calendar-alt.png",
                            containerwidth: 115.w),
                        textformfield(
                            labelText: "Month",
                            prefixIconimage:
                                "assets/images/awesome-calendar-alt.png",
                            containerwidth: 115.w),
                        textformfield(
                            labelText: "Year",
                            prefixIconimage:
                                "assets/images/awesome-calendar-alt.png",
                            containerwidth: 115.w),
                      ],
                    ),
                    7.verticalSpace,
                    textformfield(
                        labelText: "Password",
                        prefixIconimage: "assets/images/Icon awesome-lock.png",
                        containerwidth: 362.w),
                    7.verticalSpace,
                    textformfield(
                        labelText: "Re-type Password",
                        prefixIconimage: "assets/images/Icon awesome-lock.png",
                        containerwidth: 362.w),
                    14.verticalSpace,
                    GestureDetector(
                      onTap: () {
                        Get.to(() => createprofile());
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
                              blurRadius: 6,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Signup",
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: "Sora, ExtraBold",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
