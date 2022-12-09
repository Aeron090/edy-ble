import 'dart:ui';

import 'package:edyble_app/AuthScreens/ConfirmationUser.dart';
import 'package:edyble_app/AuthScreens/prelogin.dart';
import 'package:edyble_app/Home/Friends.dart';
import 'package:edyble_app/Home/Suggestion.dart';
import 'package:edyble_app/Home/bottomnavbar.dart';
import 'package:edyble_app/Home/discoveryhome.dart';
import 'package:edyble_app/Home/draweredibleguide.dart';
import 'package:edyble_app/Home/drawersettings.dart';
import 'package:edyble_app/Home/notification.dart';
import 'package:edyble_app/Home/privacypolicy.dart';
import 'package:edyble_app/Home/profile.dart';
import 'package:edyble_app/Home/termsandconditions.dart';
import 'package:edyble_app/Home/wishlist.dart';
import 'package:edyble_app/flow2/myaccount.dart';
import 'package:edyble_app/flow2/shopnotification.dart';
import 'package:edyble_app/flow2/updateshopprofile.dart';
import 'package:edyble_app/global/Global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../flow2/draweradson.dart';
import '../flow2/drawersubscription.dart';
import 'controller.dart';

class drawerscreen extends StatefulWidget {
  const drawerscreen({
    Key? key,
  }) : super(key: key);

  @override
  State<drawerscreen> createState() => _drawerscreenState();
}

class _drawerscreenState extends State<drawerscreen> {
  dynamic pageIndex;
  final bottomcontroller = Get.put(BottomController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,

        children: [
          60.verticalSpace,
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8.r),
            ),
            child: Container(
              height: 0.8.sh,
              width: 0.8.sw,
              color: Colors.grey.withOpacity(0.95),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.verticalSpace,
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            "assets/images/Icon metro-cross.png",
                            scale: 4,
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/Ellipse 49.png",
                          scale: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Smith",
                              style: TextStyle(
                                  fontSize: 24.sp,
                                  fontFamily: "Poppins, SemiBold",
                                  color: Colors.white),
                            ),
                            Text(
                              "john@email.com",
                              style: TextStyle(
                                  fontFamily: "Poppins, Regular",
                                  fontSize: 15.sp,
                                  color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                    46.verticalSpace,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (bottomcontroller.navigationBarIndexValue !=
                                  0) {
                                bottomcontroller.navBarChange(0);
                              } else {
                                Get.back();
                              }
                            },
                            child: Text(
                              "Home",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontFamily: "Poppins, Medium",
                                  color: Colors.white),
                            ),
                          ),
                          15.verticalSpace,
                          isUser == "yes"
                              ? GestureDetector(
                                  onTap: () {
                                    final bottomcontroller =
                                        Get.put(BottomController());
                                    bottomcontroller.navBarChange(3);
                                    Get.to(() => navbar());
                                  },
                                  child: Text(
                                    "My Profile",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: "Poppins, Medium",
                                        color: Colors.white),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    bottomcontroller.navBarChange(3);
                                    Get.to(() => navbar());
                                  },
                                  child: Text(
                                    "My Profile",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: "Poppins, Medium",
                                        color: Colors.white),
                                  ),
                                ),
                          15.verticalSpace,
                          isUser == "yes"
                              ? GestureDetector(
                                  onTap: () {
                                    Get.to(() => subscriptionscreendrawer());
                                  },
                                  child: Text(
                                    "Subscription",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: "Poppins, Medium",
                                        color: Colors.white),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    Get.to(() => drawerfriendsscreen());
                                  },
                                  child: Text(
                                    "Friend",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: "Poppins, Medium",
                                        color: Colors.white),
                                  ),
                                ),
                          15.verticalSpace,
                          isUser == "yes"
                              ? GestureDetector(
                                  onTap: () {
                                    Get.to(() => draweraddson());
                                  },
                                  child: Text(
                                    "Add Ons",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: "Poppins, Medium",
                                        color: Colors.white),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    Get.to(() => edibleguide());
                                  },
                                  child: Text(
                                    "Edible Guide",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: "Poppins, Medium",
                                        color: Colors.white),
                                  ),
                                ),
                          15.verticalSpace,
                          isUser == "yes"
                              ? GestureDetector(
                                  onTap: () {
                                    Get.to(() => shopnotification());
                                  },
                                  child: Text(
                                    "Notification",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: "Poppins, Medium",
                                        color: Colors.white),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    Get.to(() => wishlist());
                                  },
                                  child: Text(
                                    "My Wishlist",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: "Poppins, Medium",
                                        color: Colors.white),
                                  ),
                                ),
                          15.verticalSpace,
                          isUser == "yes"
                              ? GestureDetector(
                                  onTap: () {
                                    Get.to(() => settings());
                                  },
                                  child: Text(
                                    "Settings",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: "Poppins, Medium",
                                        color: Colors.white),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    Get.to(() => settings());
                                  },
                                  child: Text(
                                    "Notifications",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: "Poppins, Medium",
                                        color: Colors.white),
                                  ),
                                ),
                          15.verticalSpace,
                          isUser == "yes"
                              ? GestureDetector(
                                  onTap: () {
                                    Get.to(() => myaccount());
                                  },
                                  child: Text(
                                    "Account",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: "Poppins, Medium",
                                        color: Colors.white),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    Get.to(() => settings());
                                  },
                                  child: Text(
                                    "Settings",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: "Poppins, Medium",
                                        color: Colors.white),
                                  ),
                                ),
                          15.verticalSpace,
                          GestureDetector(
                            onTap: () {
                              Get.to(() => termsandconditions());
                            },
                            child: Text(
                              "Terms & Conditions",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontFamily: "Poppins, Medium",
                                  color: Colors.white),
                            ),
                          ),
                          15.verticalSpace,
                          GestureDetector(
                            onTap: () {
                              Get.to(() => privacypolicy());
                            },
                            child: Text(
                              "Privacy Policy",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontFamily: "Poppins, Medium",
                                  color: Colors.white),
                            ),
                          ),
                          15.verticalSpace,
                          Text(
                            "Switch To Shop",
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: "Poppins, Medium",
                                color: Colors.white),
                          ),
                          56.verticalSpace,
                          GestureDetector(
                            onTap: () {
                              Get.to(() => confirmationaboutuser());
                            },
                            child: Container(
                              width: 179.w,
                              height: 53.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(27.r),
                                color: Color(0xffB6FF6F),
                              ),
                              child: Center(
                                child: Text(
                                  "Logout",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontFamily: "Poppins, Regular",
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
