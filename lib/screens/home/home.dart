import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yogzen/global/color.dart';
import 'package:yogzen/screens/user_profile/user_page.dart';

import 'components/yoga_card.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/homeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List yogaList = [
    const YogaCard(
      postYoga: "assets/yoga/yoga1.webp",
      des: 'Buddha konasana',
      url: 'https://youtu.be/YXOeBUjmERI?si=pHkw5tcXLS7XU8oH',
    ),
    const YogaCard(
      postYoga: "assets/yoga/yoga2.webp",
      des: 'Sirsasana',
      url: 'https://youtu.be/8NGAIZ0muIY?si=Zb0DncOUaNr9lTgZ',
    ),
    const YogaCard(
      postYoga: "assets/yoga/yoga3.webp",
      des: 'Upavistha Konasana',
      url: 'https://youtu.be/YtjKXDHd5hU?si=uXslaQ0ww4Y51NA7',
    ),
    const YogaCard(
      postYoga: "assets/yoga/yoga4.webp",
      des: 'Adho Mukha Svanasana',
      url: 'https://youtu.be/6Ep5VzGqDRU?si=exN5SjZ0mYPXwlpf',
    ),
    const YogaCard(
      postYoga: "assets/yoga/yoga5.webp",
      des: 'Tadasana',
      url: 'https://youtu.be/6TUS8UwfCO0?si=h0vUoQf-tBA-F1X2',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: klightBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Greetings
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const userPageScreen()),
                        )),
                        icon: const Icon(
                          FontAwesomeIcons.solidCircleUser,
                          size: 55,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, Yash👋',
                            style: TextStyle(
                              color: kblackHeading,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Good Morning!',
                            style: TextStyle(
                              color: kblackSubHeading,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //daily challenge
                const SizedBox(height: 26),
                Text(
                  "Daily Challenge",
                  style: TextStyle(
                    color: kblackHeading,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Complete your streak and earn rewards!",
                        style: TextStyle(color: kblackSubHeading),
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: kpurple,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Text(
                            "Go to challenge",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const LinearProgressIndicator(
                        backgroundColor: klightBlue,
                        value: 0.7,
                        color: kdarkBlue,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        width: double.infinity,
                        child: Text(
                          "21/30 days",
                          textAlign: TextAlign.right,
                          style:
                              TextStyle(color: kblackSubHeading, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),

                //favrourite
                const SizedBox(height: 26),
                Text(
                  "Favourite",
                  style: TextStyle(
                    color: kblackHeading,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: yogaList.length,
                    itemBuilder: (context, index) {
                      return yogaList[index];
                    },
                  ),
                ),

                //guided workouts
                const SizedBox(height: 26),
                Text(
                  "Guided workouts",
                  style: TextStyle(
                    color: kblackHeading,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: yogaList.length,
                    itemBuilder: (context, index) {
                      return yogaList[index];
                    },
                  ),
                ),

                //Meditation
                const SizedBox(height: 26),
                Text(
                  "Meditation",
                  style: TextStyle(
                    color: kblackHeading,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: yogaList.length,
                    itemBuilder: (context, index) {
                      return yogaList[index];
                    },
                  ),
                ),

                //Yoga Library
                const SizedBox(height: 26),
                Text(
                  "Yoga Library",
                  style: TextStyle(
                    color: kblackHeading,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: yogaList.length,
                    itemBuilder: (context, index) {
                      return yogaList[index];
                    },
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
