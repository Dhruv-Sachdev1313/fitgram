import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:fitgram/styleguide/text_style.dart';
import 'package:fitgram/widgets/circle_indicator.dart';

class ExplorePage extends StatefulWidget {
  @override
   _ExplorePageState createState() => _ExplorePageState();
}
class _ExplorePageState extends State<ExplorePage> {
  int _selectedIndex = 1;

  Icon icon_one = Icon(Icons.favorite_border, color: Colors.black);

  
   void onTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
    if (_selectedIndex == 1) {
      Navigator.of(context).pushReplacementNamed('/explore');
    } else if (_selectedIndex == 0) {
      Navigator.of(context).pushReplacementNamed('/home');
    } else {
      Navigator.of(context).pushReplacementNamed('/profile');
    }
  }

  void onIconTapped(){
    setState(() {
      icon_one = Icon(Icons.favorite, color: Colors.red);
    });
  }
   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.person, //logo will go here
        //     color: Colors.black,
        //   ),
        //   onPressed: () {
        //     // Go to profile page
        //     Navigator.of(context).pushReplacementNamed('/onboard');
        //   },
        
        title: Row(
          children: [
            SizedBox(
              width: 80.0,
            ),
            // Image.asset(
            //   'assets/icons/logo_red_small.png',
            //   fit: BoxFit.contain,
            //   height: 48,
            // ),
            Container(
              padding: const EdgeInsets.all(0.0),
              child: Text(
                'Fitgram',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        )
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage('assets/images/friend_pic1.png'),
                            ),
                    title: const Text('Dhruv Sachdev'),
                    subtitle: Text(
                      'Just Now',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        CircularPercentIndicator(
            radius: 110.0,
            lineWidth: 12.0,
            animation: true,
            percent: 0.7,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.run_circle_outlined,
                    size: 20,
                  ),
                ),
                Text(
                  "8,970",
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 20,
                    letterSpacing: -2,
                    color: Colors.black,
                    fontWeight: FontWeight.w400)
                ),
                Text(
                  "Steps",
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 20,
                    letterSpacing: -2,
                    color: Colors.black,
                    fontWeight: FontWeight.w100),
                ),
              ],
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: const Color(0xFF93C9C7),
            backgroundColor: const Color(0xFFCDE8DD),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            CircleIndicator(
                text: "4.2\nMiles",
                iconData: Icons.place_outlined,
              ),
              // SizedBox(
              //   width: 80,
              // ),
              CircleIndicator(
                  text: "6\nFloors", iconData: Icons.stairs_outlined),
              //     SizedBox(
              //   width: 80,
              // ),
              CircleIndicator(
                text: "15\nMins",
                iconData: Icons.place_outlined,
              ),
          ],)
                      ],
                    )
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          // onIconTapped();
                        },
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Perform some action
                        },
                        icon: Icon(
                          Icons.comment_outlined,
                          color: Colors.black,
                        )
                      ),
                    ],
                  ),
                  // Image.asset('assets/card-sample-image.jpg'),
                ],
              ),
            ),
                  Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage('assets/images/friend_pic6.png'),
                            ),
                    title: const Text('Sean Holmes'),
                    subtitle: Text(
                      '2 hours ago',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        CircularPercentIndicator(
            radius: 110.0,
            lineWidth: 12.0,
            animation: true,
            percent: 0.95,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.run_circle_outlined,
                    size: 20,
                  ),
                ),
                Text(
                  "9,601",
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 20,
                    letterSpacing: -2,
                    color: Colors.black,
                    fontWeight: FontWeight.w400)
                ),
                Text(
                  "Steps",
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 20,
                    letterSpacing: -2,
                    color: Colors.black,
                    fontWeight: FontWeight.w100),
                ),
              ],
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: const Color(0xFF93C9C7),
            backgroundColor: const Color(0xFFCDE8DD),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            CircleIndicator(
                text: "5.9\nMiles",
                iconData: Icons.place_outlined,
              ),
              // SizedBox(
              //   width: 80,
              // ),
              CircleIndicator(
                  text: "8\nFloors", iconData: Icons.stairs_outlined),
              //     SizedBox(
              //   width: 80,
              // ),
              CircleIndicator(
                text: "30\nMins",
                iconData: Icons.place_outlined,
              ),
          ],)
                      ],
                    )
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          onIconTapped();
                        },
                        icon: icon_one,
                      ),
                      IconButton(
                        onPressed: () {
                          // Perform some action
                        },
                        icon: Icon(
                          Icons.comment_outlined,
                          color: Colors.black,
                        )
                      ),
                    ],
                  ),
                  // Image.asset('assets/card-sample-image.jpg'),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage('assets/images/friend_pic5.png'),
                            ),
                    title: const Text('Elizabeth Watson'),
                    subtitle: Text(
                      '7 hours ago',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        CircularPercentIndicator(
            radius: 110.0,
            lineWidth: 12.0,
            animation: true,
            percent: 0.57,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.run_circle_outlined,
                    size: 20,
                  ),
                ),
                Text(
                  "5,702",
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 20,
                    letterSpacing: -2,
                    color: Colors.black,
                    fontWeight: FontWeight.w400)
                ),
                Text(
                  "Steps",
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 20,
                    letterSpacing: -2,
                    color: Colors.black,
                    fontWeight: FontWeight.w100),
                ),
              ],
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: const Color(0xFF93C9C7),
            backgroundColor: const Color(0xFFCDE8DD),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            CircleIndicator(
                text: "3.6\nMiles",
                iconData: Icons.place_outlined,
              ),
              // SizedBox(
              //   width: 80,
              // ),
              CircleIndicator(
                  text: "5\nFloors", iconData: Icons.stairs_outlined),
              //     SizedBox(
              //   width: 80,
              // ),
              CircleIndicator(
                text: "20\nMins",
                iconData: Icons.place_outlined,
              ),
          ],)
                      ],
                    )
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          onIconTapped();
                        },
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Perform some action
                        },
                        icon: Icon(
                          Icons.comment_outlined,
                          color: Colors.black,
                        )
                      ),
                    ],
                  ),
                  // Image.asset('assets/card-sample-image.jpg'),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage('assets/images/friend_pic4.png'),
                            ),
                    title: const Text('Matt L.'),
                    subtitle: Text(
                      '9 hours ago',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        CircularPercentIndicator(
            radius: 110.0,
            lineWidth: 12.0,
            animation: true,
            percent: 0.68,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.run_circle_outlined,
                    size: 20,
                  ),
                ),
                Text(
                  "6,812",
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 20,
                    letterSpacing: -2,
                    color: Colors.black,
                    fontWeight: FontWeight.w400)
                ),
                Text(
                  "Steps",
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 20,
                    letterSpacing: -2,
                    color: Colors.black,
                    fontWeight: FontWeight.w100),
                ),
              ],
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: const Color(0xFF93C9C7),
            backgroundColor: const Color(0xFFCDE8DD),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            CircleIndicator(
                text: "4.9\nMiles",
                iconData: Icons.place_outlined,
              ),
              // SizedBox(
              //   width: 80,
              // ),
              CircleIndicator(
                  text: "7\nFloors", iconData: Icons.stairs_outlined),
              //     SizedBox(
              //   width: 80,
              // ),
              CircleIndicator(
                text: "20\nMins",
                iconData: Icons.place_outlined,
              ),
          ],)
                      ],
                    )
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          onIconTapped();
                        },
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Perform some action
                        },
                        icon: Icon(
                          Icons.comment_outlined,
                          color: Colors.black,
                        )
                      ),
                    ],
                  ),
                  // Image.asset('assets/card-sample-image.jpg'),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage('assets/images/friend_pic3.png'),
                            ),
                    title: const Text('Rohan G.'),
                    subtitle: Text(
                      '16 hours ago',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        CircularPercentIndicator(
            radius: 110.0,
            lineWidth: 12.0,
            animation: true,
            percent: 0.92,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.run_circle_outlined,
                    size: 20,
                  ),
                ),
                Text(
                  "9,270",
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 20,
                    letterSpacing: -2,
                    color: Colors.black,
                    fontWeight: FontWeight.w400)
                ),
                Text(
                  "Steps",
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 20,
                    letterSpacing: -2,
                    color: Colors.black,
                    fontWeight: FontWeight.w100),
                ),
              ],
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: const Color(0xFF93C9C7),
            backgroundColor: const Color(0xFFCDE8DD),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            CircleIndicator(
                text: "7.2\nMiles",
                iconData: Icons.place_outlined,
              ),
              // SizedBox(
              //   width: 80,
              // ),
              CircleIndicator(
                  text: "7\nFloors", iconData: Icons.stairs_outlined),
              //     SizedBox(
              //   width: 80,
              // ),
              CircleIndicator(
                text: "40\nMins",
                iconData: Icons.place_outlined,
              ),
          ],)
                      ],
                    )
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          // onIconTapped();
                        },
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Perform some action
                        },
                        icon: Icon(
                          Icons.comment_outlined,
                          color: Colors.black,
                        )
                      ),
                    ],
                  ),
                  // Image.asset('assets/card-sample-image.jpg'),
                ],
              ),
            ),
                ],
              ),
              ),
            flex: 1,
          )
        ],
      ),
       bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.green[700],
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30.0,
              ),
              title: Text('Dashboard')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
                size: 30.0,
              ),
              title: Text('Explore')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30.0,
              ),
             title: Text('profile') ),
        ],
        onTap: onTapped,
      ),
    );
  }
} 