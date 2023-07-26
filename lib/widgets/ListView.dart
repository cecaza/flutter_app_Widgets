import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/list_view_builder.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: ListView(
            children: [
              IconButton(
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (_) => MyListViewBuilder(),
                  );
                  Navigator.push(context, route);
                },
                icon: const Icon(
                  Icons.login,
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    18,
                    (index) => Container(
                      width: 100,
                      height: 100,
                      color: Colors.primaries[index],
                      alignment: Alignment.center,
                      child: Text("$index"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
