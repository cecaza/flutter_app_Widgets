import 'package:flutter/material.dart';

class MySafeArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: const SafeArea(
          bottom: false,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text("data"),
            ],
          ),
        ),
      ),
    );
  }
}
