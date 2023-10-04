import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
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
    YogaCard(
      postYoga: "assets/yoga/yoga1.webp",
      des: 'Buddha konasana',
      url: 'https://youtu.be/YXOeBUjmERI?si=pHkw5tcXLS7XU8oH',
      steps: [
        "Sit on the floor with your legs extended.",
        "Bend your knees and bring the soles of your feet together.",
        "Hold your feet with your hands.",
        "Sit up tall and gently press your knees towards the floor.",
        "Hold for 30 seconds to 1 minute while breathing deeply.",
      ],
    ),
    YogaCard(
      postYoga: "assets/yoga/yoga2.webp",
      des: 'Sirsasana',
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
    YogaCard(
      postYoga: "assets/yoga/yoga3.webp",
      des: 'Upavistha Konasana',
      url: 'https://youtu.be/YtjKXDHd5hU?si=uXslaQ0ww4Y51NA7',
      steps: [
        "Sit on the floor with your legs extended wide apart.",
        "Flex your feet and press your thighs into the ground.",
        "Inhale and lengthen your spine.",
        "Exhale and hinge forward from your hips, reaching towards your toes.",
        "Hold for 30 seconds to 1 minute while breathing deeply.",
      ],
    ),
    YogaCard(
      postYoga: "assets/yoga/yoga4.webp",
      des: 'Adho Mukha Svanasana',
      url: 'https://youtu.be/6Ep5VzGqDRU?si=exN5SjZ0mYPXwlpf',
      steps: [
        "Start on your hands and knees in a tabletop position.",
        "Tuck your toes and lift your hips towards the ceiling.",
        "Straighten your legs, creating an inverted 'V' shape with your body.",
        "Engage your core and press your heels towards the floor.",
        "Hold for 30 seconds to 1 minute.",
      ],
    ),
    YogaCard(
      postYoga: "assets/yoga/yoga5.webp",
      des: 'Tadasana',
      url: 'https://youtu.be/6TUS8UwfCO0?si=h0vUoQf-tBA-F1X2',
      steps: [
        "Stand at the front of your mat with your feet together.",
        "Distribute your weight evenly across both feet.",
        "Engage your leg muscles and align your head, neck, and spine.",
        "Relax your shoulders and activate your arms.",
        "Hold for 30 seconds to 1 minute.",
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final _advancedDrawerController = AdvancedDrawerController();

    void _handleMenuButtonPressed() {
      // NOTICE: Manage Advanced Drawer state through the Controller.
      // _advancedDrawerController.value = AdvancedDrawerValue.visible();
      _advancedDrawerController.showDrawer();
    }

    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).colorScheme.primary.withOpacity(0.5),
              Theme.of(context).colorScheme.primary.withOpacity(0.3),
            ],
          ),
        ),
      ),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        // NOTICE: Uncomment if you want to add shadow behind the page.
        // Keep in mind that it may cause animation jerks.
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //     color: Colors.black12,
        //     blurRadius: 0.0,
        //   ),
        // ],
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: const Text('Expense Tracker'),
        //   leading: IconButton(
        //     onPressed: _handleMenuButtonPressed,
        //     icon: ValueListenableBuilder<AdvancedDrawerValue>(
        //       valueListenable: _advancedDrawerController,
        //       builder: (_, value, __) {
        //         return AnimatedSwitcher(
        //           duration: Duration(milliseconds: 250),
        //           child: Icon(
        //             value.visible ? Icons.clear : Icons.menu,
        //             key: ValueKey<bool>(value.visible),
        //           ),
        //         );
        //       },
        //     ),
        //   ),
        // ),
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
                          icon: CircleAvatar(
                            backgroundImage: Image.asset(
                              "assets/profile.png",
                              fit: BoxFit.cover,
                            ).image,
                            // backgroundColor: kdarkBlue,
                            radius: 32,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                
                                Text(
                                  'Hello, Yash👋',
                                  style: TextStyle(
                                    color: kblackHeading,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
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
                              color: kdarkBlue,
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
                            style: TextStyle(
                                color: kblackSubHeading, fontSize: 12),
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
      ),
      drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 128.0,
                  height: 128.0,
                  margin: const EdgeInsets.only(
                    top: 24.0,
                    bottom: 64.0,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text("LOGO"),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                // ListTile(
                //   onTap: () {},
                //   leading: Icon(Icons.account_circle_rounded),
                //   title: Text('Profile'),
                // ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.edit),
                  title: Text('Set Preferences'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(ThemeMode.system == ThemeMode.dark
                      ? Icons.light_mode
                      : Icons.dark_mode),
                  title: Text(MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? 'Light Mode'
                      : "Dark Mode"),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.logout),
                  title: Text('Sign Out'),
                ),
                Spacer(),
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white54,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: Text('Terms of Service | Privacy Policy'),
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
