import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Preloginbuttonswidget extends StatelessWidget {
  final text;
  String iconimage;

  Preloginbuttonswidget({
    required this.text,
    required this.iconimage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 362.w,
      height: 62.h,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Color(0xffB6FF6F),
        ),
        borderRadius: BorderRadius.circular(31.r),
        color: Color(0xffB6FF6F),
        boxShadow: [
          BoxShadow(
            color: Color(0xffB6FF6F),
            spreadRadius: 0,
            blurRadius: 13,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 75.w,
          ),
          Image.asset(
            iconimage,
            scale: 4.5,
          ),
          SizedBox(
            width: 15.w,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 17.sp,
                color: Colors.black,
                // fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
