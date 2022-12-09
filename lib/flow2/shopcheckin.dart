import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

import '../Home/bottomnavbar.dart';
import '../Home/controller.dart';

class shopscheckin extends StatefulWidget {
  const shopscheckin({super.key});

  @override
  State<shopscheckin> createState() => _shopscheckinState();
}

class _shopscheckinState extends State<shopscheckin> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        initialDatePickerMode: DatePickerMode.day,
        currentDate: DateTime.now(),
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff1B663F),
            Color(0xff000000),
          ],
        ),
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
            "Shop Check-Ins",
            style: TextStyle(fontSize: 20.sp, color: Color(0xffB6FF6F)),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      50.verticalSpace,
                      Container(
                        width: 102.w,
                        height: 37.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(37.r),
                          color: Color(0xffB6FF6F),
                          border: Border.all(width: 1.w, color: Colors.black),
                        ),
                        child: TextFormField(
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(
                                    2000), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101));

                            if (pickedDate != null) {
                              print(
                                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                              String formattedDate =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                              print(
                                  formattedDate); //formatted date output using intl package =>  2021-03-16
                              //you can implement different kind of Date Format here according to your requirement

                              setState(() {
                                var _textEditingController;
                                _textEditingController.text =
                                    formattedDate; //set output date to TextField value.
                              });
                            } else {
                              print("Date is not selected");
                            }
                          },
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.black,
                          ),
                          // keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              disabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              border: InputBorder.none,
                              hintText: "$selectedDate",
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 9, vertical: 13.5),
                              hintStyle: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.black,
                                  fontFamily: "Sora, Regular"),
                              fillColor: Color(0xff687a6c).withOpacity(0.5)),
                        ),
                      ),
                      10.horizontalSpace,
                      Container(
                        width: 86.w,
                        height: 37.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(37.r),
                          color: Color(0xffB6FF6F),
                          border: Border.all(width: 1.w, color: Colors.black),
                        ),
                        child: TextFormField(
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            disabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            border: InputBorder.none,
                            hintText: "Day",
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 13.5, horizontal: 5),
                            hintStyle: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                                fontFamily: "Sora, Regular"),
                            suffixIcon: Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                25.verticalSpace,
                shopcheckinwidget(),
                15.verticalSpace,
                shopcheckinwidget(),
                15.verticalSpace,
                shopcheckinwidget(),
                15.verticalSpace,
                shopcheckinwidget(),
                15.verticalSpace,
                shopcheckinwidget(),
                15.verticalSpace,
                shopcheckinwidget(),
                15.verticalSpace,
                shopcheckinwidget(),
                15.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class shopcheckinwidget extends StatelessWidget {
  const shopcheckinwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 388.w,
      height: 98.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Color(0xff8b9c93),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.30),
            spreadRadius: 30,
            blurRadius: 0,
            offset: Offset(0, 23), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              Text(
                "John Smith",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: "Poppins, SemiBold",
                    color: Colors.white),
              )
            ],
          ),
          Container(
            width: 1.w,
            height: 80.h,
            color: Colors.grey.withOpacity(0.9),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 39.w,
                  height: 39.h,
                  child: Text(
                    "Total Visits",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: "Poppins, SemiBold",
                        color: Colors.white),
                  )),
              Text(
                "02",
                style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: "Poppins, Light",
                    color: Colors.white),
              )
            ],
          ),
          Container(
            width: 1.w,
            height: 80.h,
            color: Colors.grey.withOpacity(0.9),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 13),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 39.w,
                    height: 20.h,
                    child: Text(
                      "Time",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "Poppins, SemiBold",
                          color: Colors.white),
                    )),
                Text(
                  "12:05 AM",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: "Poppins, Light",
                      color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            width: 1.w,
            height: 80.h,
            color: Colors.grey.withOpacity(0.9),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 13),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 39.w,
                    height: 20.h,
                    child: Text(
                      "Date",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: "Poppins, SemiBold",
                          color: Colors.white),
                    )),
                Text(
                  "01/01/2022",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: "Poppins, Light",
                      color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
