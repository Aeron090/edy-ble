import 'package:edyble_app/Home/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rate/rate.dart';

class submitreview extends StatefulWidget {
  const submitreview({super.key});

  @override
  State<submitreview> createState() => _submitreviewState();
}

class _submitreviewState extends State<submitreview> {
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
              3.verticalSpace,
              Container(
                width: 282.w,
                height: 36.h,
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur, cursus adipiscing elit convallis.",
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white.withOpacity(0.5),
                      fontFamily: "Sora, Thin"),
                  textAlign: TextAlign.center,
                ),
              ),
              8.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "4.5",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: Colors.white,
                                    fontFamily: "Sora, SemiBold"),
                              ),
                              7.horizontalSpace,
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 15,
                              )
                            ],
                          ),
                          Text(
                            "Rating",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white.withOpacity(0.5),
                                fontFamily: "Sora, Thin"),
                          )
                        ],
                      ),
                    ],
                  ),
                  50.horizontalSpace,
                  Padding(
                    padding: EdgeInsets.only(bottom: 1),
                    child: Column(
                      children: [
                        RatingBar.builder(
                          itemSize: 15,
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
                        4.verticalSpace,
                        Text(
                          "130 Reviews",
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Colors.white.withOpacity(0.5),
                              fontFamily: "Sora, Thin"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              20.verticalSpace,
              Column(
                children: [
                  reviewswidget(),
                  reviewswidget(),
                  reviewswidget(),
                  reviewswidget(),
                  reviewswidget(),
                  reviewswidget(),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class reviewswidget extends StatelessWidget {
  const reviewswidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            width: 387.w,
            height: 1.h,
            color: Color(0xffB6FF6F).withOpacity(0.5),
          ),
          15.verticalSpace,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 62.w,
                height: 62.h,
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
              13.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "John Doe",
                        style: TextStyle(
                            fontFamily: "Sora, Bold",
                            fontSize: 17.sp,
                            color: Colors.white),
                      ),
                      Rate(
                        iconSize: 12,
                        color: Color(0xffFFCB1E),
                        allowHalf: true,
                        allowClear: true,
                        initialValue: 5,
                        readOnly: true,
                        onChange: (value) => print(value),
                      ),
                    ],
                  ),
                  3.verticalSpace,
                  Container(
                    width: 278.w,
                    height: 54.h,
                    child: Text(
                      "Lorem ipsum dolor sit amet consectetur, cursus adipiscing elit convallis.",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "Sora, ExtraLight",
                          color: Colors.white.withOpacity(0.5)),
                    ),
                  )
                ],
              )
            ],
          ),
          5.verticalSpace,
          Container(
            width: 387.w,
            height: 1.h,
            color: Color(0xffB6FF6F).withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
