import 'package:flutter/material.dart';
import 'package:hug_mun/models/bnb_custom_painter.dart';
import 'package:hug_mun/widgets/nav_item.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;
  const NavBar({super.key, required this.pageIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            width: size.width,
            height: 80,
            child: Stack(
              children: [
                CustomPaint(
                  size: Size(
                    size.width,
                    80,
                  ),
                  painter: BNBCustomPainter(),
                ),
                Center(
                  heightFactor: 0.6,
                  child: FloatingActionButton(
                    shape: const CircleBorder(),
                    onPressed: () {},
                    backgroundColor: Colors.orange,
                    elevation: 0.1,
                    child: const RotatedBox(
                        quarterTurns: 3,
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        )),
                  ),
                ),
                Container(
                  width: size.width,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      navItem(
                        Icons.people,
                        pageIndex == 0,
                        onTap: () => onTap(0),
                      ),
                      navItem(
                        Icons.question_answer,
                        pageIndex == 1,
                        onTap: () => onTap(1),
                      ),
                      SizedBox(
                        width: size.width * 0.20,
                      ),
                      navItem(
                        Icons.all_inbox,
                        pageIndex == 2,
                        onTap: () => onTap(2),
                      ),
                      navItem(
                        Icons.perm_phone_msg,
                        pageIndex == 3,
                        onTap: () => onTap(3),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
