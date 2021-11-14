import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitgram/screens/Signin.dart';
import 'package:flutter/material.dart';
import 'package:fitgram/screens/profile_screen.dart';
import 'package:fitgram/screens/DashboardScreen.dart';
import 'package:fitgram/screens/Signup.dart';

import '../constant.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    indicator() {
      return Container(
        width: 6,
        height: 6,
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: kWhiteColor,
          shape: BoxShape.circle,
        ),
      );
    }

    activeIndicator() {
      return Container(
        width: 12,
        height: 12,
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: kWhiteColor,
          ),
        ),
        child: Center(
          child: Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: kWhiteColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider(
            items: [0, 1, 2, 3].map((e) {
              return Container(child:Image.asset('assets/images/gym1.jpg', fit: BoxFit.cover,));
            }).toList(),
            options: CarouselOptions(
              height: double.infinity,
              initialPage: currentIndex,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, top: 80),
            child: Row(
              children: [0, 1, 2, 3].map((item) {
                if (item == currentIndex) return activeIndicator();
                return indicator();
              }).toList(),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 36,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Share Your\nFitness Journey!',
                    style: TextStyle(
                      fontSize: 46,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Meet new friends, get inspired \nand live your best life.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                    color: kWhiteColor,
                    minWidth: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Sign up with email address',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                    color: kFacebookColor,
                    minWidth: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/facebook_logo.png',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Sign up with Facebook',
                          style: TextStyle(
                            fontSize: 16,
                            color: kWhiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'You are going to sign up. Please review our',
                    style: TextStyle(
                      color: kWhiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Terms & Conditions Policies',
                    style: TextStyle(
                      color: kWhiteColor,
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 120,
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
