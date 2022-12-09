import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class textformfield extends StatelessWidget {
  String? prefixIconimage;
  double? containerwidth;
  var labelText;

  textformfield({
    required this.prefixIconimage,
    required this.containerwidth,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerwidth,
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

      //   borderRadius: BorderRadius.circular(31.r),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Color(0xffB6FF6F).withOpacity(0.5),
      //       spreadRadius: 0,
      //       blurRadius: 7,
      //       offset: Offset(0, 1), // changes position of shadow
      //     ),
      //   ],

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
          // fillColor: Color(0xff677369).withOpacity(0.65),
          // filled: true,
          // focusedBorder: OutlineInputBorder(
          //     borderSide: BorderSide(
          //       width: 2.w,
          //       color: Color(0xffB6FF6F),
          //     ),
          //     borderRadius: BorderRadius.circular(31.r)),
          // enabledBorder: OutlineInputBorder(
          //     borderRadius: BorderRadius.circular(31.r),
          //     borderSide: BorderSide(color: Color(0xffB6FF6F), width: 2.w)),
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

          labelText: labelText,
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30.0),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelStyle: TextStyle(
              fontSize: 16.sp, color: Colors.white, fontFamily: "Sora Thin"),
          // hintText: hintTextt,

          // hintStyle: TextStyle(
          //     fontSize: 16.sp,
          //     color: Colors.grey.withOpacity(0.75),
          //     fontFamily: "Sora Thin"),
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(31.r),
          //   borderSide: BorderSide(
          //     width: 1.w,
          //     style: BorderStyle.none,
          //   ),
          // ),
          // filled: true,
          // fillColor: Color(0xff687a6c).withOpacity(0.5)
        ),
      ),
    );
  }
}
