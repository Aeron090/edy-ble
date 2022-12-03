import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class textformfield extends StatelessWidget {
  String? hintTextt;
  String? prefixIconimage;
  double? containerwidth;

  textformfield({
    required this.hintTextt,
    required this.prefixIconimage,
    required this.containerwidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerwidth,
      height: 62.h,
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          fillColor: Color(0xff677369).withOpacity(0.5),
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2.w,
                color: Color(0xffB6FF6F),
              ),
              borderRadius: BorderRadius.circular(31.r)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(31.r),
              borderSide: BorderSide(color: Color(0xffB6FF6F), width: 2.w)),
          prefixIcon: Container(
            width: 15.w,
            height: 15.h,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(
                "$prefixIconimage",
                scale: 4,
                alignment: Alignment.center,
              ),
            ),
          ),
          hintText: hintTextt,
          hintStyle: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey.withOpacity(0.75),
              fontFamily: "Sora Thin"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(31.r),
            borderSide: BorderSide(
              width: 1.w,
              style: BorderStyle.none,
            ),
          ),
          // filled: true,
          // fillColor: Color(0xff687a6c).withOpacity(0.5)
        ),
      ),
    );
  }
}
