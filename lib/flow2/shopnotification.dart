import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class shopnotification extends StatefulWidget {
  const shopnotification({super.key});

  @override
  State<shopnotification> createState() => _shopnotificationState();
}

class _shopnotificationState extends State<shopnotification> {
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/backgroundedyble.jpg"),
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
            "Notifications",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  20.verticalSpace,
                  Container(
                    width: double.infinity,
                    height: 0.9.sh,
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (context, i) {
                              return shopnotificationwidget();
                            },
                          ),
                        ),
                        150.verticalSpace
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class shopnotificationwidget extends StatelessWidget {
  const shopnotificationwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              8.horizontalSpace,
              Container(
                width: 63.w,
                height: 63.h,
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
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.asset(
                  "assets/images/Ellipse 41.png",
                ),
              ),
              10.horizontalSpace,
              Text(
                "BOBBY42 Checked in @ NECTAR Main St.",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.white,
                    fontFamily: "Sora, ExtraLight"),
              ),
            ],
          ),
          15.verticalSpace,
          Container(
            width: 387.w,
            height: 1.h,
            color: Color(0xffB6FF6F).withOpacity(0.20),
          ),
          10.verticalSpace,
        ],
      ),
    );
  }
}
