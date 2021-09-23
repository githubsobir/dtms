import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dtms/data/main_provider.dart';
import 'package:dtms/news_page/main_new.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphic_container/neumorphic_container.dart';


Widget bodies({MainProviders mainProviders, BuildContext context}) {
  Color _color = Color(0xFFf2f2f2);
 return Container(
    child: Example(),
  );
}
class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    Color color = Color(0xfff0f0f0);
    return Scaffold(
      backgroundColor: color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 10, 10),

                          child: NeumorphicContainer(
                            height: MediaQuery.of(context).size.height*0.16,
                            width: MediaQuery.of(context).size.height*0.18,
                            borderRadius: 10,
                            depth: 20,
                            primaryColor: color,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.news, size: 44, color: Colors.blueAccent.shade400,),
                                SizedBox(height: 10,),
                                Text("Yangiliklar", style: GoogleFonts.actor(fontSize: 17), textAlign: TextAlign.center,)
                              ],
                            ),
                            //flat neumorphism design
                            curvature: Curvature.flat,
                          ),
                        ),
                        onTap: (){
                          myDialog();
                          Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => MainNews(),));

                        },
                      ),

                      GestureDetector(
                        onTap: (){myDialog();},
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 10, 5),
                          child: NeumorphicContainer(
                            height: MediaQuery.of(context).size.height*0.16,
                            width: MediaQuery.of(context).size.height*0.18,
                            borderRadius: 10,
                            primaryColor: color,
                            spread: 5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.house, size: 44, color: Colors.blueAccent.shade400,),
                                SizedBox(height: 10,),
                                Text("Shaxsiy kabinet", style: GoogleFonts.actor(fontSize: 17),textAlign: TextAlign.center)
                              ],
                            ),
                            //convex neumorphism design
                            curvature: Curvature.convex,
                          ),
                        ),
                      )

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      GestureDetector(
                        onTap: (){myDialog();},
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 10, 10),
                          child: NeumorphicContainer(
                            height: MediaQuery.of(context).size.height*0.16,
                            width: MediaQuery.of(context).size.height*0.18,
                            borderRadius: 10,
                            depth: 20,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.chart_pie, size: 44, color: Colors.blueAccent.shade400,),
                                SizedBox(height: 10,),
                                Text("Statistika",  style: GoogleFonts.actor(fontSize: 17), textAlign: TextAlign.center,)
                              ],
                            ),
                            primaryColor: color,
                            //flat neumorphism design
                            curvature: Curvature.flat,
                          ),
                        ),
                      ),

                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 10, 10),
                          child: NeumorphicContainer(
                            height: MediaQuery.of(context).size.height*0.16,
                            width: MediaQuery.of(context).size.height*0.18,
                            borderRadius: 10,
                            primaryColor: color,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.view_agenda_outlined, size: 44, color: Colors.blueAccent.shade400,),
                                SizedBox(height: 10,),
                                Text("Imtiyozlar",  style: GoogleFonts.actor(fontSize: 17), textAlign: TextAlign.center,)
                              ],
                            ),
                            spread: 5,
                            //convex neumorphism design
                            curvature: Curvature.convex,
                          ),
                        ),
                        onTap: (){
                          myDialog();
                        },
                      )

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        child:  Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 10, 5),
                          child: NeumorphicContainer(
                            height: MediaQuery.of(context).size.height*0.16,
                            width: MediaQuery.of(context).size.height*0.18,
                            borderRadius: 10,
                            depth: 20,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.view_agenda_outlined, size: 44, color: Colors.blueAccent.shade400,),
                                SizedBox(height: 10,),
                                Text("Milliy sertifikat tizimi",  style: GoogleFonts.actor(fontSize: 17), textAlign: TextAlign.center,)
                              ],
                            ),
                            primaryColor: color,
                            //flat neumorphism design
                            curvature: Curvature.flat,
                          ),
                        ),
                        onTap: (){
                          myDialog();
                        },
                      ),

                      GestureDetector(child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 10, 5),
                        child: NeumorphicContainer(

                          height: MediaQuery.of(context).size.height*0.16,
                          width: MediaQuery.of(context).size.height*0.18,
                          borderRadius: 10,
                          primaryColor: color,
                          spread: 4,
                          //convex neumorphism design
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.phone_in_talk_rounded, size: 44, color: Colors.blueAccent.shade400,),
                              SizedBox(height: 10,),
                              Text("Biz bilan aloqa",  style: GoogleFonts.actor(fontSize: 17), textAlign: TextAlign.center,)
                            ],
                          ),
                          curvature: Curvature.convex,
                        ),
                      ),
                      onTap: (){
                        myDialog();
                      },
                      ),

                    ],
                  ),
                ],
              ),
            )),
            SizedBox(height: 1,),
          ],
        ),
      ),
    );
  }

 void myDialog({String aaa}){
  AwesomeDialog(
    context: context,
    animType: AnimType.SCALE,
    dialogType: DialogType.NO_HEADER,
    body: Center(child: Text(
      'If the body is specified, then title '
          'and description will be ignored, this allows to further customize the dialogue.',
      style: TextStyle(fontStyle: FontStyle.italic),
    ),),
    title: 'This is Ignored',
    desc:   'This is also Ignored',
    btnOkColor: Colors.blueAccent.shade700,
    btnOkOnPress: () {},
  )..show();
 }

}