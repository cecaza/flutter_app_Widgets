import 'package:flutter/material.dart';

class CircleButtom extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final bool showBadge;

  const CircleButtom({
    super.key,
    required this.color,
    required this.iconData,
    this.showBadge = false,
  });

  @override
  Widget build(BuildContext context) {
    ///  final value = condition ? value1 : value2;
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              iconData,
              color: Colors.white,
              size: 16,
            ),
          ),
          if (showBadge)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 9,
                height: 9,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
