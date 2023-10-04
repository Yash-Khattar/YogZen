import 'package:flutter/material.dart';
import 'package:yogzen/global/color.dart';

class YogaCard extends StatelessWidget {

  const YogaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: 200,
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
