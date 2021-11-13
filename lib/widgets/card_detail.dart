import 'package:flutter/material.dart';
import 'package:fitgram/styleguide/text_style.dart';

class CardDetail extends StatelessWidget {
  final String heading;
  final String subHeading;
  final IconData iconData;
  final Color iconColor;

  const CardDetail({
    Key key, @required this.heading, @required this.subHeading, @required this.iconData, @required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: 165,
      width: 130,
      decoration: const BoxDecoration(
        color: Color(0xFFCDE8DD),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Icon(
           iconData,
            color: iconColor,
            size: 53,
          ),
          Text(subHeading,style: kCardStyle.copyWith(fontSize: 23),),
          Text(
            heading,
            style: kCardStyle,
          ),
        ],
      ),
    );
  }
}