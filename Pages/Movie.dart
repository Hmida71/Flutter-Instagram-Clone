import 'package:flutter/material.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class Movie extends StatefulWidget {
  Movie({Key? key}) : super(key: key);

  @override
  _MovieState createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  final List<Color> colors = <Color>[
    Colors.amberAccent,
    Colors.red,
    Colors.blue,
    Colors.green
  ];
  final List slider = [
    {
      "name": "sdschakib",
      "comment": "مواقع رهيبه لازم تجربها ...More",
      "color": Colors.orange
    },
    {
      "name": "Dz Hmida",
      "comment": "instagram ni jayyyyy ! yeay",
      "color": Colors.yellow[300]
    },
    {
      "name": "Abd Ben",
      "comment": "GG's Bro nice",
      "color": Colors.brown
    },
    {
      "name": "Zako Blm",
      "comment": "ياااااااااا الخرااا ابلع ...More",
      "color": Colors.red
    },
  ];
  @override
  Widget build(BuildContext context) {
    return TikTokStyleFullPageScroller(
        contentSize: 4,
        // swipeThreshold: 0.2,
        // ^ the fraction of the screen needed to scroll
        swipeVelocityThreshold: 2000,
        // ^ the velocity threshold for smaller scrolls
        animationDuration: const Duration(milliseconds: 300),
        // ^ how long the animation will take
        // onScrollEvent: _handleCallbackEvent,
        // ^ registering our own function to listen to page changes
        builder: (BuildContext context, int index) {
          return Container(
            color: colors[index],
            width: double.infinity,
            height: double.maxFinite,
            margin: EdgeInsets.only(top: 50),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  // color: Colors.brown,
                  height: double.maxFinite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, bottom: 5),
                            child: CircleAvatar(
                              backgroundColor: slider[index]['color'],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text("${slider[index]['name']}"),
                          )
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10),
                          child: Text("${slider[index]['comment']}")),
                      Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10),
                          child: Text("${slider[index]['name']} ~ Original Audio")),
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  // color: Colors.red,
                  height: double.maxFinite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt_outlined,
                            size: 35,
                          )),
                      Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border,
                                size: 30,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.comment_bank,
                                size: 30,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.send_outlined,
                                size: 30,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_vert,
                                size: 30,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          );
        });
  }

  void _handleCallbackEvent(ScrollEventType type, {required int currentIndex}) {
    print(
        "Scroll callback received with data: {type: $type, and index: $currentIndex}");
  }
}
