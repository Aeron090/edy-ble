import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rate/rate.dart';

class friendsrecommendation extends StatefulWidget {
  const friendsrecommendation({super.key});

  @override
  State<friendsrecommendation> createState() => _friendsrecommendationState();
}

class _friendsrecommendationState extends State<friendsrecommendation> {
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
            "Friends Reccomendations",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(children: [
                friendsrecomwidget(),
                20.verticalSpace,
                friendsrecomwidget(),
                20.verticalSpace,
                friendsrecomwidget(),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

class friendsrecomwidget extends StatelessWidget {
  const friendsrecomwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 185.w,
              height: 229.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(31.r),
                color: Colors.white.withOpacity(0.3),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000).withOpacity(0.05),
                    spreadRadius: 0,
                    blurRadius: 42,
                    offset: Offset(0, 23), // changes position of shadow
                  ),
                ],
              ),
            ),
            25.verticalSpace,
            RichText(
              text: TextSpan(
                text: "Mel K.",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontFamily: "Sora, ExtraBold"),
                children: <TextSpan>[
                  TextSpan(
                      text: "Highly EDIBLE",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white.withOpacity(0.5),
                          fontFamily: "Sora, Thin"))
                ],
              ),
            ),
            Text(
              "Organic Fruity Bears",
              style: TextStyle(
                  fontSize: 14.sp, color: Colors.white.withOpacity(0.25)),
            ),
            Rate(
              iconSize: 24,
              color: Color(0xffFFCB1E),
              allowHalf: true,
              allowClear: true,
              initialValue: 5,
              readOnly: true,
              onChange: (value) => print(value),
            ),
            Text(
              "\$99",
              style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: "Sora, ExtraBold",
                  color: Colors.white),
            ),
          ],
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 185.w,
                  height: 229.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.r),
                    color: Colors.white.withOpacity(0.3),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff000000).withOpacity(0.05),
                        spreadRadius: 0,
                        blurRadius: 42,
                        offset: Offset(0, 23), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                25.verticalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Mel K.",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontFamily: "Sora, ExtraBold"),
                        children: <TextSpan>[
                          TextSpan(
                              text: "Highly EDIBLE",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.white.withOpacity(0.5),
                                  fontFamily: "Sora, Thin"))
                        ],
                      ),
                    ),
                    Text(
                      "Organic Fruity Bears",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white.withOpacity(0.25)),
                    ),
                    Rate(
                      iconSize: 24,
                      color: Color(0xffFFCB1E),
                      allowHalf: true,
                      allowClear: true,
                      initialValue: 5,
                      readOnly: true,
                      onChange: (value) => print(value),
                    ),
                    Text(
                      "\$99",
                      style: TextStyle(
                          fontSize: 22.sp,
                          fontFamily: "Sora, ExtraBold",
                          color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
            Positioned(
              top: -35,
              left: -35,
              child: Container(
                child: Image.asset(
                  "assets/images/full-spectrum-cbd-oil.png",
                  fit: BoxFit.cover,
                  scale: 4,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
