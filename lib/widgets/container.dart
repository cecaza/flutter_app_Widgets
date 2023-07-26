import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/text.dart';

class MyCointainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(),
      child: Center(
        child: Container(
          width: 200,
          height: 200,
          alignment: Alignment.bottomCenter,
          decoration: const BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          padding: const EdgeInsets.all(20),
          child: Mytext(),
        ),
      ),
    );
  }
}
