import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rate/rate.dart';

class TopRatedProducts extends StatefulWidget {
  const TopRatedProducts({super.key});

  @override
  State<TopRatedProducts> createState() => _TopRatedProductsState();
}

class _TopRatedProductsState extends State<TopRatedProducts> {
  var array = [
    "Canadagummies",
    "Hard Candy",
    "Cookies",
    "Brownies",
    "Pizza",
    "Chips",
    "Brownies",
    "Brownies",
    "Chips",
    "Cookies",
  ];
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
            "Top Rated Products",
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
                  width: double.infinity,
                  height: 0.9.sh,
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: array.length,
                          itemBuilder: (context, i) {
                            return topratedproduct(
                              text: array[i],
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
    );
  }
}

class topratedproduct extends StatelessWidget {
  final text;

  const topratedproduct({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          10.verticalSpace,
          Row(
            children: [
              Container(
                width: 73.w,
                height: 73.h,
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
              10.horizontalSpace,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontFamily: "Segoe UI, Bold"),
                      ),
                      5.horizontalSpace,
                      Text(
                        "4.5",
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.white,
                            fontFamily: "Segoe UI, Bold"),
                      ),
                      5.horizontalSpace,
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 10,
                      ),
                    ],
                  ),
                  7.verticalSpace,
                  Container(
                    width: 267.w,
                    child: Text(
                      "Lorem ipsum dolor sit amet consectetur, cursus adipiscing elit convallis.",
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: "Segoe UI, Regular",
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ],
          ),
          20.verticalSpace,
          Container(
            width: 378.w,
            height: 1,
            color: Colors.white.withOpacity(0.25),
          )
        ],
      ),
    );
  }
}
