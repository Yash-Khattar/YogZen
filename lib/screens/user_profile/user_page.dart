import 'package:flutter/material.dart';
import 'package:yogzen/global/color.dart';

class userPageScreen extends StatelessWidget{
  const userPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity, //optional
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
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
                SizedBox(height: 5,),
                Container(
                  child: const Text('Harsh Tiwari',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    ),
                ),
                Container(
                  child: const Text('tiwariharsh1408@gmail.com',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      //fontSize: 20,
                    ),
                    ),
                ),
                //SizedBox(height: 5,),
                Container(
                  padding: EdgeInsets.all(50),
                  child: Row(
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
                              SizedBox(width: 5,),
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
                      Padding(padding: EdgeInsets.symmetric(horizontal: 60)),
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
                              SizedBox(width: 5,),
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
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(13.0),
                            child: Text(
                              'Sun',
                              style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(13.0),
                              child: Text(
                              'Mon',
                              style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(13.0),
                              child: Text(
                              'Tues',
                              style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(13.0),
                              child: Text(
                              'Wed',
                              style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(13.0),
                              child: Text(
                              'Thur',
                              style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(13.0),
                              child: Text(
                              'Fri',
                              style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(13.0),
                              child: Text(
                              'Sat',
                              style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                        ],
                      ),
                      Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                    color: kdarkBlue,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
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
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ),
            SizedBox(height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                            radius: 35,
                            backgroundColor: kdarkBlue,
                          ),
                SizedBox(width: 15,),
                CircleAvatar(
                            radius: 35,
                            backgroundColor: kdarkBlue,
                          ),
                SizedBox(width: 15,),
                CircleAvatar(
                            radius: 35,
                            backgroundColor: kdarkBlue,
                          ),
                SizedBox(width: 15,),
                CircleAvatar(
                            radius: 35,
                            backgroundColor: kdarkBlue,
                          ),
              ],
            )
              ],
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
