import 'package:flutter/material.dart';
import 'package:yogzen/screens/specific_needs/components/recommended_card.dart';

import '../home/components/yoga_card.dart';
import '../../components/nav_bar.dart';
import '../../global/color.dart';

import 'package:yogzen/openai/yoga_api.dart';

class SpecificNeeds extends StatelessWidget {
  static const routeName = "/specificNeeds";
  SpecificNeeds({Key? key}) : super(key: key);

  List recommendedCardList = [
    RecommendedCard(
      postYoga: "assets/yoga/yoga1.webp",
      des: 'Back Pain',
      url: 'https://www.youtube.com/watch?v=fOdrW7nf9gw&pp=ygUSQmh1amFuZ2FzYW5hIHlvZ2Eg',
      // steps: const [
      //   "Sit on the floor with your legs extended.",
      //   "Bend your knees and bring the soles of your feet together.",
      //   "Hold your feet with your hands.",
      //   "Sit up tall and gently press your knees towards the floor.",
      //   "Hold for 30 seconds to 1 minute while breathing deeply.",
      // ],
      name: "Bhujangasana",
    ),
    RecommendedCard(
      postYoga: "assets/yoga/yoga2.webp",
      des: 'Arthritis',
      url: 'https://www.youtube.com/watch?v=t4EFxQDhA8A&pp=ygUNdGFkYXNhbmEgeW9nYQ%3D%3D',
      // steps: [
      //   "Begin in a kneeling position with your forearms on the ground.",
      //   "Interlock your fingers and place the crown of your head on the ground.",
      //   "Lift your hips and straighten your legs, coming into a tripod position.",
      //   "Slowly walk your feet towards your head.",
      //   "Engage your core and lift one leg at a time towards the ceiling.",
      //   "Hold the pose for 30 seconds to 1 minute.",
      // ],
      name: "Tadasan",
    ),
    RecommendedCard(
      postYoga: "assets/yoga/yoga1.webp",
      des: 'Insomnia',
      url: 'https://www.youtube.com/watch?v=2MJGg-dUKh0&pp=ygUNYmFsYXNhbmEgeW9nYQ%3D%3D',
      // steps: [
      //   "Sit on the floor with your legs extended.",
      //   "Bend your knees and bring the soles of your feet together.",
      //   "Hold your feet with your hands.",
      //   "Sit up tall and gently press your knees towards the floor.",
      //   "Hold for 30 seconds to 1 minute while breathing deeply.",
      // ],
      name: "Balasana",
    ),
    RecommendedCard(
      postYoga: "assets/yoga/yoga3.webp",
      des: 'Digestive Issues',
      url: 'https://www.youtube.com/watch?v=g78vfuC4QBI&pp=ygUVc2V0dSBiYW5kaGFzYW5hIHlvZ2Eg',
      // steps: [
      //   "Sit on the floor with your legs extended wide apart.",
      //   "Flex your feet and press your thighs into the ground.",
      //   "Inhale and lengthen your spine.",
      //   "Exhale and hinge forward from your hips, reaching towards your toes.",
      //   "Hold for 30 seconds to 1 minute while breathing deeply.",
      // ],
      name: "Setu Bandhasana",
    ),
  ];

  List yogaList = [
    const YogaCard(
      postYoga: "assets/yoga/yoga1.webp",
      des: 'Insomnia',
      url: 'https://www.youtube.com/watch?v=2MJGg-dUKh0&pp=ygUNYmFsYXNhbmEgeW9nYQ%3D%3D',
      // steps: [
      //   "Sit on the floor with your legs extended.",
      //   "Bend your knees and bring the soles of your feet together.",
      //   "Hold your feet with your hands.",
      //   "Sit up tall and gently press your knees towards the floor.",
      //   "Hold for 30 seconds to 1 minute while breathing deeply.",
      // ],
      name: "Balasana",
    ),
    const YogaCard(
      postYoga: "assets/yoga/yoga2.webp",
      des: 'Arthritis',
      url: 'https://www.youtube.com/watch?v=t4EFxQDhA8A&pp=ygUNdGFkYXNhbmEgeW9nYQ%3D%3D',
      // steps: [
      //   "Begin in a kneeling position with your forearms on the ground.",
      //   "Interlock your fingers and place the crown of your head on the ground.",
      //   "Lift your hips and straighten your legs, coming into a tripod position.",
      //   "Slowly walk your feet towards your head.",
      //   "Engage your core and lift one leg at a time towards the ceiling.",
      //   "Hold the pose for 30 seconds to 1 minute.",
      // ],
      name: "Tadasan",
    ),
    const YogaCard(
      postYoga: "assets/yoga/yoga3.webp",
      des: 'Digestive Issues',
      url: 'https://www.youtube.com/watch?v=g78vfuC4QBI&pp=ygUVc2V0dSBiYW5kaGFzYW5hIHlvZ2Eg',
      // steps: [
      //   "Sit on the floor with your legs extended wide apart.",
      //   "Flex your feet and press your thighs into the ground.",
      //   "Inhale and lengthen your spine.",
      //   "Exhale and hinge forward from your hips, reaching towards your toes.",
      //   "Hold for 30 seconds to 1 minute while breathing deeply.",
      // ],
      name: "Setu Bandhasana",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
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
                  boxShadow: const [
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
                    return yogaList[index];
                  },
                  itemCount: 3,
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
                physics: const NeverScrollableScrollPhysics(),
                itemCount: recommendedCardList.length,
                itemBuilder: (context, index) {
                  return recommendedCardList[index];
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// return Scaffold(
//       backgroundColor: klightBlue,
//       body: FutureBuilder<List<String>>(
//         future: fetchYogaPose(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else {
//             return Center(
//               child: ListView.builder(
//                   itemBuilder: (context, index) => Text(snapshot.data![index]),
//                   itemCount: snapshot.data!.length),
//             );
//           }
//         },
//       ),
//     );
