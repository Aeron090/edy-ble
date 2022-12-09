import 'package:edyble_app/AuthScreens/ConfirmAge.dart';
import 'package:edyble_app/Home/map22.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import 'Home/Map.dart';
import 'Home/bottomnavbar.dart';
import 'Home/profile.dart';
import 'comments.dart';
import 'flow2/createshopprofile.dart';
import 'flow2/draweradson.dart';
import 'flow2/drawersubscription.dart';
import 'flow2/updateshopprofile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (context, child) {
          return GetMaterialApp(
              theme: ThemeData(
                textTheme: GoogleFonts.soraTextTheme(
                  Theme.of(context).textTheme,
                ),
              ),
              debugShowCheckedModeBanner: false,
              initialRoute: "/ConfirmAge",
              getPages: [
                GetPage(
                  name: "/Mapscreen",
                  page: () => Mapscreen(),
                ),
                GetPage(
                  name: "/ConfirmAge",
                  page: () => ConfirmAge(),
                ),
                GetPage(
                  name: "/commentsscreen",
                  page: () => commentsscreen(),
                ),
                GetPage(
                  name: "/draweraddson",
                  page: () => draweraddson(),
                ),
                GetPage(
                  name: "/subscriptionscreendrawer",
                  page: () => subscriptionscreendrawer(),
                ),
                GetPage(
                  name: "/updateshopprofile",
                  page: () => updateshopprofile(),
                ),
                GetPage(
                  name: "/navbar",
                  page: () => navbar(),
                ),
                GetPage(
                  name: "/createshopprofile",
                  page: () => createshopprofile(),
                ),
                GetPage(
                  name: "/MapSScreen",
                  page: () => MapSScreen(),
                ),
              ]);
        });
  }
}

// // import 'package:circular_bottom_navigation/tab_item.dart';

// import 'package:edyble_app/Home/discoveryhome.dart';
// import 'package:edyble_app/Home/myprofile.dart';
// import 'package:edyble_app/widgets/iconsss.dart';
// import 'package:flutter/material.dart';

// import 'Home/Map.dart';
// import 'widgets/bottom.dart';
// // import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Circular Bottom Navigation Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Directionality(
//         // use this property to change direction in whole app
//         // CircularBottomNavigation will act accordingly
//         textDirection: TextDirection.ltr,
//         child: MyHomePage(title: 'circular_bottom_navigation'),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({
//     Key? key,
//     this.title,
//   }) : super(key: key);
//   final String? title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int selectedPos = 0;

//   double bottomNavBarHeight = 60;

//   List<TabItem> tabItems = List.of([
//     TabItem(
//       "assets/images/Icon material-email.png",
//       "Home",
//       Colors.blue,
//       labelStyle: TextStyle(
//         fontWeight: FontWeight.normal,
//       ),
//     ),
//     TabItem(
//       "assets/images/Icon material-email.png",
//       "Search",
//       Colors.orange,
//       labelStyle: TextStyle(
//         color: Colors.red,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     TabItem(
//       "assets/images/Icon material-email.png",
//       "Reports",
//       Colors.red,
//       circleStrokeColor: Colors.black,
//     ),
//     TabItem(
//       "assets/images/Icon material-email.png",
//       "Notifications",
//       Colors.cyan,
//     ),
//   ]);

//   late CircularBottomNavigationController _navigationController;

//   @override
//   void initState() {
//     super.initState();
//     _navigationController = CircularBottomNavigationController(selectedPos);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: Stack(
//         children: <Widget>[
//           Padding(
//             child: myprofilescreen(),
//             padding: EdgeInsets.only(bottom: bottomNavBarHeight),
//           ),
//           Align(alignment: Alignment.bottomCenter, child: bottomNav())
//         ],
//       ),
//     );
//   }

//   Widget bodyContainer() {
//     Color? selectedColor = tabItems[selectedPos].circleColor;
//     List slogan = [
//       Mapscreen(),
//       Mapscreen(),
//       Mapscreen(),
//       Mapscreen(),
//       Mapscreen()
//     ];
//     // final pages = [
//     //   Container(),
//     //   Mapscreen(),
//     //   Container(),
//     //   Container(),
//     // ];
//     switch (selectedPos) {
//       case 0:
//         slogan[0];
//         break;
//       case 1:
//         slogan[0];
//         break;
//       case 2:
//         slogan[0];
//         break;
//       case 3:
//         slogan[0];
//         break;
//       default:
//         slogan[0];

//         break;
//     }

//     return GestureDetector(
//       child: Container(
//         width: double.infinity,
//         height: double.infinity,
//         color: selectedColor,
//         child: Center(child: slogan[0]),
//       ),
//       onTap: () {
//         if (_navigationController.value == slogan.length - 1) {
//           _navigationController.value = 0;
//         } else {
//           _navigationController.value = _navigationController.value! + 1;
//         }
//       },
//     );
//   }

//   Widget bottomNav() {
//     return CircularBottomNavigation(
//       tabItems,
//       controller: _navigationController,
//       selectedPos: selectedPos,
//       barHeight: bottomNavBarHeight,
//       // use either barBackgroundColor or barBackgroundGradient to have a gradient on bar background
//       barBackgroundColor: Colors.white,
//       // barBackgroundGradient: LinearGradient(
//       //   begin: Alignment.bottomCenter,
//       //   end: Alignment.topCenter,
//       //   colors: [
//       //     Colors.blue,
//       //     Colors.red,
//       //   ],
//       // ),
//       backgroundBoxShadow: <BoxShadow>[
//         BoxShadow(color: Colors.black45, blurRadius: 10.0),
//       ],
//       animationDuration: Duration(milliseconds: 300),
//       selectedCallback: (int? selectedPos) {
//         setState(() {
//           this.selectedPos = selectedPos ?? 0;
//           print(_navigationController.value);
//         });
//       },
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _navigationController.dispose();
//   }
// }
