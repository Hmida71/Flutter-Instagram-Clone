import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  // ! =======================
  List follower = [
    {
      "img": "images/profil6.jpg",
      "name": "Dz~Abd",
      "subname": "Follows You",
      "btnName": "Follow",
    },
    {
      "img": "images/profil2.jpg",
      "name": "Zak Blm",
      "subname": "Follows You",
      "btnName": "Follow",
    },
    {
      "img": "images/profile-5.jpeg",
      "name": "Macdonald 071",
      "subname": "Follows You",
      "btnName": "Follow",
    },
    {
      "img": "images/profile-6.jpg",
      "name": "alixa",
      "subname": "Follows You",
      "btnName": "Follow",
    },
  ];
  Future refresh() async {
    await Future.delayed(Duration(seconds: 2));
  }

  bool _canShowButton = true;
  void hideWidget() {
    setState(() {
      _canShowButton = !_canShowButton;
    });
  }

  // ! =================================
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.blue,
                                backgroundImage:
                                    AssetImage("images/profil.jpeg"),
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Text(
                                  "HMIDA MOSTA",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: Text(
                                        "0",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "Posts",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: Text(
                                        "33",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "Followers",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: Text(
                                        "85",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "Following",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex: 5,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                width: double.infinity,
                                child: MaterialButton(
                                  onPressed: () {},
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Colors.black38),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: Text("Edit Profile"),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(
                                    top: 10, bottom: 10, right: 10),
                                width: double.infinity,
                                child: MaterialButton(
                                  onPressed: () {
                                    hideWidget();
                                  },
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Colors.black38),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: _canShowButton == true ? Icon(Icons.arrow_drop_down) :  Icon(Icons.arrow_drop_up) ,
                                ),
                              )),
                        ],
                      ),
                      _canShowButton == true
                          ? Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Discover People",
                                        style: TextStyle(
                                            fontSize: 18,
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
                                                    radius: 50,
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
                                                    padding:
                                                        EdgeInsets.symmetric(
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
                            )
                          : Container(child: null),
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
                      child: Icon(
                    Icons.calendar_view_month,
                    size: 25,
                    color: Colors.black54,
                  )),
                  Tab(
                      child: Icon(
                    Icons.person_outline,
                    size: 25,
                    color: Colors.black54,
                  )),
                ],
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  Center(
                    child: Text(
                      "Profile",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Amis Times",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
