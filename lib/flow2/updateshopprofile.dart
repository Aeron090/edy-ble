import 'package:edyble_app/Home/bottomnavbar.dart';
import 'package:edyble_app/flow2/editshopprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Home/controller.dart';
import '../Home/myprofile.dart';

class updateshopprofile extends StatefulWidget {
  const updateshopprofile({super.key});

  @override
  State<updateshopprofile> createState() => _updateshopprofileState();
}

class _updateshopprofileState extends State<updateshopprofile> {
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
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => editshopprofile());
                  },
                  child: Icon(
                    Icons.edit,
                    size: 25,
                    color: Color(0xff0B9771),
                  ),
                ),
              )
            ],
            elevation: 0,
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            toolbarHeight: 100.h,
            leading: GestureDetector(
              onTap: () {
                final bottomcontroller = Get.put(BottomController());
                bottomcontroller.navBarChange(0);
                Get.to(() => navbar());
              },
              child: Image.asset(
                "assets/images/Icon ionic-ios-arrow-back.png",
                scale: 3.5,
              ),
            ),
            title: Text(
              "Shop Profile",
              style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
            ),
            centerTitle: true,
          ),
          body: Container(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
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
                    Positioned(
                      bottom: -10,
                      left: 35,
                      child: Container(
                        width: 27.w,
                        height: 27.h,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.w, color: Color(0xffB6FF6F)),
                            shape: BoxShape.circle,
                            color: Colors.black),
                        child: Center(
                            child: Icon(
                          Icons.privacy_tip,
                          color: Colors.white,
                          size: 12,
                        )),
                      ),
                    ),
                  ],
                ),
                20.verticalSpace,
                Text(
                  "Greenside Recreational",
                  style: TextStyle(
                      fontFamily: "Sora, Bold",
                      fontSize: 24.sp,
                      color: Color(0xffB6FF6F)),
                ),
                15.verticalSpace,
                shopprofilewidget(
                  hinttextfield: "April 12, 2022",
                  labletextfield: "Joined",
                ),
                10.verticalSpace,
                shopprofilewidget(
                  hinttextfield: "8871 NE John Rd, Tacoma WA.",
                  labletextfield: "Address",
                ),
                10.verticalSpace,
                shopprofilewidget(
                  hinttextfield: "+45223644852",
                  labletextfield: "Phone Number",
                ),
                10.verticalSpace,
                shopprofilewidget(
                  hinttextfield: "Lorem Ipsum, Lorem Ipsum, Lorem Ipsum",
                  labletextfield: "Product Categories",
                ),
              ]),
            ),
          )),
    );
  }
}

class shopprofilewidget extends StatelessWidget {
  String hinttextfield;
  String labletextfield;
  shopprofilewidget({
    required this.hinttextfield,
    required this.labletextfield,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 388.w,
      height: 65.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Color(0xff7d7e7e),
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
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          labelText: labletextfield,
          labelStyle: TextStyle(
              fontSize: 20.sp,
              color: Colors.white,
              fontFamily: "Poppins, SemiBold"),
          hintText: hinttextfield,
          hintStyle: TextStyle(
              fontSize: 12.sp,
              color: Colors.white,
              fontFamily: "Poppins, SemiBold"),
          fillColor: Color(0xff687a6c).withOpacity(0.5),
        ),
      ),
    );
  }
}
