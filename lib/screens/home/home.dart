import 'package:flutter/material.dart';
import 'package:yogzen/global/color.dart';
import 'package:yogzen/screens/home/components/yoga_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List yogaList = [
    YogaCard(),
    YogaCard(),
    YogaCard(),
    YogaCard(),
    YogaCard(),
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
                      const CircleAvatar(
                        radius: 32,
                        backgroundColor: kdarkBlue,
                        // backgroundImage: AssetImage('assets/images/avatar.png'),
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
                      SizedBox(height: 6),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Expanded(
                          child: Text(
                            "21/30 days",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: kblackSubHeading, fontSize: 12),
                          ),
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
