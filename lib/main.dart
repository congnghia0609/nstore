import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nstore/constants.dart';
import 'package:nstore/screens/home/home_screen.dart';
import 'package:nstore/screens/product/product_screen.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NStore App',
      theme: ThemeData(
        // Now we also apply out text color to all flutter textTheme
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductScreen(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'NStore App',
//       theme: ThemeData(
//         scaffoldBackgroundColor: Colors.white,
//         // Here we set DM Sans as our default fonts
//         // Now we also apply out text color to all flutter textTheme
//         textTheme: GoogleFonts.dmSansTextTheme().apply(displayColor: kTextColor),
//         // Almost all of app bar have this style
//         appBarTheme: AppBarTheme(
//           color: Colors.transparent,
//           elevation: 0,
//           brightness: Brightness.light,
//         ),
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: HomeScreen(),
//     );
//   }
// }
