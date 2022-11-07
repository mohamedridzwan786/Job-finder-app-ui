import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aureus/src/views/login-sign-up-screens/login-screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Aureus JobBox',
      theme: ThemeData(
         primarySwatch: Colors.orange,
         textTheme:GoogleFonts.latoTextTheme(textTheme).copyWith(
           bodyText1: GoogleFonts.montserrat(textStyle: textTheme.bodyText1),
         ),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
