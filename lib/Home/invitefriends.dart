import 'package:edyble_app/Home/Suggestion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class invitefriends extends StatefulWidget {
  const invitefriends({super.key});

  @override
  State<invitefriends> createState() => _invitefriendsState();
}

class _invitefriendsState extends State<invitefriends> {
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
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          floatingActionButton: Column(
            children: [
              SizedBox(
                height: Get.height * 0.85,
              ),
              Container(
                width: 362.w,
                height: 62.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(31.r),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff00FFA3),
                      spreadRadius: 0,
                      blurRadius: 6,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: FloatingActionButton.extended(
                  onPressed: () {
                    Get.to(() => suggestionfriends());
                  },
                  label: Text(
                    'Skip',
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.black,
                        fontFamily: "Sora, ExtraBold"),
                  ),
                  // icon: Icon(Icons.thumb_up),
                  backgroundColor: Color(0xffB6FF6F),
                ),
              ),
              // SizedBox(
              //   height: 10,
              // )
            ],
          ),
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
              "Invite Friends",
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Roww("assets/images/Ellipse 13.png", "Angelina Cox"),
                      SizedBox(
                        height: 10.h,
                      ),
                      div(),
                      Roww("assets/images/Ellipse 8.png", "Natasha"),
                      SizedBox(
                        height: 10.h,
                      ),
                      div(),
                      Roww("assets/images/Ellipse 9.png", "Muscle Man"),
                      SizedBox(
                        height: 10.h,
                      ),
                      div(),
                      Roww("assets/images/Ellipse 10.png", "Adam Gill"),
                      SizedBox(
                        height: 10.h,
                      ),
                      div(),
                      Roww("assets/images/Ellipse 11.png", "James"),
                      SizedBox(
                        height: 10.h,
                      ),
                      div(),
                      Roww("assets/images/Ellipse 12.png", "Charlie"),
                      SizedBox(
                        height: 10.h,
                      ),
                      div(),
                      Roww("assets/images/Ellipse 13.png", "Angelina Cox"),
                      SizedBox(
                        height: 10.h,
                      ),
                      div(),
                      Roww("assets/images/Ellipse 11.png", "James"),
                      SizedBox(
                        height: 10.h,
                      ),
                      div(),
                      Roww("assets/images/Ellipse 11.png", "James"),
                    ],
                  ),
                ),
              ))),
    );
  }

  Roww(
    img,
    txt,
  ) {
    return Row(
      children: [
        Image.asset(
          img,
          scale: 4.5,
        ),
        Container(
          width: 100.w,
          child: Text(
            txt,
            style: TextStyle(
                fontSize: 16.sp,
                color: Colors.white,
                fontFamily: "Sora, ExtraLight"),
          ),
        ),
        80.horizontalSpace,

        Container(
          width: 123.w,
          height: 48.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(31.r),
            color: Color(0xffB6FF6F),
          ),
          child: Center(
            child: Text(
              "Invite",
              style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                  fontFamily: "Sora, Regular"),
            ),
          ),
        )
        // 85.horizontalSpace,
      ],
    );
  }

  div() {
    return Container(
      width: 380.w,
      height: 1.h,
      color: Color(0xff707070),
    );
  }
}
