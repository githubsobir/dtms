import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dtms/data/main_provider.dart';
import 'package:flutter/material.dart';

Widget headers({MainProviders mainProviders, BuildContext context}) {
  return Container(
    decoration: BoxDecoration(color: Colors.blue),
    child: CarouselWithIndicatorDemo(),
  );
}

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<String> imgList = [
    'https://dtm.uz/upload/file/post/news/Icon/elon2.jpg',
    'https://dtm.uz/upload/file/post/news/Icon/Aptis.png',
    'https://dtm.uz/upload/file/post/news/Icon/tuzatish.jpg',
    'https://dtm.uz/upload/file/post/news/Icon/elon.jpg',
    'https://dtm.uz/upload/file/post/news/Icon/hamkorlik.jpg',
    'https://dtm.uz/upload/file/post/news/Icon/Opportunity.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xfff0f0f0),
                ),
                height: MediaQuery.of(context).size.height,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item, fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Text(
                              'No. ${imgList.indexOf(item)} image',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();
    return Scaffold(
      backgroundColor:Color(0xfff0f0f0),
      // appBar: AppBar(title: Text('Carousel with indicator controller demo')),
      body: Column(children: [
        Expanded(
          child: Column(children: [
            SizedBox(height: 5,),
               CarouselSlider(

              items: imageSliders,
              carouselController: _controller,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
               onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                    width: 12.0,
                   height: 12.0,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: (Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.blue)
                      .withOpacity(_current == entry.key ? 0.6 : 0.1)),
            ),
          );
        }).toList(),
      ),
        ],)


        ),



      ]),
    );
  }
}
