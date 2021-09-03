import 'package:flutter/material.dart';
import 'package:netflix/screen/detail_screen.dart';
import 'package:netflix/widget/widgets.dart';
import 'package:netflix/data/netflix_json.dart';
import 'package:netflix/data/favorite_json.dart';
import 'package:netflix/screen/favorite_detail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        // extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey[800],
          child: const Icon(Icons.cast),
          onPressed: () => print('Cast'),
        ),
        // appBar: PreferredSize(
        //   preferredSize: Size(screenSize.width, 50.0),
        //   child: CustomAppBar(), //scrollOffset: _scrollOffset
        // ),
        bottomNavigationBar: CustomFooter(),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: size.height - 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 500,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/stranger_things.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: 500,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(1),
                                Colors.black.withOpacity(0),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                        Container(
                          height: 500,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 140),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/st.png',
                                  width: 200,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Scary    -    Exciting    -    Horror',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 25,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'My List',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: 13, left: 8, top: 2, bottom: 2),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Play',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: Colors.white,
                              size: 25,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Information',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Text(
                            'Only On Netflix',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              OnlyOnNetflix_json.length,
                              (index) {
                                return GestureDetector(
                                  onTap: () {
                                    print(index);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                VideoDetail(value: index)));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 6, right: 8),
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                OnlyOnNetflix_json[index]
                                                    ['img_list']),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, top: 10.0),
                          child: Text(
                            'My Favorite',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                              favorite.length,
                              (index) {
                                return GestureDetector(
                                  onTap: () {
                                    print(index);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                FavoriteDetail(value: index)));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 6, right: 8),
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                favorite[index]['img_list']),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: SafeArea(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Image.asset(
                              'assets/images/netflix_logo0.png',
                              width: 35,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: null,
                                icon: Image.asset(
                                  'assets/images/profile.png',
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'TV Shows',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Movies',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Row(
                            children: [
                              Text(
                                'TV Shows',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
