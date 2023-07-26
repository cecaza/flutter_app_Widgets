import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            18,
            (index) => Container(
              color: Colors.primaries[index],
              height: 50,
              alignment: Alignment.center,
              child: Text("$index"),
            ),
          ),
        ),
      ),
    );
  }
}
