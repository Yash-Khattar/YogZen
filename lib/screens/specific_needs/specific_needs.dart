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
      url: 'https://youtu.be/YXOeBUjmERI?si=pHkw5tcXLS7XU8oH',
      steps: const [
        "Sit on the floor with your legs extended.",
        "Bend your knees and bring the soles of your feet together.",
        "Hold your feet with your hands.",
        "Sit up tall and gently press your knees towards the floor.",
        "Hold for 30 seconds to 1 minute while breathing deeply.",
      ],
    ),
    RecommendedCard(
      postYoga: "assets/yoga/yoga2.webp",
      des: 'Arthritis',
      url: 'https://youtu.be/8NGAIZ0muIY?si=Zb0DncOUaNr9lTgZ',
      steps: const [
        "Begin in a kneeling position with your forearms on the ground.",
        "Interlock your fingers and place the crown of your head on the ground.",
        "Lift your hips and straighten your legs, coming into a tripod position.",
        "Slowly walk your feet towards your head.",
        "Engage your core and lift one leg at a time towards the ceiling.",
        "Hold the pose for 30 seconds to 1 minute.",
      ],
    ),
    RecommendedCard(
      postYoga: "assets/yoga/yoga3.webp",
      des: 'Insomnia',
      url: 'https://youtu.be/YtjKXDHd5hU?si=uXslaQ0ww4Y51NA7',
      steps: const [
        "Sit on the floor with your legs extended wide apart.",
        "Flex your feet and press your thighs into the ground.",
        "Inhale and lengthen your spine.",
        "Exhale and hinge forward from your hips, reaching towards your toes.",
        "Hold for 30 seconds to 1 minute while breathing deeply.",
      ],
    ),
    RecommendedCard(
      postYoga: "assets/yoga/yoga4.webp",
      des: 'Depression',
      url: 'https://youtu.be/6Ep5VzGqDRU?si=exN5SjZ0mYPXwlpf',
      steps: const [
        "Start on your hands and knees in a tabletop position.",
        "Tuck your toes and lift your hips towards the ceiling.",
        "Straighten your legs, creating an inverted 'V' shape with your body.",
        "Engage your core and press your heels towards the floor.",
        "Hold for 30 seconds to 1 minute.",
      ],
    ),
    RecommendedCard(
      postYoga: "assets/yoga/yoga5.webp",
      des: 'Digestive Issues',
      url: 'https://youtu.be/6TUS8UwfCO0?si=h0vUoQf-tBA-F1X2',
      steps: const [
        "Stand at the front of your mat with your feet together.",
        "Distribute your weight evenly across both feet.",
        "Engage your leg muscles and align your head, neck, and spine.",
        "Relax your shoulders and activate your arms.",
        "Hold for 30 seconds to 1 minute.",
      ],
    ),
  ];

  List yogaList = [
    const YogaCard(
      postYoga: "assets/yoga/yoga1.webp",
      des: 'Insomnia',
      url: 'https://youtu.be/YXOeBUjmERI?si=pHkw5tcXLS7XU8oH',
      steps: [
        "Sit on the floor with your legs extended.",
        "Bend your knees and bring the soles of your feet together.",
        "Hold your feet with your hands.",
        "Sit up tall and gently press your knees towards the floor.",
        "Hold for 30 seconds to 1 minute while breathing deeply.",
      ],
    ),
    const YogaCard(
      postYoga: "assets/yoga/yoga2.webp",
      des: 'Arthritis',
      url: 'https://youtu.be/8NGAIZ0muIY?si=Zb0DncOUaNr9lTgZ',
      steps: [
        "Begin in a kneeling position with your forearms on the ground.",
        "Interlock your fingers and place the crown of your head on the ground.",
        "Lift your hips and straighten your legs, coming into a tripod position.",
        "Slowly walk your feet towards your head.",
        "Engage your core and lift one leg at a time towards the ceiling.",
        "Hold the pose for 30 seconds to 1 minute.",
      ],
    ),
    const YogaCard(
      postYoga: "assets/yoga/yoga3.webp",
      des: 'Digestive Issues',
      url: 'https://youtu.be/YtjKXDHd5hU?si=uXslaQ0ww4Y51NA7',
      steps: [
        "Sit on the floor with your legs extended wide apart.",
        "Flex your feet and press your thighs into the ground.",
        "Inhale and lengthen your spine.",
        "Exhale and hinge forward from your hips, reaching towards your toes.",
        "Hold for 30 seconds to 1 minute while breathing deeply.",
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: klightBlue,
      body: FutureBuilder<List<String>>(
      future: fetchYogaPose(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          return Center(child: ListView.builder(itemBuilder: (context, index) => Text(snapshot.data![index]),itemCount: snapshot.data!.length),);
        }
      },
    )
);
}
}

// SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Health", style: Theme.of(context).textTheme.displayLarge),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(8),
//                     boxShadow: const [
//                       BoxShadow(
//                           offset: Offset(0, 4),
//                           blurRadius: 4,
//                           color: Colors.black12),
//                     ],
//                   ),
//                   height: 48,
//                   width: width - 32,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 10),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Icon(
//                           Icons.search,
//                           color: kblackSubHeading.withOpacity(0.5),
//                         ),
//                         const SizedBox(
//                           width: 8,
//                         ),
//                         Text(
//                           "Search for yoga",
//                           style: TextStyle(
//                             color: kblackSubHeading.withOpacity(0.5),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 32,
//                 ),
//                 Text(
//                   "Following",
//                   style: Theme.of(context).textTheme.headlineLarge,
//                 ),
//                 const SizedBox(
//                   height: 12,
//                 ),
//                 Container(
//                   height: 152, // height * 0.19
//                   child: ListView.builder(
//                     itemBuilder: (context, index) {
//                       return yogaList[index];
//                     },
//                     itemCount: 4,
//                     scrollDirection: Axis.horizontal,
//                     shrinkWrap: true,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 32,
//                 ),
//                 Text(
//                   "Recommended",
//                   style: Theme.of(context).textTheme.headlineLarge,
//                 ),
//                 const SizedBox(
//                   height: 12,
//                 ),
//                 ListView.builder(
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   itemCount: recommendedCardList.length,
//                   itemBuilder: (context, index) {
//                     return recommendedCardList[index];
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }