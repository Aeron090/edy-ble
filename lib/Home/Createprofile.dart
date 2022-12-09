import 'package:edyble_app/AuthScreens/createprofilecontinue.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class createprofile extends StatefulWidget {
  const createprofile({super.key});

  @override
  State<createprofile> createState() => _createprofileState();
}

class _createprofileState extends State<createprofile> {
  @override
  bool isChecked = false;
  bool isChecked1 = false;
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
          ),
          title: Text(
            "Create Profile",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Sora, ExtraBold",
              color: Color(0xffB6FF6F),
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 143.w,
                      height: 143.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1.w,
                          color: Color(0xffB6FF6F),
                        ),
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffB6FF6F),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/Ellipse 41.png",
                      ),
                    ),
                    Positioned(
                      bottom: -20,
                      left: 50,
                      child: Container(
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffB6FF6F)),
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
                42.verticalSpace,
                createprofiletextfield("Full Name"),
                9.verticalSpace,
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
                  // decoration: BoxDecoration(
                  //   color: Color(0xff677369),
                  //   border: Border.all(
                  //     width: 0,
                  //   ),
                  //   borderRadius: BorderRadius.circular(31.r),
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: Color(0xffB6FF6F),
                  //       spreadRadius: 0,
                  //       blurRadius: 7,
                  //       offset: Offset(0, 1), // changes position of shadow
                  //     ),
                  //   ],
                  // ),
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
                      // focusedBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(
                      //       width: 2.w,
                      //       color: Color(0xffB6FF6F),
                      //     ),
                      //     borderRadius: BorderRadius.circular(31.r)),
                      // enabledBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(31.r),
                      //     borderSide: BorderSide(
                      //         color: Color(0xffB6FF6F), width: 2.w)),
                      labelText: "Location",
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 30.0),
                      labelStyle: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                          fontFamily: "Sora Thin"),
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(31.r),
                      //   borderSide: BorderSide(
                      //     width: 1.w,
                      //     style: BorderStyle.none,
                      //   ),
                      // ),
                      // filled: true,
                      // fillColor: Color(0xff687a6c).withOpacity(0.5),
                    ),
                  ),
                ),
                9.verticalSpace,
                createprofiletextfield("Username"),
                23.verticalSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Checkbox(
                          focusColor: Color(0xffB6FF6F),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          side: BorderSide(color: Color(0xffB6FF6F)),
                          checkColor: Color(0xffB6FF6F),
                          // fillColor: MaterialStateProperty
                          //     .resolveWith(getColor),
                          // focusColor: Colors.transparent,
                          activeColor: Color(0xff677369),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                      Text(
                        "Username",
                        style: TextStyle(fontSize: 15.sp, color: Colors.white),
                      ),
                      Checkbox(
                          focusColor: Color(0xffB6FF6F),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          side: BorderSide(color: Color(0xffB6FF6F)),
                          checkColor: Color(0xffB6FF6F),
                          // fillColor: MaterialStateProperty
                          //     .resolveWith(getColor),
                          // focusColor: Colors.transparent,
                          activeColor: Color(0xff677369),
                          value: isChecked1,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked1 = value!;
                            });
                          }),
                      Text(
                        "Username",
                        style: TextStyle(fontSize: 15.sp, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                27.verticalSpace,
                GestureDetector(
                  onTap: () {
                    Get.to(() => createprofilecontinue());
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
                        "Create Profile",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: "Sora, ExtraBold",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                // Container(
                //   width: 362.w,
                //   height: 62.h,
                //   decoration: BoxDecoration(
                //     // gradient: kprimary,
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.grey.withOpacity(0.5),
                //         offset: Offset(0, 0),
                //       ),
                //     ],
                //     border: Border.all(color: Color(0xffB6FF6F), width: 2.sp),
                //     borderRadius: BorderRadius.circular(50.r),
                //   ),
                //   child: TextFormField(
                //     decoration: InputDecoration(
                //       hintText: "Email Address",
                //       hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                //       prefixIcon: Icon(
                //         Icons.email,
                //         color: Colors.white,
                //       ),
                //       border: InputBorder.none,
                //     ),
                //   ),
                // ),
              ],
            ),
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
      // decoration: BoxDecoration(
      //   color: Color(0xff677369),
      //   border: Border.all(
      //     width: 0,
      //   ),
      //   borderRadius: BorderRadius.circular(31.r),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Color(0xffB6FF6F),
      //       spreadRadius: 0,
      //       blurRadius: 7,
      //       offset: Offset(0, 1), // changes position of shadow
      //     ),
      //   ],
      // ),
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
          // decoration: InputDecoration(
          // focusedBorder: OutlineInputBorder(
          //     borderSide: BorderSide(
          //       width: 2.w,
          //       color: Color(0xffB6FF6F),
          //     ),
          //     borderRadius: BorderRadius.circular(31.r)),
          // enabledBorder: OutlineInputBorder(
          //     borderRadius: BorderRadius.circular(31.r),
          //     borderSide: BorderSide(color: Color(0xffB6FF6F), width: 2.w)

          labelText: txt,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 30.0),
          labelStyle: TextStyle(
              fontSize: 18.sp, color: Colors.white, fontFamily: "Sora Thin"),
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(31.r),
          //   borderSide: BorderSide(
          //     width: 1.w,
          //     style: BorderStyle.none,
          //   ),
          // ),
          // filled: true,
          // fillColor: Color(0xff687a6c).withOpacity(0.5)
        ),
      ),
    );
  }
}
