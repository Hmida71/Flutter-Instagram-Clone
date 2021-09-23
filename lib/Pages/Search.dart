import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Future refresh() async {
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        onRefresh: refresh,
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: 245,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            width: double.infinity,
                            height: 245,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                image: AssetImage("images/4.png"),
                                // fit: BoxFit.cover,
                              ),
                            ),
                            child: null,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: double.infinity,
                            height: 245,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                image: AssetImage("images/3.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: null,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 245,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 245,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                image: AssetImage("images/6.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: null,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 245,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            width: double.infinity,
                            height: 245,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                image: AssetImage("images/4.png"),
                                // fit: BoxFit.cover,
                              ),
                            ),
                            child: null,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: double.infinity,
                            height: 245,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                image: AssetImage("images/3.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: null,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 245,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 245,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                image: AssetImage("images/7.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: null,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 245,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 245,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                image: AssetImage("images/8.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: null,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 600,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.red,
                                height: 200,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.green,
                                height: 200,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.yellow[100],
                                height: 200,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.deepPurple,
                                height: 200,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.brown,
                                height: 200,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
