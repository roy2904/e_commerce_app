import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'viewWatch.dart';

Widget makeCard({context, startColor, endColor, image}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context,
          PageTransition(type: PageTransitionType.fade, child: ViewWatch(image: image,)));
    },
    child: AspectRatio(
      aspectRatio: 4 / 5,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.0),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[350],
                  blurRadius: 10,
                  offset: Offset(5, 10))
            ]),
      ),
    ),
  );
}
