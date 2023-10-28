import 'package:flutter/material.dart';
import 'package:yogzen/global/color.dart';

class YogGuru extends StatelessWidget {
  static const routeName = "/yogGuruScreen";

  const YogGuru({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              image: DecorationImage(
                image: AssetImage("assets/community_posts/p1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Nidhi Goyal",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Certified Yoga Instructor",
            style: TextStyle(color: kblackSubHeading),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Nidhi Goyal, a certified yoga instructor, radiates tranquility and wellness.Her classes create a safe and nurturing space for students to explore their potential, promoting not just physical well-being but also mental and spiritual harmony. Join Nidhi on a transformative journey towards a healthier and happier life.",
              style: TextStyle(color: kblackSubHeading),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.zero,
            child: ListTile(
              tileColor: Colors.white,
              leading: Icon(
                Icons.location_on,
                color: kdarkBlue,
              ),
              title: Text(
                "Delhi, India",
                style: TextStyle(color: kdarkBlue),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.zero,
            child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: kdarkBlue,
                ),
                title: Text(
                  "nidhigoyal123@gmail.com",
                  style: TextStyle(color: kdarkBlue),
                )),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(left: 16, bottom: 16),
              height: 55,
              width: 200,
              child: Center(
                child: Text(
                  "Go to Studio",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: kdarkBlue,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
        backgroundColor: kdarkBlue,
      ),
    );
  }
}
