import 'package:edyble_app/comments.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rate/rate.dart';

class shopreview extends StatefulWidget {
  const shopreview({super.key});

  @override
  State<shopreview> createState() => _shopreviewState();
}

class _shopreviewState extends State<shopreview> {
  bool alllbool = true;
  bool creditbool = true;
  bool debitbool = false;
  var _selectedButton = 1;
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
            "Reviews",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              creditbool = true;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                'Shop Reviews',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Sora, Regular",
                                  color: creditbool == true
                                      ? Color(0xffB6FF6F)
                                      : Color(0xffB6FF6F).withOpacity(0.20),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: Get.width * 0.45,
                                color: creditbool
                                    ? Color(0xffB6FF6F)
                                    : Color(0xffB6FF6F).withOpacity(0.20),
                                height: creditbool == true ? 3 : 1,
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            setState(() {
                              creditbool = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                'Product Reviews',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Segoe UI, Semibold",
                                  color: creditbool == false
                                      ? Color(0xffB6FF6F)
                                      : Color(0xffB6FF6F).withOpacity(0.20),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: Get.width * 0.45,
                                color: creditbool == false
                                    ? Color(0xffB6FF6F)
                                    : Color(0xffB6FF6F).withOpacity(0.20),
                                height: creditbool == false ? 3 : 1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    creditbool == true
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 7),
                            child: Container(
                              width: double.infinity,
                              height: 0.8.sh,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    24.verticalSpace,
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                          fontFamily: "Poppins, SemiBold",
                                          fontSize: 38.sp,
                                          color: Color(0xffE6E9E6)),
                                    ),
                                    RatingBar.builder(
                                      itemSize: 20,
                                      unratedColor:
                                          Colors.grey.withOpacity(0.5),
                                      initialRating: 1,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star_purple500_outlined,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    10.verticalSpace,
                                    Text(
                                      "130 Reviews",
                                      style: TextStyle(
                                        fontFamily: "Poppins, SemiBold",
                                        fontSize: 15.sp,
                                        color: Color(0xffE6E9E6),
                                      ),
                                    ),
                                    35.verticalSpace,
                                    Container(
                                      width: double.infinity,
                                      height: 0.7.sh,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: ListView.builder(
                                              itemCount: 10,
                                              itemBuilder: (context, i) {
                                                return shopreviewwidget(
                                                  OnTap: () {
                                                    Get.to(
                                                        () => commentsscreen());
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 7),
                            child: Container(
                              width: double.infinity,
                              height: 0.8.sh,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    30.verticalSpace,
                                    Container(
                                      width: 95.w,
                                      height: 95.h,
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
                                            offset: Offset(0,
                                                1), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Image.asset(
                                        "assets/images/Ellipse 41.png",
                                      ),
                                    ),
                                    15.verticalSpace,
                                    Text(
                                      "Canadagummies",
                                      style: TextStyle(
                                          fontFamily: "Poppins, SemiBold",
                                          fontSize: 25.sp,
                                          color: Color(0xffB6FF6F)),
                                    ),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                          fontFamily: "Poppins, SemiBold",
                                          fontSize: 38.sp,
                                          color: Color(0xffE6E9E6)),
                                    ),
                                    RatingBar.builder(
                                      itemSize: 20,
                                      unratedColor:
                                          Colors.grey.withOpacity(0.5),
                                      initialRating: 1,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star_purple500_outlined,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    10.verticalSpace,
                                    Text(
                                      "130 Reviews",
                                      style: TextStyle(
                                        fontFamily: "Poppins, SemiBold",
                                        fontSize: 15.sp,
                                        color: Color(0xffE6E9E6),
                                      ),
                                    ),
                                    25.verticalSpace,
                                    Container(
                                      width: double.infinity,
                                      height: 0.7.sh,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: ListView.builder(
                                              itemCount: 10,
                                              itemBuilder: (context, i) {
                                                return shopreviewwidget(
                                                  OnTap: () {
                                                    Get.to(
                                                        () => commentsscreen());
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class shopreviewwidget extends StatelessWidget {
  final OnTap;
  shopreviewwidget({
    this.OnTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        15.verticalSpace,
        Container(
          width: 388.w,
          // height: 100.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Color(0xff7f8a84),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10, top: 5),
                    child: Text(
                      "01/02/2022",
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontFamily: "Poppins, Regular"),
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  18.horizontalSpace,
                  Container(
                    width: 57.w,
                    height: 57.h,
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
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "assets/images/Ellipse 41.png",
                    ),
                  ),
                  18.horizontalSpace,
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "John Doe",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontFamily: "Poppins, SemiBold",
                                  color: Colors.white),
                            ),
                            8.horizontalSpace,
                            Rate(
                              iconSize: 15,
                              color: Colors.white,
                              allowHalf: true,
                              allowClear: true,
                              initialValue: 5,
                              readOnly: true,
                              onChange: (value) => print(value),
                            ),
                          ],
                        ),
                        Container(
                          width: 204.w,
                          child: Text(
                            "Lorem ipsum dolor sit amet consectetur adipiscing elit duis donec pretium potenti",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white,
                                fontFamily: "Poppins, Regular"),
                          ),
                        ),
                        10.verticalSpace,
                        GestureDetector(
                          onTap: OnTap,
                          child: Text(
                            "2 Comments",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 12.sp,
                              color: Colors.white,
                              fontFamily: "Poppins, ExtraLight",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
