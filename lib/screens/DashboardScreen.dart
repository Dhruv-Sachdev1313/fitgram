import 'package:flutter/material.dart';
import 'package:fitgram/styleguide/text_style.dart';
import 'package:fitgram/widgets/card_detail.dart';
import 'package:fitgram/widgets/circle_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';
// import 'package:firgram/lib/styleguide/text_style.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'TODAY',
            style: kDashboardHeadingStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          CircularPercentIndicator(
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
                  "8,970",
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
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CircleIndicator(
                text: "4.2\nMiles",
                iconData: Icons.place_outlined,
              ),
              CircleIndicator(
                  text: "6\nFloors", iconData: Icons.stairs_outlined),
              CircleIndicator(
                text: "15\nMins",
                iconData: Icons.place_outlined,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            color: const Color(0xFFEDEDED),
            width: MediaQuery.of(context).size.width,
            height: 6,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CardDetail(
                heading: 'Heart Rate',
                subHeading: '58 bpm',
                iconData: Icons.favorite,
                iconColor: Color(0xFFF25779),
              ),
              CardDetail(
                heading: 'Calories',
                subHeading: '1678',
                iconData: Icons.local_fire_department,
                iconColor: Color(0xFFFFC468),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const CardDetail(
            heading: 'Sleep',
            subHeading: '7h 20m',
            iconData: Icons.nightlight_outlined,
            iconColor: Color(0xFF1C3AA9),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}