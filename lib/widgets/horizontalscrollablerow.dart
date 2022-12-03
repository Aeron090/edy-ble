import 'package:edyble_app/Home/discoveryhome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class horizontalscrollablerow extends StatelessWidget {
  const horizontalscrollablerow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.35.sh,
      width: 1.sw,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return friendsrecomendations();
        },
      ),
    );
  }
}
