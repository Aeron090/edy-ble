import 'package:edyble_app/Home/profile.dart';
import 'package:edyble_app/Home/submitreview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rate/rate.dart';

class ratingscreen extends StatefulWidget {
  const ratingscreen({super.key});

  @override
  State<ratingscreen> createState() => _ratingscreenState();
}

class _ratingscreenState extends State<ratingscreen> {
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
              Get.to(() => profilescreen());
            },
            child: Image.asset(
              "assets/images/Icon ionic-ios-arrow-back.png",
              scale: 3.5,
            ),
          ),
          title: Text(
            "Greenside Recreational",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(children: [
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
                      blurRadius: 13,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.asset(
                  "assets/images/Ellipse 41.png",
                ),
              ),
              10.verticalSpace,
              Text(
                "Canadagummies",
                style: TextStyle(
                    fontSize: 22.sp,
                    color: Color(0xffB6FF6F),
                    fontFamily: "Sora, ExtraBold"),
              ),
              30.verticalSpace,
              Text(
                "Rating",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontFamily: "Sora, Bold"),
              ),
              11.verticalSpace,
              RatingBar.builder(
                itemSize: 25,
                unratedColor: Colors.grey.withOpacity(0.5),
                initialRating: 1,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star_purple500_outlined,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              20.verticalSpace,
              Container(
                width: 388.w,
                height: 250.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  // border: Border.all(
                  //   width: 2.w,
                  //   color: Color(0xffB6FF6F),
                  // ),
                  color: Colors.white.withOpacity(0.5),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Color(0xffB6FF6F).withOpacity(0.05),
                  //     spreadRadius: 0,
                  //     blurRadius: 7,
                  //     offset: Offset(0, 1), // changes position of shadow
                  //   ),
                  // ],
                ),
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
                      hintText: "Write a review...",
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 18.0, horizontal: 30.0),
                      hintStyle: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                          fontFamily: "Sora Thin"),
                      fillColor: Color(0xff687a6c).withOpacity(0.5)),
                ),
              ),
              200.verticalSpace,
              GestureDetector(
                onTap: () {
                  Get.to(() => submitreview());
                },
                child: Container(
                  width: 387.w,
                  height: 63.h,
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
                        offset: Offset(0, 1), // changes position of shadow
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
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
