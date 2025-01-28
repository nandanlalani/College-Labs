import 'package:flutter/material.dart';
import 'package:lab2/lab10/lab102.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Home",
            style: TextStyle(fontSize: 100),
          ),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return demo102();
                  },
                );
              },
              child: Text("Show"))
        ],
      ),
    );
  }
}
