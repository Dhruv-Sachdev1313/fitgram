import 'package:flutter/material.dart';
import 'package:fitgram/styleguide/text_style.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CircleIndicator extends StatelessWidget {
  final IconData iconData;
  final String text;
  const CircleIndicator({
    Key key,
    @required this.iconData,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 55.0,
      lineWidth: 6.0,
      animation: true,
      percent: 0.3,
      center: Icon(
        iconData,
        size: 24,
        color: const Color(0xFF93C9C7),
      ),
      footer: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: kCardStyle,
        ),
      ),
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: const Color(0xFF93C9C7),
      backgroundColor: const Color(0xFFCDE8DD),
    );
  }
}