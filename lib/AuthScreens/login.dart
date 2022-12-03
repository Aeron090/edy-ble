import 'package:edyble_app/AuthScreens/CreateAccount.dart';
import 'package:edyble_app/AuthScreens/forgotpass.dart';
import 'package:edyble_app/Home/discoveryhome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/textformfield.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
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
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/PNG-01.png",
                    scale: 4.5,
                  ),
                  Row(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome back!",
                            style: TextStyle(
                                fontSize: 39.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => createaccount());
                            },
                            child: RichText(
                              text: TextSpan(
                                text: "  Login below or  ",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "create account",
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          color: Colors.white,
                                          decoration: TextDecoration.underline,
                                          decorationColor: Color(0xffB6FF6F)))
                                ],
                              ),
                            ),
                          ),
                        ]),
                  ]),
                  30.verticalSpace,
                  textformfield(
                    containerwidth: 362.w,
                    hintTextt: "User Name/ Email Address",
                    prefixIconimage: "assets/images/Icon material-email.png",
                  ),
                  8.verticalSpace,
                  textformfield(
                      containerwidth: 362.w,
                      hintTextt: "Password",
                      prefixIconimage: "assets/images/awesome-lock.png"),
                  11.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => ForgotPassword());
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Color(0xffFFFFFF).withOpacity(0.5),
                              fontFamily: "Sora Thin"),
                        ),
                      )
                    ],
                  ),
                  50.verticalSpace,
                  GestureDetector(
                    onTap: () {
                      Get.to(() => discovery());
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
                            color: Color(0xffB6FF6F),
                            spreadRadius: 0,
                            blurRadius: 13,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: "Sora, ExtraBold",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
