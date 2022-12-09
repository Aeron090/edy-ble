import 'package:dotted_border/dotted_border.dart';
import 'package:edyble_app/flow2/Adson.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class selecttempelate extends StatefulWidget {
  const selecttempelate({super.key});

  @override
  State<selecttempelate> createState() => _selecttempelateState();
}

class _selecttempelateState extends State<selecttempelate> {
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/backgroundedyble.jpg"),
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
            "Select Template",
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
                height: 160.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.r),
                    color: Color(0xff687067).withOpacity(0.65)),
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(31.r),
                  dashPattern: [8, 8],
                  color: Color(0xffB6FF6F),
                  strokeWidth: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 167.w,
                          height: 93.h,
                          child: Text(
                            "50% OFF Lorem Ipsum Product",
                            style: TextStyle(
                                fontSize: 25.sp,
                                fontFamily: "Sora, Bold",
                                color: Color(0xffDEE0DD)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              500.verticalSpace,
              GestureDetector(
                onTap: () {
                  Get.to(() => addsonscreen());
                },
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
                      "Submit",
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.black,
                          fontFamily: "Sora, ExtraBold"),
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
