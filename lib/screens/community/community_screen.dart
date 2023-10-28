import "package:flutter/material.dart";
import "package:yogzen/global/color.dart";
import "package:yogzen/screens/community/components/post_card.dart";
import "package:yogzen/screens/community/yog_guru.dart";

class CommunityScreen extends StatefulWidget {
  static const routeName = "/communityScreen";
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  List yogGuruList = [
    "Nidhi",
    "Kavita",
    "Arjun",
    "Neha",
    "Aditya",
    "Aishwarya",
    "Ananya",
  ];

  List postCardList = [
    PostCard(
      postImage: "assets/community_posts/p1.jpg",
      desc: '',
    ),
    PostCard(
      postImage: "assets/community_posts/p2.jpg",
      desc: '',
    ),
    PostCard(
      postImage: "assets/community_posts/p3.jpg",
      desc: '',
    ),
    PostCard(
      postImage: "assets/community_posts/p4.jpg",
      desc: '',
    ),
    PostCard(
      postImage: "assets/community_posts/p5.jpg",
      desc: '',
    ),
    PostCard(
      postImage: "assets/community_posts/p6.jpg",
      desc: '',
    ),
    PostCard(
      postImage: "assets/community_posts/p7.jpg",
      desc: '',
    ),
    PostCard(
      postImage: "assets/community_posts/p8.jpg",
      desc: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: klightBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Yoga Studio",
                  style: Theme.of(context).textTheme.displayLarge,
                ),

                //Yog Gurus
                const SizedBox(height: 20),
                Text("Yog Gurus",
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 10),
                Container(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: yogGuruList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, YogGuru.routeName);
                                },
                                child: const CircleAvatar(
                                  radius: 32,
                                  backgroundColor: kdarkBlue,
                                  child: Icon(
                                    Icons.person,
                                    size: 40,
                                    color: Colors.white54,
                                  ),
                                  // backgroundImage: AssetImage('assets/images/avatar.png'),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(yogGuruList[index]),
                            ],
                          ),
                        );
                      }),
                ),

                //Feed
                const SizedBox(height: 20),
                Text("Feed", style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 10),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: postCardList.length,
                    itemBuilder: (context, index) {
                      return postCardList[index];
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
