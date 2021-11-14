import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:fitgram/styleguide/text_style.dart';

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
                    child: Text(
                      'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
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