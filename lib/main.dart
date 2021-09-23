import 'package:dtms/data/main_provider.dart';
import 'package:dtms/mains/bodies.dart';
import 'package:dtms/mains/headers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MainProviders mainProviders = MainProviders();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery
        .of(context)
        .size
        .height;
    double w = MediaQuery
        .of(context)
        .size
        .width;
    double k = h * w * 0.001;
    return Scaffold(
        appBar: AppBar(title: Text("DTM", style: GoogleFonts.abrilFatface(
            color: Colors.black,
            letterSpacing: 4,
            fontWeight: FontWeight.bold),),
          centerTitle: true,
          backgroundColor: Colors.white,

        ),
        backgroundColor: Color(0xfff0f0f0),
        body: ChangeNotifierProvider(
          create: (context) => mainProviders,
          child: Consumer<MainProviders>(
            builder: (context, value, child) =>
                SafeArea(
                  child: Column(
                    children: [
                      Container(
                        height: k * 0.8
                        ,
                        child: headers(
                            mainProviders: mainProviders, context: context),
                      ),
                      Container(
                        height: k * 1.3,
                        child: bodies(  mainProviders: mainProviders),
                      ),
                    ],
                  ),
                ),
          ),
        ));
  }
}
