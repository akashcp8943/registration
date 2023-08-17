import 'package:flutter/material.dart';

class Demos extends StatefulWidget {
  const Demos({super.key});

  @override
  State<Demos> createState() => _DemosState();
}

class _DemosState extends State<Demos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  width:40,
                  height:40,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text("name")
        ],
      ),
    );
  }
}
