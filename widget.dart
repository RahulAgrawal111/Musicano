import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return Center(
    child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(fontSize: 20),
          children: <TextSpan>[
            TextSpan(
                text: 'Video',
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.white,)),
            TextSpan(
                text: ' Audio',
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.cyan[100],)),
            TextSpan(
                text: ' Player',
                style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white)),
          ],
        ),
      ),);
}