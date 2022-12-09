import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class editshopprofile extends StatefulWidget {
  const editshopprofile({super.key});

  @override
  State<editshopprofile> createState() => _editshopprofileState();
}

class _editshopprofileState extends State<editshopprofile> {
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
            "Create Shop Profile",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 143.w,
                      height: 143.h,
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
                      bottom: -15,
                      left: 50,
                      child: Container(
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffB6FF6F)),
                        child: Center(
                          child: Image.asset(
                            "assets/images/Icon-camera.png",
                            scale: 3.8,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                40.verticalSpace,
                createprofilefield(
                  fieldtext: "Shop Name",
                  containerwidth: 362.w,
                ),
                13.verticalSpace,
                Container(
                  width: 362.w,
                  height: 62.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(31.r),
                    border: Border.all(width: 2.w, color: Color(0xffB6FF6F)),
                    color: Colors.white.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffB6FF6F).withOpacity(0.05),
                        spreadRadius: 0,
                        blurRadius: 7,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        suffixIcon: Image.asset(
                          "assets/images/material-my-location.png",
                          scale: 4.5,
                          color: Colors.black,
                        ),
                        disabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        border: InputBorder.none,
                        labelText: "Location",
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 30.0),
                        labelStyle: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.white,
                            fontFamily: "Sora Thin"),
                        fillColor: Color(0xff687a6c).withOpacity(0.5)),
                  ),
                ),
                13.verticalSpace,
                createprofilefield(
                  fieldtext: "Phone Number",
                  containerwidth: 362.w,
                ),
                13.verticalSpace,
                createprofilefield(
                  fieldtext: "Website Link",
                  containerwidth: 362.w,
                ),
                25.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    loremrowtextfield(),
                    loremrowtextfield(),
                    loremrowtextfield(),
                  ],
                ),
                20.verticalSpace,
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    width: 362.w,
                    height: 62.h,
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
                          blurRadius: 13,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Create Profile",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: "Sora, ExtraBold",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
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

class loremrowtextfield extends StatelessWidget {
  const loremrowtextfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        width: 96.w,
        height: 55.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(31.r),
          border: Border.all(width: 2.w, color: Color(0xffB6FF6F)),
          color: Colors.white.withOpacity(0.4),
          boxShadow: [
            BoxShadow(
              color: Color(0xffB6FF6F).withOpacity(0.05),
              spreadRadius: 0,
              blurRadius: 7,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
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
              labelText: "Lorem",
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
              labelStyle: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.white,
                  fontFamily: "Sora Thin"),
              fillColor: Color(0xff687a6c).withOpacity(0.5)),
        ),
      ),
      Positioned(
        top: -10,
        right: -5,
        child: Container(
          width: 30.w,
          height: 30.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffB6FF6F),
          ),
          child: Icon(
            Icons.close_rounded,
            size: 20,
            color: Colors.black,
          ),
        ),
      )
    ]);
  }
}

class createprofilefield extends StatelessWidget {
  String fieldtext;
  double containerwidth;
  createprofilefield({
    required this.fieldtext,
    required this.containerwidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 362.w,
      height: 62.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(31.r),
        border: Border.all(width: 2.w, color: Color(0xffB6FF6F)),
        color: Colors.white.withOpacity(0.4),
        boxShadow: [
          BoxShadow(
            color: Color(0xffB6FF6F).withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 7,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
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
            labelText: fieldtext,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30.0),
            labelStyle: TextStyle(
                fontSize: 18.sp, color: Colors.white, fontFamily: "Sora Thin"),
            fillColor: Color(0xff687a6c).withOpacity(0.5)),
      ),
    );
  }
}
