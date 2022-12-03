import 'package:edyble_app/AuthScreens/otp.dart';
import 'package:edyble_app/widgets/textformfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                    Image.asset("assets/images/PNG-01.png", scale: 5.5),
                    Row(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Forgot Password",
                              style: TextStyle(
                                  fontSize: 38.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            RichText(
                              text: TextSpan(
                                text: " Enter you Email",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                ),
                              ),
                            ),
                          ]),
                    ]),
                    30.verticalSpace,
                    textformfield(
                        hintTextt: "Email",
                        prefixIconimage:
                            "assets/images/Icon material-email.png",
                        containerwidth: 362.w),
                    20.verticalSpace,
                    GestureDetector(
                      onTap: () {
                        Get.to(() => forgotpassotp());
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
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Submit",
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