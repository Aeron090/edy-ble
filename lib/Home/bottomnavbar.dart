// import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
// import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:edyble_app/Home/Map.dart';
import 'package:edyble_app/Home/discoveryhome.dart';
import 'package:edyble_app/Home/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'controller.dart';
import 'notification.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  final bottomcontroller = Get.put(BottomController());
  int pageIndex = 0;

  final pages = [
    discovery(),
    Mapscreen(),
    drawernotification(),
    profilescreen(),
  ];
  void _onItemTapped(int index) {
    bottomcontroller.navBarChange(index);
  }

  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      child: Scaffold(
        extendBody: true,
        backgroundColor: Color.fromARGB(255, 236, 236, 236),
        body: GetBuilder<BottomController>(
          builder: (_) => pages[bottomcontroller.navigationBarIndexValue],
        ),
        // pages[pageIndex],
        bottomNavigationBar: GetBuilder<BottomController>(
          builder: (_) => buildMyNavBar(context),
        ),
      ),
    );
  }

  buildMyNavBar(BuildContext context) {
    return Container(
      height: 84.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(31),
            topRight: Radius.circular(31),
          ),
          color: Color(0xff94ccac)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _onItemTapped(0);
              });

              Get.to(() => navbar());
            },
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 76.w,
                  height: 65.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: bottomcontroller.navigationBarIndexValue == 0
                        ? Color(0xffB6FF6F)
                        : Colors.white,

                    // color: Color(0xffB6FF6F),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/PNG-001.png",
                      scale: 5,
                      // color: bottomcontroller.navigationBarIndexValue == 0
                      //     ? Colors.black
                      //     : Colors.white,
                    ),
                  ),
                ),
                Text(
                  "Orders",
                  style: TextStyle(
                      // letterSpacing: -0.48,
                      fontSize: 12.sp,
                      color: bottomcontroller.navigationBarIndexValue == 0
                          ? Colors.black
                          : Colors.white,
                      // fontWeight: FontWeight.w500,
                      fontFamily: "Sora, Regular"),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _onItemTapped(1);
                  });

                  Get.to(() => navbar());
                },
                child: Icon(
                  Icons.location_on,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Map",
                style: TextStyle(
                  letterSpacing: -0.48,
                  fontSize: 12.sp,
                  color: bottomcontroller.navigationBarIndexValue == 1
                      ? Colors.black
                      : Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _onItemTapped(2);
              });

              Get.to(() => navbar());
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 22.5.w,
                  height: 22.5.h,
                  child: Image.asset(
                    "assets/images/Group 6500.png",
                    color: bottomcontroller.navigationBarIndexValue == 3
                        ? Colors.black
                        : Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Notification",
                  style: TextStyle(
                    letterSpacing: -0.48,
                    fontSize: 12.sp,
                    color: bottomcontroller.navigationBarIndexValue == 3
                        ? Colors.black
                        : Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _onItemTapped(3);
              });

              Get.to(() => navbar());
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 22.5.w,
                  height: 22.5.h,
                  child: Image.asset(
                    "assets/images/Group 6500.png",
                    color: bottomcontroller.navigationBarIndexValue == 4
                        ? Colors.black
                        : Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                    letterSpacing: -0.48,
                    fontSize: 12.sp,
                    color: bottomcontroller.navigationBarIndexValue == 4
                        ? Colors.black
                        : Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class Page1 extends StatelessWidget {
//   const Page1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//         child: Text(
//           "Page Number 1",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Page2 extends StatelessWidget {
//   const Page2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//         child: Text(
//           "Page Number 2",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Page3 extends StatelessWidget {
//   const Page3({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//         child: Text(
//           "Page Number 3",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Page4 extends StatelessWidget {
//   const Page4({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//         child: Text(
//           "Page Number 4",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }
