import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EmployerScheduleInterviewsScreen extends StatefulWidget {
  const EmployerScheduleInterviewsScreen({super.key});

  @override
  State<EmployerScheduleInterviewsScreen> createState() =>
      _EmployerScheduleInterviewsScreenState();
}

class _EmployerScheduleInterviewsScreenState
    extends State<EmployerScheduleInterviewsScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool alllbool = true;
  bool creditbool = true;
  bool debitbool = false;
  var _selectedButton = 1;
  @override
  Widget build(BuildContext context) {
    return 
    
    Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        key: _key,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            "Schedule Interviews",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              _key.currentState!.openDrawer();
            },
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Image(
                image: AssetImage(
                  "assets/images/Icon feather-menu.png",
                ),
              ),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Get.toNamed("/NotificationsScreen");
              },
              child: Container(
                child: Image.asset(
                    "assets/images/Icon ionic-ios-notifications.png"),
              ),
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                creditbool = false;
                                alllbool = true;
                                debitbool = false;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Interviews',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: alllbool
                                          ? Color(0xff0A6FB6)
                                          : Colors.black),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: Get.width * 0.45,
                                  color: alllbool
                                      ? Color(0xff0A6FB6)
                                      : Color(0xff000000),
                                  height: alllbool ? 3 : 1,
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              setState(() {
                                alllbool = false;
                                creditbool = true;
                                debitbool = false;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Requests',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: creditbool
                                          ? Color(0xff0A6FB6)
                                          : Colors.black),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: Get.width * 0.45,
                                  color: creditbool
                                      ? Color(0xff0A6FB6)
                                      : Color(0xff000000),
                                  height: creditbool ? 3 : 1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      creditbool
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7),
                              child: Container(
                                width: double.infinity,
                                height: 0.8.sh,
                                child: ListView(
                                  children: [
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                   
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                  
                                  ],
                                ),
                              ),
                            )
                          : Container(),
                      alllbool
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7),
                              child: Container(
                                width: double.infinity,
                                height: 0.8.sh,
                                child: ListView(
                                  children: [
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                   
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                   
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                   
                                    SizedBox(
                                      height: 20.h,
                                    ),
                              
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                 
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                  
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    
                                  ],
                                ),
                              ),
                            )
                          : Container(),
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

  InterViews() {
    return Container(
      width: 400.w,
      height: 71.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 5.w,
          ),
          Container(
            width: 47.w,
            height: 47.h,
            child: Image.asset("assets/images/Mask Group 14.png"),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed("/JohanSmithProfileScreen");
                },
                child: Container(
                  child: Text(
                    "John Smith",
                    style: TextStyle(color: Colors.black, fontSize: 15.sp),
                  ),
                ),
              ),
              Text(
                "Assistant",
                style: TextStyle(color: Color(0xff0A6FB6), fontSize: 12.sp),
              ),
            ],
          ),
          SizedBox(
            width: 20.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Scheduled on",
                style: TextStyle(color: Colors.black, fontSize: 12.sp),
              ),
              Text(
                "Mon, 15 Sep 2022 | 9 AM",
                style: TextStyle(color: Colors.black, fontSize: 12.sp),
              ),
            ],
          ),
          SizedBox(
            width: 20.w,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    actions: [
                      Container(
                        width: 373.w,
                        height: 618.h,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Container(
                          width: double.infinity,
                          child: SingleChildScrollView(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 250),
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: Container(
                                        child: Icon(
                                          Icons.close,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Select Employee",
                                      style: TextStyle(fontSize: 22.sp),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Container(
                                    width: 86.w,
                                    height: 86.h,
                                    child: Image.asset(
                                        "assets/images/Mask Group 17.png"),
                                  ),
                                  SizedBox(
                                    height: 7.h,
                                  ),
                                  Container(
                                    child: Text(
                                      "John Smith",
                                      style: TextStyle(fontSize: 15.sp),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Drop("Date"),
                                      Drop("Job Type"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  TextField("\$62,400 a year"),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Des(),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Container(
                                    width: 255.w,
                                    height: 54.h,
                                    decoration: BoxDecoration(
                                      color: Color(0xff199347),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 0),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(50.r),
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Submit",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Container(
                                      height: 54.h,
                                      width: 255.w,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(color: Color(0xffFFFFFF)),
                                        ],
                                        border: Border.all(
                                            color: Color(0xff0A6FB6)),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Skip",
                                          style: TextStyle(
                                              color: Color(0xff0A6FB6),
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                  //
                  //
                },
              );
            },
            child: Container(
              width: 31.w,
              height: 31.h,
              decoration: BoxDecoration(
                color: Color(0xff199347),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Container(
            width: 31.w,
            height: 31.h,
            child: Image.asset("assets/images/Group 719.png"),
          ),
        ],
      ),
    );
  }

  Requests() {
    return Container(
      width: 372.w,
      height: 71.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 5.w,
          ),
          Container(
            width: 47.w,
            height: 47.h,
            child: Image.asset("assets/images/Mask Group 14.png"),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "John Smith",
                style: TextStyle(color: Colors.black, fontSize: 15.sp),
              ),
              Text(
                "Assistant",
                style: TextStyle(color: Color(0xff0A6FB6), fontSize: 12.sp),
              ),
            ],
          ),
          SizedBox(
            width: 80.w,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      actions: [
                        Container(
                          height: 478.h,
                          width: 373.w,
                          child: Container(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 250),
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Container(
                                          child: Icon(
                                            Icons.close,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "Schedule Interview",
                                        style: TextStyle(fontSize: 22.sp),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Container(
                                      width: 86.w,
                                      height: 86.h,
                                      child: Image.asset(
                                          "assets/images/Mask Group 17.png"),
                                    ),
                                    SizedBox(
                                      height: 7.h,
                                    ),
                                    Container(
                                      child: Text(
                                        "John Smith",
                                        style: TextStyle(fontSize: 15.sp),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Drop("Date"),
                                          Drop("time"),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Container(
                                      width: 235.w,
                                      height: 53.h,
                                      decoration: BoxDecoration(
                                        color: Color(0xff199347),
                                        boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0, 0),
                                          ),
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(50.r),
                                      ),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Submit",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: Container(
                                        height: 53.h,
                                        width: 235.w,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(color: Color(0xffFFFFFF)),
                                          ],
                                          border: Border.all(
                                              color: Color(0xff0A6FB6)),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Skip",
                                            style: TextStyle(
                                                color: Color(0xff0A6FB6),
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  });
            },
            child: Container(
              width: 75.w,
              height: 25.h,
              decoration: BoxDecoration(
                color: Color(0xff199347),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Accept",
                      style: TextStyle(color: Colors.white, fontSize: 10.sp),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            height: 25.h,
            width: 75.w,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Color(0xffFFFFFF)),
              ],
              border: Border.all(color: Color(0xffE14242)),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                "Reject",
                style: TextStyle(color: Color(0xffE14242), fontSize: 10),
              ),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
    );
  }

  Drop(
    txt,
  ) {
    return Container(
      width: 140.w,
      height: 49.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        border: Border.all(color: Colors.white, width: 2.sp),
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.expand_more),
          contentPadding: EdgeInsets.all(16),
          hintText: txt,
          hintStyle: TextStyle(
              color: Color(0xff000000).withOpacity(0.5), fontSize: 15),
          border: InputBorder.none,
        ),
      ),
    );
  }

  TextField(
    txt,
  ) {
    return Container(
      width: 320.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        border: Border.all(color: Colors.white, width: 2.sp),
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          hintText: txt,
          hintStyle: TextStyle(
              color: Color(0xff000000).withOpacity(0.5), fontSize: 15),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Des() {
    return Container(
      width: 336.w,
      height: 106.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        border: Border.all(color: Colors.white, width: 2.sp),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16),
          hintText: "Description",
          hintStyle: TextStyle(
              color: Color(0xff000000).withOpacity(0.5), fontSize: 15),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
