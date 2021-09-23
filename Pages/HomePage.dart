import 'package:flutter/material.dart';
import 'package:instagram_clone/Pages/Account.dart';
import 'package:instagram_clone/Pages/Home.dart';
import 'package:instagram_clone/Pages/Movie.dart';
import 'package:instagram_clone/Pages/Search.dart';
import 'package:instagram_clone/Pages/Shop.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // ! Dange Zone
  // variables
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
  // Todo  ? List Widget
  List<Widget> widgetPage = [
    Home(),
    Search(),
    Movie(),
    Shop(),
    Account(),
  ];
  Future refresh() async {
    await Future.delayed(Duration(seconds: 2));
  }

  List chat = [
    {"name": "Abd Ben", "subname": "Active Now", "img": "images/profil6.jpg"},
    {"name": "Zak Blm", "subname": "Offline Now", "img": "images/profil2.jpg"},
    {"name": "snouci Dz", "subname": "Active Now", "img": "images/profil3.jpg"},
    {
      "name": "Aminos Piza",
      "subname": "Offline Now",
      "img": "images/profil4.jpg"
    },
    {
      "name": "Nadir Larbi",
      "subname": "Active Now",
      "img": "images/profil7.jpg"
    },
    {
      "name": "jigo kika",
      "subname": "Offline Now",
      "img": "images/profil9.jpg"
    },
    {"name": "Alice a", "subname": "Active Now", "img": "images/profil99.jpg"},
    {"name": "Tiglong", "subname": "Offline Now", "img": "images/profil5.jpg"},
    {"name": "hmida Dz", "subname": "Active Now", "img": "images/profil.jpeg"},
    {
      "name": "Nadirlo sss",
      "subname": "Offline Now",
      "img": "images/profil7.jpg"
    },
    {"name": "Boss Diga", "subname": "Active Now", "img": "images/profil6.jpg"},
    {"name": "abde dz", "subname": "Offline Now", "img": "images/profil3.jpg"},
    {
      "name": "joklitt 56",
      "subname": "Active Now",
      "img": "images/profil5.jpg"
    },
  ];
  // ? ===============

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: TabBarView(children: [
          Scaffold(
            body: Column(
              children: [
                Expanded(
                    child: Container(
                      color: Colors.red,
                      width: double.infinity,
                      child: Container(
                        margin: EdgeInsets.only(top: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.settings,
                                  color: Colors.black87,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.flash_off,
                                  color: Colors.black87,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.close,
                                  color: Colors.black87,
                                )),
                          ],
                        ),
                      ),
                    ),
                    flex: 4),
                Expanded(
                    child: Container(
                      color: Colors.green[200],
                      width: double.infinity,
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.yellowAccent,
                                  radius: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 40,
                                  ),
                                  backgroundColor: Colors.white,
                                  radius: 50,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.brown,
                                  radius: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.purple,
                                  radius: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.photo_album_outlined,
                                        color: Colors.black87,
                                      )),
                                  Container(margin: EdgeInsets.only(top: 18), child: Text("Story",style: TextStyle(fontSize: 18),)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.camera_alt_outlined,
                                        color: Colors.black87,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    flex: 1)
              ],
            ),
          ),
          Scaffold(
            appBar: selectedIndex == 0
                ? PreferredSize(
                    preferredSize: Size.fromHeight(80.0),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 15),
                      child: AppBar(
                        elevation: 0,
                        title: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Image.asset("images/font.png", width: 120)),
                        backgroundColor: Colors.white,
                        actions: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_box_outlined,
                                size: 30,
                                color: Colors.black,
                              )),
                          SizedBox(
                            width: 2,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border_outlined,
                                size: 30,
                                color: Colors.black,
                              )),
                          SizedBox(
                            width: 2,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "images/messanger.png",
                              height: 30,
                              width: 30,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                    ),
                  )
                : selectedIndex == 1
                    ? PreferredSize(
                        preferredSize: Size.fromHeight(80.0),
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 15),
                          child: AppBar(
                            elevation: 0,
                            backgroundColor: Colors.white,
                            title: Container(
                              child: TextFormField(
                                maxLines: 1,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey[300],
                                  isDense: true, // important line
                                  contentPadding: EdgeInsets.fromLTRB(10, 10,
                                      10, 0), // control your hints text size
                                  hintStyle: TextStyle(
                                    letterSpacing: 2,
                                    color: Colors.black54,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 30,
                                  ),
                                  hintText: '  Search',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : selectedIndex == 2
                        ? null
                        : selectedIndex == 3
                            ? PreferredSize(
                                preferredSize: Size.fromHeight(200.0),
                                child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.only(top: 15),
                                        child: AppBar(
                                          elevation: 0,
                                          title: Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child: Text(
                                                "Shop ",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 1.5),
                                              )),
                                          backgroundColor: Colors.white,
                                          actions: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons
                                                      .collections_bookmark_outlined,
                                                  size: 30,
                                                  color: Colors.black,
                                                )),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.menu,
                                                  size: 30,
                                                  color: Colors.black,
                                                )),
                                            SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        color: Colors.white,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        child: TextFormField(
                                          maxLines: 1,
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.grey[300],
                                            isDense: true, // important line
                                            contentPadding: EdgeInsets.fromLTRB(
                                                10,
                                                10,
                                                10,
                                                0), // control your hints text size
                                            hintStyle: TextStyle(
                                              letterSpacing: 1.5,
                                              color: Colors.black54,
                                            ),
                                            prefixIcon: Icon(
                                              Icons.search,
                                              size: 30,
                                            ),
                                            hintText: ' Search Shops ',
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              borderSide: BorderSide.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 5),
                                              child: MaterialButton(
                                                onPressed: () {},
                                                child: Text("Shops"),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 15),
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Colors.black38),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0)),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 5),
                                              child: MaterialButton(
                                                onPressed: () {},
                                                child: Text("Videos"),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 15),
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Colors.black38),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0)),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 5),
                                              child: MaterialButton(
                                                onPressed: () {},
                                                child: Text("Editor's Picks"),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 15),
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Colors.black38),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0)),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 5),
                                              child: MaterialButton(
                                                onPressed: () {},
                                                child: Text("Collections"),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 15),
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Colors.black38),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0)),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 5),
                                              child: MaterialButton(
                                                onPressed: () {},
                                                child: Text("Shoes"),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 15),
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Colors.black38),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : selectedIndex == 4
                                ? PreferredSize(
                                    preferredSize: Size.fromHeight(80.0),
                                    child: Container(
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(top: 15),
                                      child: AppBar(
                                        elevation: 0,
                                        title: Container(
                                            // color: Colors.red,
                                            margin: EdgeInsets.only(top: 10),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "hmida.071",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                                Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Colors.black,
                                                )
                                              ],
                                            )),
                                        backgroundColor: Colors.white,
                                        actions: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.add_box_outlined,
                                                size: 30,
                                                color: Colors.black,
                                              )),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.menu,
                                                size: 30,
                                                color: Colors.black,
                                              )),
                                          SizedBox(
                                            width: 10,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : null,
            bottomNavigationBar: BottomNavigationBar(
                showSelectedLabels: false, // <-- HERE
                showUnselectedLabels: false, // <-- AND HERE
                // currentIndex: selectedIndex,
                // onTap: (index){print("$index");},
                items: [
                  BottomNavigationBarItem(
                    icon: IconButton(
                      icon: Icon(
                        outlinedHome,
                        color: Colors.black,
                        size: 27,
                      ),
                      onPressed: () {
                        setState(() {
                          outlinedHome = Icons.home;
                          outlinedMovie = Icons.movie_filter_outlined;
                          outlinedShop = Icons.shopping_bag_outlined;
                          outlinedSearch = Icons.search_outlined;
                          selectedIndex = 0;
                          print("$selectedIndex");
                        });
                      },
                    ),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: IconButton(
                      icon: Icon(
                        outlinedSearch,
                        color: Colors.black,
                        size: 27,
                      ),
                      onPressed: () {
                        setState(() {
                          outlinedSearch = Icons.search;
                          outlinedHome = Icons.home_outlined;
                          outlinedMovie = Icons.movie_filter_outlined;
                          outlinedShop = Icons.shopping_bag_outlined;
                          selectedIndex = 1;
                          print("$selectedIndex");
                        });
                      },
                    ),
                    label: "Search",
                  ),
                  BottomNavigationBarItem(
                    icon: IconButton(
                      icon: Icon(
                        outlinedMovie,
                        color: Colors.black,
                        size: 27,
                      ),
                      onPressed: () {
                        setState(() {
                          outlinedMovie = Icons.movie_filter;
                          outlinedSearch = Icons.search_outlined;
                          outlinedHome = Icons.home_outlined;
                          outlinedShop = Icons.shopping_bag_outlined;
                          selectedIndex = 2;
                          print("$selectedIndex");
                        });
                      },
                    ),
                    label: "Movie",
                  ),
                  BottomNavigationBarItem(
                    icon: IconButton(
                      icon: Icon(
                        outlinedShop,
                        color: Colors.black,
                        size: 27,
                      ),
                      onPressed: () {
                        setState(() {
                          outlinedShop = Icons.shopping_bag;
                          outlinedMovie = Icons.movie_filter_outlined;
                          outlinedHome = Icons.home_outlined;
                          selectedIndex = 3;
                          print("$selectedIndex");
                        });
                      },
                    ),
                    label: "Shop",
                  ),
                  BottomNavigationBarItem(
                    icon: InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = 4;
                          print("$selectedIndex");
                        });
                      },
                      child: CircleAvatar(
                        child: null,
                        radius: 15.0,
                        backgroundImage: AssetImage('images/profil.jpeg'),
                      ),
                    ),
                    label: "Account",
                  ),
                ]),
            body: widgetPage.elementAt(selectedIndex),
          ),
          Scaffold(
            appBar: AppBar(
              elevation: 0,
              title: Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "hmida.071",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      )
                    ],
                  )),
              backgroundColor: Colors.white,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.video_call_outlined,
                      size: 30,
                      color: Colors.black87,
                    )),
                SizedBox(
                  width: 2,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      size: 24,
                      color: Colors.black87,
                    )),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            body: DefaultTabController(
              length: 3,
              child: RefreshIndicator(
                onRefresh: refresh,
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: <Widget>[
                    SliverToBoxAdapter(
                      child: SafeArea(
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      width: double.infinity,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: TextFormField(
                                        maxLines: 1,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.grey[300],
                                          isDense: true, // important line
                                          contentPadding: EdgeInsets.fromLTRB(
                                              10,
                                              10,
                                              10,
                                              0), // control your hints text size
                                          hintStyle: TextStyle(
                                            letterSpacing: 2,
                                            color: Colors.black54,
                                          ),
                                          prefixIcon: Icon(
                                            Icons.search,
                                            size: 30,
                                          ),
                                          hintText: '  Search',
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: TabBar(
                        tabs: [
                          Tab(
                              child: Text(
                            "Chats",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                          Tab(
                              child: Text(
                            "Rooms",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                          Tab(
                              child: Text(
                            "0 Requests",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                        ],
                      ),
                    ),
                    SliverFillRemaining(
                      child: TabBarView(
                        children: [
                          Container(
                              child: SingleChildScrollView(
                            child: Column(
                              children: [
                                ...List.generate(10, (index) {
                                  return ListTile(
                                    onTap: () {},
                                    isThreeLine: false,
                                    title: Text(
                                      "${chat[index]['name']}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text("${chat[index]['subname']}"),
                                    trailing: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.photo_camera),
                                    ),
                                    leading: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("${chat[index]['img']}"),
                                    ),
                                  );
                                })
                              ],
                            ),
                          )),
                          Center(
                            child: Text(
                              "Rooms",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Requests",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
