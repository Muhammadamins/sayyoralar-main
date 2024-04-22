import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayyoralar/constants.dart';
import 'package:sayyoralar/route/app.dart';
import 'package:sayyoralar/screens/home/home_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: AppRoute.router,

    );
  }
}



// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Ali Umer',
//       // we are using dark theme and we modify it as our need
//       theme: ThemeData.dark().copyWith(
//         primaryColor: primaryColor,
//         scaffoldBackgroundColor: bgColor,
//         canvasColor: bgColor,
//         textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
//             .apply(bodyColor: Colors.white)
//             .copyWith(
//               bodyLarge: TextStyle(color: bodyTextColor),
//               bodyMedium: TextStyle(color: bodyTextColor),
//             ),
//       ),
//       home: HomeScreen(),
//     );
//   }
// }

