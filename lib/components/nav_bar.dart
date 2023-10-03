import 'package:flutter/material.dart';

import '../../global/color.dart';
import './hexagon.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  offset: Offset(2, -4),
                  color: Colors.black12,
                ),
              ],
            ),
            width: width,
            padding: EdgeInsets.fromLTRB(0, 4, 0, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    size: 30,
                    color: kblackSubHeading.withOpacity(0.5),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.find_in_page,
                    size: 30,
                    color: kdarkBlue,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.people_outlined,
                    size: 30,
                    color: kblackSubHeading.withOpacity(0.5),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    size: 30,
                    color: kblackSubHeading.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: HexagonWidget(),
            top: -30,
            left: width/2 - 30,
            right: width/2 - 30,
          )
        ],
      ),
    );
  }
}
