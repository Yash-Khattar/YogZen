import 'package:flutter/material.dart';
import 'package:yogzen/global/color.dart';

class userPageScreen extends StatelessWidget {
  static const routeName = "/userPageScreen";
  const userPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: Column(
            children: [
              SizedBox(height: height * 0.015),
              Center(
                child: CircleAvatar(
                  //foregroundImage: ,
                  backgroundColor: Colors.grey.shade200,
                  radius: height * 0.08,
                  child: Icon(
                    Icons.person,
                    color: Colors.blue.shade200,
                    size: height * 0.12,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                child: const Text(
                  'Harsh Tiwari',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                child: const Text(
                  'tiwariharsh1408@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      //fontSize: 20,
                      ),
                ),
              ),
              //SizedBox(height: 5,),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Streak',
                          style: TextStyle(
                            color: kblackHeading,
                            fontSize: 20,
                          ),
                        ),
                        const Row(
                          children: [
                            Icon(Icons.local_fire_department_outlined),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '0 days',
                              style: TextStyle(
                                  //color: kblackHeading,
                                  //fontSize: 20,
                                  ),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,   #works without this
                      children: [
                        Text(
                          'Rewards',
                          style: TextStyle(
                            color: kblackHeading,
                            fontSize: 20,
                          ),
                        ),
                        const Row(
                          children: [
                            Icon(Icons.currency_rupee_outlined),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Inactive',
                              style: TextStyle(
                                  //color: kblackHeading,
                                  //fontSize: 20,
                                  ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Progress Tracking',
                      style: Theme.of(context).textTheme.headlineLarge,
                      textAlign: TextAlign.left,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Sun',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Mon',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Tues',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Wed',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Thur',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Fri',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Sat',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: const BoxDecoration(
                            color: kdarkBlue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Health overview',
                      style: Theme.of(context).textTheme.headlineLarge,
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: kdarkBlue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: kdarkBlue,
                        ),
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: kdarkBlue,
                        ),
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: kdarkBlue,
                        ),
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: kdarkBlue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
