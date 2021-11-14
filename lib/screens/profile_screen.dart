import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fitgram/styleguide/text_style.dart';

import '../constant.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();

}
class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 2;
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/profile_bg.png',
              ),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 260,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: kWhiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 48,
                                backgroundImage:
                                    AssetImage('assets/images/profile_pic.png'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Dhruv Sachdev',
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Color(0xFF0A4049),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text('India'),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    MaterialButton(
                                      onPressed: () {},
                                      color: Color(0xFF0A4049),
                                      minWidth: double.infinity,
                                      padding: EdgeInsets.symmetric(
                                        vertical: 16,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Text(
                                        'EDIT',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: kWhiteColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '7',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color(0xFF0A4049),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Icon(
                                    Icons.local_fire_department
                                    // style: TextStyle(
                                    //   fontSize: 16,
                                    // ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '1M',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color(0xFF0A4049),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Followers',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '425',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color(0xFF0A4049),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Following',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Friends',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF0A4049),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 28,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage('assets/images/friend_pic1.png'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage('assets/images/friend_pic2.png'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage('assets/images/friend_pic3.png'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage('assets/images/friend_pic4.png'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage('assets/images/friend_pic5.png'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage('assets/images/friend_pic6.png'),
                            ),
                          ),
                          SizedBox(
                            width: 28,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 12,
                      ),
                      child: Text(
                        'Recent Activity',
                        style: TextStyle(
                          color: Color(0xFF0A4049),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 28,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                child:CircularPercentIndicator(
                                  radius: 160.0,
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
                                          size: 30,
                                        ),
                                      ),
                                      Text(
                                        "8,090",
                                        style: kDashboardHeadingStyle.copyWith(
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        "Steps",
                                        style: kCardStyle,
                                      ),
                                    ],
                                  ),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: const Color(0xFF93C9C7),
                                  backgroundColor: const Color(0xFFCDE8DD),
                                ),
                              )
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                child:CircularPercentIndicator(
                                  radius: 160.0,
                                  lineWidth: 12.0,
                                  animation: true,
                                  percent: 0.5,
                                  center: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Icon(
                                          Icons.run_circle_outlined,
                                          size: 30,
                                        ),
                                      ),
                                      Text(
                                        "5,502",
                                        style: kDashboardHeadingStyle.copyWith(
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        "Steps",
                                        style: kCardStyle,
                                      ),
                                    ],
                                  ),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: const Color(0xFF93C9C7),
                                  backgroundColor: const Color(0xFFCDE8DD),
                                ),
                              )
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                child:CircularPercentIndicator(
                                  radius: 160.0,
                                  lineWidth: 12.0,
                                  animation: true,
                                  percent: 0.6,
                                  center: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Icon(
                                          Icons.run_circle_outlined,
                                          size: 30,
                                        ),
                                      ),
                                      Text(
                                        "6,029",
                                        style: kDashboardHeadingStyle.copyWith(
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        "Steps",
                                        style: kCardStyle,
                                      ),
                                    ],
                                  ),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: const Color(0xFF93C9C7),
                                  backgroundColor: const Color(0xFFCDE8DD),
                                ),
                              )
                            ),
                          ),
                          SizedBox(
                            width: 28,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
