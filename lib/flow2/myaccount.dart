import 'package:edyble_app/Home/bottomnavbar.dart';
import 'package:edyble_app/flow2/Adson.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:group_radio_button/group_radio_button.dart';

class myaccount extends StatefulWidget {
  const myaccount({super.key});

  @override
  State<myaccount> createState() => _myaccountState();
}

class _myaccountState extends State<myaccount> {
  bool switchValue = true;
  bool _singleValue = true;
  bool _value = false;
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
            "My Account",
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
                  height: 62.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Color(0xff7d7e7e),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _value = !_value;
                            });
                          },
                          child: Container(
                            height: 17,
                            width: 17,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: _value
                                        ? Color(0xff303030)
                                        : Colors.white,
                                    width: 2)),
                            child: Icon(
                              Icons.circle_rounded,
                              color: _value ? Color(0xff303030) : Colors.white,
                              size: 10,
                            ),
                          ),
                        ),
                        19.horizontalSpace,
                        Image.asset(
                          "assets/images/Icon awesome-credit-card.png",
                          scale: 4,
                        ),
                        11.horizontalSpace,
                        Container(
                          width: 179.w,
                          child: Text(
                            "456751******4566",
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: "Inter, Regular",
                                color: Colors.white),
                          ),
                        ),
                        71.horizontalSpace,
                        Image.asset(
                          "assets/images/Icon material-delete-forever.png",
                          scale: 4,
                        )
                      ],
                    ),
                  ),
                ),
                5.verticalSpace,
                Container(
                  width: 388.w,
                  height: 62.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Color(0xff7d7e7e),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _value = !_value;
                            });
                          },
                          child: Container(
                            height: 17,
                            width: 17,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: _value
                                        ? Color(0xff303030)
                                        : Colors.white,
                                    width: 2)),
                            child: Icon(
                              Icons.circle_rounded,
                              color: _value ? Color(0xff303030) : Colors.white,
                              size: 10,
                            ),
                          ),
                        ),
                        19.horizontalSpace,
                        Image.asset(
                          "assets/images/Icon awesome-credit-card.png",
                          scale: 4,
                        ),
                        11.horizontalSpace,
                        Container(
                          width: 179.w,
                          child: Text(
                            "456751******4566",
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: "Inter, Regular",
                                color: Colors.white),
                          ),
                        ),
                        71.horizontalSpace,
                      ],
                    ),
                  ),
                ),
                30.verticalSpace,
                Text(
                  "Add Card",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: "Poppins, Bold",
                      color: Colors.white),
                ),
                18.verticalSpace,
                myaccounttextfield(
                  containerheight: 56,
                  containerwidth: 388,
                  containerhinttext: "Card Holder Name",
                ),
                10.verticalSpace,
                myaccounttextfield(
                    containerhinttext: "Card Number",
                    containerheight: 56,
                    containerwidth: 388),
                12.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Exp Date",
                            style: TextStyle(
                                fontSize: 17.sp,
                                fontFamily: "Poppins, Regular",
                                color: Colors.white),
                          ),
                          5.verticalSpace,
                          myaccounttextfield(
                              containerhinttext: "10 / 25",
                              containerheight: 55,
                              containerwidth: 183)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CVV",
                            style: TextStyle(
                                fontSize: 17.sp,
                                fontFamily: "Poppins, Regular",
                                color: Colors.white),
                          ),
                          5.verticalSpace,
                          myaccounttextfield(
                              containerhinttext: "",
                              containerheight: 55,
                              containerwidth: 183)
                        ],
                      )
                    ],
                  ),
                ),
                10.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Save card details",
                        style: TextStyle(
                            fontFamily: "Poppins, Medium",
                            fontSize: 17.sp,
                            color: Colors.white),
                      ),
                      Container(
                        width: 34.w,
                        height: 15.h,
                        child: Transform.scale(
                          transformHitTests: false,
                          scale: .6,
                          child: CupertinoSwitch(
                            thumbColor: Colors.black,

                            trackColor: Colors.white,
                            // This bool value toggles the switch.
                            value: switchValue,
                            activeColor: Color(0xffB6FF6F),

                            onChanged: (bool? value) {
                              // This is called when the user toggles the switch.
                              setState(() {
                                switchValue = value ?? false;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                250.verticalSpace,
                GestureDetector(
                  onTap: () {
                    Get.to(() => navbar());
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
                          blurRadius: 6,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Save",
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

class myaccounttextfield extends StatelessWidget {
  double containerwidth;
  double containerheight;
  String containerhinttext;
  myaccounttextfield({
    required this.containerhinttext,
    required this.containerheight,
    required this.containerwidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerwidth.w,
      height: containerheight.h,
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
            labelText: containerhinttext,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
            hintStyle: TextStyle(
                fontSize: 18.sp, color: Colors.white, fontFamily: "Sora Thin"),
            fillColor: Color(0xff687a6c).withOpacity(0.5)),
      ),
    );
  }
}
