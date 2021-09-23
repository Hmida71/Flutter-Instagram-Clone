import 'package:flutter/material.dart';
import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  // ! Donger Zonee ===========================
  /// Variables
  late Animation gap;
  Animation<double>? base;
  Animation<double>? reverse;
  late AnimationController controller;

  /// Init
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    base = CurvedAnimation(parent: controller, curve: Curves.easeOut);
    reverse = Tween<double>(begin: 1.0, end: 1.0).animate(base!);
    gap = Tween<double>(begin: 10.0, end: 0.0).animate(base!)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  /// Dispose
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future refresh() async {
    await Future.delayed(Duration(seconds: 2));
  }

  // ! =============================
  // Todo =========================
  List story = [
    {
      "name": "Hicham.DN",
      "img": "images/profile-4.jpeg",
      "color": Colors.orange
    },
    {"name": "Zak Blm", "img": "images/profil2.jpg", "color": Colors.blue},
    {"name": "Abd ben", "img": "images/profil7.jpg", "color": Colors.pink},
    {"name": "Amine dz", "img": "images/profil3.jpg", "color": Colors.purple},
    {"name": "BK Nes", "img": "images/profil9.jpg", "color": Colors.yellow},
    {
      "name": "Hmida.071",
      "img": "images/profil.jpeg",
      "color": Colors.orange[300]
    },
    {
      "name": "Snousi Elbay",
      "img": "images/profil4.jpg",
      "color": Colors.blue[200]
    },
    {
      "name": "Macdonald.2 ",
      "img": "images/profile-5.jpeg",
      "color": Colors.purple[100]
    },
    {
      "name": "Nadir Larbi",
      "img": "images/profil7.jpg",
      "color": Colors.pink[200]
    },
    {
      "name": "Jessica Macdonald",
      "img": "images/profil9.jpg",
      "color": Colors.yellow[300]
    },
  ];
  List posts = [
    {
      "name": "Reactjs1",
      "subname": "Donald Trump Headquarters",
      "logo": "images/monster.png",
      "img1": "images/Reactjs1.png",
      "img2": "images/profil.jpeg",
      "img3": "images/profil2.jpg",
      "likes": "1,821",
      "comment": "Which shortcuts do you use the most",
      "commentNumber": "12",
      "TimePost": "5",
    },
    {
      "name": "Shubam_IosDev",
      "subname": "From NewYork City",
      "logo": "images/profile-3.jpeg",
      "img1": "images/profile-3.jpeg",
      "img2": "images/profile-5.jpeg",
      "img3": "images/profile-3.jpeg",
      "likes": "6,321",
      "comment": "Have A nice Day yeay ❤🎉👌🙌😁 !",
      "commentNumber": "600",
      "TimePost": "6",
    },
    {
      "name": "Danuced jumla",
      "subname": "London City",
      "logo": "images/profile9.jpg",
      "img1": "images/profile-7.jpg",
      "img2": "images/profile9.jpg",
      "img3": "images/profile5.jpg",
      "likes": "98,210",
      "comment": "It's Cool BB Thnks For All Likes 😘💖🎶✔ ",
      "commentNumber": "546",
      "TimePost": "9",
    },
    {
      "name": "Himda Dz",
      "subname": "Algeria Lover 💖",
      "logo": "images/profil.jpeg",
      "img1": "images/profil.jpeg",
      "img2": "images/profil3.jpg",
      "img3": "images/profil4.jpg",
      "likes": "121,891",
      "comment": "Instagram Rani Jay yoooo ✔✔",
      "commentNumber": "8912",
      "TimePost": "10.2",
    },
    {
      "name": "Zako Dev's",
      "subname": "Pro Dev Like sangaaa",
      "logo": "images/profil2.jpg",
      "img1": "images/profil2.jpg",
      "img2": "images/profil99.jpg",
      "img3": "images/profil2.jpg",
      "likes": "56,821",
      "comment": "Yoo Les Bigoos 🎉👌🙌😁",
      "commentNumber": "6662",
      "TimePost": "13",
    },
  ];
  List follower = [
    {
      "img": "images/profil6.jpg",
      "name": "Dz~Abd",
      "subname": "Follows You",
      "btnName": "Follows Back",
    },
    {
      "img": "images/profil2.jpg",
      "name": "Zak Blm",
      "subname": "New in Instagarm",
      "btnName": "Follows Now",
    },
    {
      "img": "images/profile-5.jpeg",
      "name": "Macdonald 071",
      "subname": "New To instagram",
      "btnName": "Follows",
    },
    {
      "img": "images/profile-6.jpg",
      "name": "alixa",
      "subname": "Follows You",
      "btnName": "Follows Back",
    },
  ];

  var outlinedHome = Icons.home;
  var outlinedSearch = Icons.search_outlined;
  var outlinedMovie = Icons.movie_filter_outlined;
  var outlinedShop = Icons.shopping_bag_outlined;
  var outlinedbookmark = Icons.bookmark_border;
  var outlinedbookmark2 = Icons.bookmark_border;
  var outlinedbookmark3 = Icons.bookmark_border;
  var outlinedbookmark4 = Icons.bookmark_border;
  var outlinedbookmark5 = Icons.bookmark_border;
  var outlinedHeart = Icons.favorite_border;
  var outlinedHeart2 = Icons.favorite_border;
  var outlinedHeart3 = Icons.favorite_border;
  var outlinedHeart4 = Icons.favorite_border;
  var outlinedHeart5 = Icons.favorite_border;
  var colorHearts = Colors.black;
  var colorHearts2 = Colors.black;
  var colorHearts3 = Colors.black;
  var colorHearts4 = Colors.black;
  var colorHearts5 = Colors.black;
  var selectedIndex = 0;

  // Todo fin =========================

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: refresh,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              // color: Colors.blue[200],
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 130,
                    //  color: Colors.orange,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            // color: Colors.red,
                            width: 100,
                            height: 100,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  child: Container(
                                    // color: Colors.blue,
                                    margin: EdgeInsets.only(top: 40, left: 40),
                                    child: CircleAvatar(
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add,
                                        ),
                                        color: Colors.white,
                                        iconSize: 16,
                                      ),
                                    ),
                                  ),
                                  radius: 35.0,
                                  backgroundImage:
                                      AssetImage('images/profil.jpeg'),
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 8),
                                    child: Text(
                                      "Your Story",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ))
                              ],
                            ),
                          ),
                          ...List.generate(10, (index) {
                            return Column(children: [
                              Container(
                                width: 80,
                                height: 80,
                                margin:
                                    EdgeInsets.only(left: 8, right: 8, top: 8),
                                child: RotationTransition(
                                  turns: base!,
                                  child: DashedCircle(
                                    gapSize: gap.value,
                                    dashes: 40,
                                    color: story[index]['color'],
                                    child: RotationTransition(
                                      turns: reverse!,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: CircleAvatar(
                                          radius: 80.0,
                                          backgroundImage: AssetImage(
                                              '${story[index]['img']}'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text("${story[index]['name']}"))
                            ]);
                          }),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 15),
                    width: double.infinity,
                    // height: double.maxFinite,
                    // color: Colors.green[200],
                    child: Column(
                      children: [
                        Divider(
                          height: 2,
                          color: Colors.black54,
                        ),
                        Container(
                          // color: Colors.red[200],
                          width: double.infinity,
                          height: 300,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Suggested For you",
                                      style: TextStyle(
                                          fontSize: 21,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "See All",
                                      style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      ...List.generate(follower.length,
                                          (index) {
                                        return Card(
                                          margin: EdgeInsets.all(10),
                                          child: Container(
                                            width: 180,
                                            height: 230,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CircleAvatar(
                                                  radius: 60,
                                                  backgroundImage: AssetImage(
                                                      "${follower[index]['img']}"),
                                                ),
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        top: 5, bottom: 5),
                                                    child: Text(
                                                      "${follower[index]['name']}",
                                                      style: TextStyle(
                                                          fontSize: 19),
                                                    )),
                                                Container(
                                                    child: Text(
                                                  "${follower[index]['subname']}",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black54),
                                                )),
                                                MaterialButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                      "${follower[index]['btnName']}"),
                                                  textColor: Colors.white,
                                                  color: Colors.blue,
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 40),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      })
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        ...List.generate(posts.length, (index) {
                          return Container(
                            margin: EdgeInsets.only(top: 15),
                            // color: Colors.brown,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(
                                  height: 2,
                                  color: Colors.black54,
                                ),
                                ListTile(
                                  isThreeLine: false,
                                  title: Text("${posts[index]['name']}"),
                                  subtitle: Text("${posts[index]['subname']}"),
                                  trailing: InkWell(
                                    onTap: () {},
                                    child: Icon(Icons.more_vert),
                                  ),
                                  leading: Container(
                                    width: 50,
                                    height: 50,
                                    child: CircleAvatar(
                                      radius: 50.0,
                                      backgroundImage:
                                          AssetImage('${posts[index]['logo']}'),
                                    ),
                                  ),
                                ),
                                ImageSlideshow(
                                  width: double.infinity,
                                  height: 400,
                                  initialPage: 0,
                                  indicatorColor: Colors.blue,
                                  indicatorBackgroundColor: Colors.grey,
                                  children: [
                                    Image.asset(
                                      '${posts[index]['img1']}',
                                      fit: BoxFit.cover,
                                    ),
                                    Image.asset(
                                      '${posts[index]['img2']}',
                                      fit: BoxFit.cover,
                                    ),
                                    Image.asset(
                                      '${posts[index]['img3']}',
                                      fit: BoxFit.cover,
                                    ),
                                  ],

                                  onPageChanged: (value) {
                                    print('Page changed: $value');
                                  },
                                  // autoPlayInterval: 3000,
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: 10, left: 10, right: 10),
                                  padding: EdgeInsets.all(0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          index == 0
                                              ? IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      outlinedHeart =
                                                          Icons.favorite;
                                                      colorHearts = Colors.red;
                                                    });
                                                  },
                                                  icon: Icon(
                                                    outlinedHeart,
                                                    size: 30,
                                                    color: colorHearts,
                                                  ))
                                              : index == 1
                                                  ? IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          outlinedHeart2 =
                                                              Icons.favorite;
                                                          colorHearts2 =
                                                              Colors.red;
                                                        });
                                                      },
                                                      icon: Icon(
                                                        outlinedHeart2,
                                                        size: 30,
                                                        color: colorHearts2,
                                                      ))
                                                  : index == 2
                                                      ? IconButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              outlinedHeart3 =
                                                                  Icons
                                                                      .favorite;
                                                              colorHearts3 =
                                                                  Colors.red;
                                                            });
                                                          },
                                                          icon: Icon(
                                                            outlinedHeart3,
                                                            size: 30,
                                                            color: colorHearts3,
                                                          ))
                                                      : index == 3
                                                          ? IconButton(
                                                              onPressed: () {
                                                                setState(() {
                                                                  outlinedHeart4 =
                                                                      Icons
                                                                          .favorite;
                                                                  colorHearts4 =
                                                                      Colors
                                                                          .red;
                                                                });
                                                              },
                                                              icon: Icon(
                                                                outlinedHeart4,
                                                                size: 30,
                                                                color:
                                                                    colorHearts4,
                                                              ))
                                                          : index == 4
                                                              ? IconButton(
                                                                  onPressed:
                                                                      () {
                                                                    setState(
                                                                        () {
                                                                      outlinedHeart5 =
                                                                          Icons
                                                                              .favorite;
                                                                      colorHearts5 =
                                                                          Colors
                                                                              .red;
                                                                    });
                                                                  },
                                                                  icon: Icon(
                                                                    outlinedHeart5,
                                                                    size: 30,
                                                                    color:
                                                                        colorHearts5,
                                                                  ))
                                                              : IconButton(
                                                                  onPressed:
                                                                      () {
                                                                    setState(
                                                                        () {
                                                                      outlinedHeart =
                                                                          Icons
                                                                              .favorite;
                                                                      colorHearts =
                                                                          Colors
                                                                              .red;
                                                                    });
                                                                  },
                                                                  icon: Icon(
                                                                    outlinedHeart,
                                                                    size: 30,
                                                                    color:
                                                                        colorHearts,
                                                                  )),
                                          IconButton(
                                            onPressed: () {},
                                            icon: Image.asset(
                                              "images/comment.png",
                                              height: 30,
                                              width: 30,
                                            ),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.send_outlined,
                                                size: 30,
                                              )),
                                        ],
                                      ),
                                      index == 0
                                          ? IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  outlinedbookmark =
                                                      Icons.bookmark;
                                                });
                                              },
                                              icon: Icon(
                                                outlinedbookmark,
                                                size: 30,
                                              ))
                                          : index == 1
                                              ? IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      outlinedbookmark2 =
                                                          Icons.bookmark;
                                                    });
                                                  },
                                                  icon: Icon(
                                                    outlinedbookmark2,
                                                    size: 30,
                                                  ))
                                              : index == 2
                                                  ? IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          outlinedbookmark3 =
                                                              Icons.bookmark;
                                                        });
                                                      },
                                                      icon: Icon(
                                                        outlinedbookmark3,
                                                        size: 30,
                                                      ))
                                                  : index == 3
                                                      ? IconButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              outlinedbookmark4 =
                                                                  Icons
                                                                      .bookmark;
                                                            });
                                                          },
                                                          icon: Icon(
                                                            outlinedbookmark4,
                                                            size: 30,
                                                          ))
                                                      : index == 4
                                                          ? IconButton(
                                                              onPressed: () {
                                                                setState(() {
                                                                  outlinedbookmark5 =
                                                                      Icons
                                                                          .bookmark;
                                                                });
                                                              },
                                                              icon: Icon(
                                                                outlinedbookmark5,
                                                                size: 30,
                                                              ))
                                                          : IconButton(
                                                              onPressed: () {
                                                                setState(() {
                                                                  outlinedbookmark =
                                                                      Icons
                                                                          .bookmark;
                                                                });
                                                              },
                                                              icon: Icon(
                                                                outlinedbookmark,
                                                                size: 30,
                                                              )),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text(
                                    "${posts[index]['likes']} likes",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 20, top: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          "${posts[index]['name']}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "${posts[index]['comment']}",
                                        ),
                                      ],
                                    )),
                                Container(
                                  margin: EdgeInsets.only(left: 20, top: 4),
                                  child: Text(
                                    "...more",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20, top: 4),
                                  child: Text(
                                    "View All ${posts[index]['commentNumber']} comments",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                                ListTile(
                                  isThreeLine: false,
                                  title: Text("Add a comment..."),
                                  trailing: InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      "images/emoji.png",
                                      width: 80,
                                    ),
                                  ),
                                  leading: Container(
                                    width: 30,
                                    height: 30,
                                    child: CircleAvatar(
                                      radius: 30.0,
                                      backgroundImage:
                                          AssetImage('images/profil.jpeg'),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20, top: 4),
                                  child: Text(
                                    "${posts[index]['TimePost']} hours ago",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



