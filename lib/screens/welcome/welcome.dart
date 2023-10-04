import 'package:flutter/material.dart';
import 'package:yogzen/global/color.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: klightBlue,
        body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'YogZen',
                style: TextStyle(
                    color: kblackHeading,
                    fontSize: 32,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'AI enabled yoga app for all your ',
                style: TextStyle(color: kblackSubHeading),
              ),
              Text(
                'yogic needs!',
                style: TextStyle(color: kblackSubHeading),
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset('assets/welcome.png'),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, "/tabScreen");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: kdarkBlue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(30, 12, 30, 12),
                  child: Text('Get Started'),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(),
              ),
            ],
          )
        ]));
  }
}
