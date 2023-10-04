import 'package:flutter/material.dart';
import 'package:yogzen/global/color.dart';
import 'package:yogzen/screens/yoga/yoga_tutorial.dart';
import 'package:yogzen/screens/home/home.dart';

class YogaCard extends StatelessWidget {

  final String postYoga;
  final String des;

  const YogaCard({required this.postYoga, required this.des});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: ((context) => YogaTutorial()),
        ));
      },
      child: Container(
        padding: EdgeInsets.only(right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
              child: Image.asset(
                      postYoga,
                      fit: BoxFit.cover,
                    ),
            ),
            ),
            SizedBox(height: 5,),  
            Text(
              des,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
          ],
        ),
      ),
    );
  }
}
