import 'package:flutter/material.dart';

import '../../components/yoga_card.dart';
import '../../components/nav_bar.dart';
import '../../global/color.dart';

class SpecificNeeds extends StatelessWidget {
  static const routeName = "/specificNeeds";
  const SpecificNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: klightBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Health",
                    style: Theme.of(context).textTheme.displayLarge),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          color: Colors.black12),
                    ],
                  ),
                  height: 48,
                  width: width - 32,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.search,
                          color: kblackSubHeading.withOpacity(0.5),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Search for yoga",
                          style: TextStyle(
                            color: kblackSubHeading.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  "Following",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 146, // height * 0.19
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return YogaCard();
                    },
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  "Recommended",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(
                  height: 12,
                ),
                Column(
                  children: List.generate(
                    4,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: YogaCard(
                        height: 150,
                        width: (width - 32),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
