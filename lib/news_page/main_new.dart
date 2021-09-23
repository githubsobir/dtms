import 'package:flutter/material.dart';

class MainNews extends StatefulWidget {
  const MainNews({Key key}) : super(key: key);

  @override
  _MainNewsState createState() => _MainNewsState();
}

class _MainNewsState extends State<MainNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
iconTheme:IconThemeData(color: Colors.black) ,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          width: double.infinity,
          height: 50,
          child: Row(
            children: [
     
            ],
          )
        ),
      )
    );
  }
}
