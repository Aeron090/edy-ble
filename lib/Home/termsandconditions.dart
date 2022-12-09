import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'drawersettings.dart';

class termsandconditions extends StatefulWidget {
  const termsandconditions({super.key});

  @override
  State<termsandconditions> createState() => _termsandconditionsState();
}

class _termsandconditionsState extends State<termsandconditions> {
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
            "Terms & Conditions",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 388.w,
                  height: 823.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Color(0xff646962).withOpacity(0.75),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet consectetur adipiscing elit odio, mattis quam tortor taciti aenean luctus nullam enim, dui praesent ad dapibus tempus natoque a. Rhoncus praesent massa torquent malesuada maecenas arcu curae, porta pulvinar potenti at mus sem, vel purus proin eleifend nisi dictum. Egestas tortor blandit vestibulum tempus dignissim cras placerat, ligula ridiculus sollicitudin interdum quisque facilisis, suscipit tempor justo tristique et mattis.",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: "Poppins, Regular",
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text:
                                    "\n\nNisl imperdiet donec nascetur feugiat massa vehicula elementum nullam purus morbi, sagittis et penatibus taciti vitae lobortis facilisis maecenas gravida, venenatis sed pellentesque suspendisse sociis magna class nibh volutpat. Sodales leo arcu ornare eget torquent dictumst, id morbi fringilla ultricies suscipit, nulla sapien a aliquet tempor. Tristique non eros a felis quam convallis nascetur montes auctor hendrerit, mollis metus sodales ligula magnis condimentum et arcu nam. ",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: "Poppins, Regular",
                                ),
                              ),
                              TextSpan(
                                text:
                                    "\n\nLorem ipsum dolor sit amet consectetur adipiscing elit odio, mattis quam tortor taciti aenean luctus nullam enim, dui praesent ad dapibus tempus natoque a. Rhoncus praesent massa torquent malesuada maecenas arcu curae, porta pulvinar potenti at mus sem, vel purus proin eleifend nisi dictum.",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: "Poppins, Regular",
                                ),
                              ),
                              TextSpan(
                                text:
                                    "\n\nLorem ipsum dolor sit amet consectetur adipiscing elit odio, mattis quam tortor taciti aenean luctus nullam enim, dui praesent ad dapibus tempus natoque a. Rhoncus praesent massa torquent malesuada maecenas arcu curae, porta pulvinar potenti at mus sem, vel purus proin eleifend nisi dictum Lorem ipsum dolor sit amet consectetur adipiscing elit odio, mattis quam tortor taciti aenean luctus nullam enim.",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: "Poppins, Regular",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                20.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
