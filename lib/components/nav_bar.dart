import 'package:flutter/material.dart';

import 'package:yogzen/screens/community/community_screen.dart';
import 'package:yogzen/screens/home/home.dart';
import 'package:yogzen/screens/specific_needs/specific_needs.dart';
import 'package:yogzen/screens/user_profile/user_page.dart';

import '../../global/color.dart';
import './hexagon.dart';

class NavBar extends StatefulWidget {
  final int idx;
  final Function change;
  const NavBar({
    Key? key,
    required this.idx,
    required this.change,
  }) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
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
                onPressed: () => widget.change(0),
                icon: Icon(
                  Icons.home,
                  size: 30,
                  color: widget.idx == 0 ? kdarkBlue : kblackSubHeading.withOpacity(0.5),
                ),
              ),
              IconButton(
                onPressed:() => widget.change(1),
                icon: Icon(
                  Icons.find_in_page,
                  size: 30,
                  color: widget.idx == 1 ? kdarkBlue : kblackSubHeading.withOpacity(0.5),
                ),
              ),
              SizedBox(
                width: 60,
              ),
              IconButton(
                onPressed: () => widget.change(2),
                icon: Icon(
                  Icons.people_outlined,
                  size: 30,
                  color: widget.idx == 2 ? kdarkBlue : kblackSubHeading.withOpacity(0.5),
                ),
              ),
              IconButton(
                onPressed: () => widget.change(3),
                icon: Icon(
                  Icons.person,
                  size: 30,
                  color: widget.idx == 3 ? kdarkBlue : kblackSubHeading.withOpacity(0.5),
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
    );
  }
}
