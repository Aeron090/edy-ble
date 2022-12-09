import 'package:edyble_app/Home/invitefriends.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class createprofilecontinue extends StatefulWidget {
  const createprofilecontinue({super.key});

  @override
  State<createprofilecontinue> createState() => _createprofilecontinueState();
}

class _createprofilecontinueState extends State<createprofilecontinue> {
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
        body: Container(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: Column(children: [
              Image.asset(
                "assets/images/PNG-01.png",
                scale: 2,
              ),
              Container(
                width: 402.w,
                child: Text(
                  "“Everyone needs a friend like Edy to recommend the best treats!”",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22.sp, color: Colors.white),
                ),
              ),
              316.verticalSpace,
              GestureDetector(
                onTap: () {
                  Get.to(() => invitefriends());
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
                      "Continue",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: "Sora, ExtraBold",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
