import 'package:codepure_flutter_30_days/pages/HomePage.dart';
import 'package:codepure_flutter_30_days/pages/LoginPage.dart';
import 'package:codepure_flutter_30_days/utils/MyRoutes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo,fontFamily: GoogleFonts.lato().fontFamily),     
      initialRoute: MyRoutes.loginPage,
      routes: {
        MyRoutes.homePage:(context) => HomePage(),
        MyRoutes.loginPage:(context) => LoginPage(),
      },                                                                    
    );
  }
}