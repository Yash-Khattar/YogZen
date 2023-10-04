import 'package:flutter/material.dart';
import 'package:yogzen/screens/specific_needs/components/recommended_card.dart';

import '../home/components/yoga_card.dart';
import '../../components/nav_bar.dart';
import '../../global/color.dart';

class SpecificNeeds extends StatelessWidget {
  static const routeName = "/specificNeeds";
  const SpecificNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    List recommendedCardList = [
      RecommendedCard(
        postYoga: "assets/yoga/yoga1.webp",
        des: 'Buddha konasana',
      ),
      RecommendedCard(
        postYoga: "assets/yoga/yoga2.webp",
        des: 'Sirsasana',
      ),
      RecommendedCard(
        postYoga: "assets/yoga/yoga3.webp",
        des: 'Upavistha Konasana',
      ),
      RecommendedCard(
        postYoga: "assets/yoga/yoga4.webp",
        des: 'Adho Mukha Svanasana',
      ),
      RecommendedCard(
        postYoga: "assets/yoga/yoga5.webp",
        des: 'Tadasana',
      ),
    ];

    return Scaffold(
      backgroundColor: klightBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Health", style: Theme.of(context).textTheme.displayLarge),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      const BoxShadow(
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
                        const SizedBox(
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
                const SizedBox(
                  height: 32,
                ),
                Text(
                  "Following",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 152, // height * 0.19
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return const YogaCard(
                        postYoga: "assets/yoga/yoga3.webp",
                        des: 'Upavistha Konasana',
                      );
                    },
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  "Recommended",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 12,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: recommendedCardList.length,
                  itemBuilder: (context, index) {
                    return 
                    
                    recommendedCardList[index];
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
