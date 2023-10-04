import 'package:flutter/material.dart';
import 'package:yogzen/global/color.dart';

class YogaCard extends StatelessWidget {
  final double height;
  final double width;
  const YogaCard({super.key, this.height = 120.0, this.width = 200.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(child: Text("Image")),
          ),
          const SizedBox(height: 6),
          Text(
            "Yoga Name",
            style: TextStyle(color: kblackSubHeading),
          ),
        ],
      ),
    );
  }
}
