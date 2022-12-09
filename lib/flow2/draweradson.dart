import 'package:dotted_border/dotted_border.dart';
import 'package:edyble_app/flow2/pushnotification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class draweraddson extends StatefulWidget {
  const draweraddson({super.key});

  @override
  State<draweraddson> createState() => _draweraddsonState();
}

class _draweraddsonState extends State<draweraddson> {
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
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: Column(children: [
          SizedBox(
            height: Get.height * 0.90,
          ),
          Container(
            width: 392.w,
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
                Get.to(() => pushnotification());
              },
              label: Text(
                'Continue',
                style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                    fontFamily: "Sora, ExtraBold"),
              ),
              // icon: Icon(Icons.thumb_up),
              backgroundColor: Color(0xffB6FF6F),
            ),
          ),
        ]),
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
            "Create a Push Notification",
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
                  width: 362.w,
                  height: 134.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(31.r),
                      color: Color(0xff656c64).withOpacity(0.9)),
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(31.r),
                    dashPattern: [8, 8],
                    color: Color(0xffB6FF6F),
                    strokeWidth: 1,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 23.w,
                                height: 23.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.check,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              20.verticalSpace,
                              Icon(
                                Icons.image,
                                color: Colors.white,
                                size: 35,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                20.verticalSpace,
                pushnotificationwidget(),
                20.verticalSpace,
                pushnotificationwidget(),
                20.verticalSpace,
                pushnotificationwidget(),
                20.verticalSpace,
                pushnotificationwidget(),
                20.verticalSpace,
                pushnotificationwidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class pushnotificationwidget extends StatelessWidget {
  const pushnotificationwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 362.w,
      height: 134.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(31.r),
          color: Color(0xff656c64).withOpacity(0.9)),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(31.r),
        dashPattern: [8, 8],
        color: Color(0xffB6FF6F),
        strokeWidth: 1,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   width: 23.w,
                  //   height: 23.h,
                  //   decoration: BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     color: Colors.white,
                  //   ),
                  //   child: Icon(
                  //     Icons.check,
                  //     size: 20,
                  //   ),
                  // ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  40.verticalSpace,
                  Icon(
                    Icons.image,
                    color: Colors.white,
                    size: 35,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
