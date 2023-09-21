import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/pages/login_page.dart';

// import 'pages/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
    home: const LoginPage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.purple,
      textTheme: GoogleFonts.robotoTextTheme()));
  }

}
