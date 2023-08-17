import 'package:flutter/material.dart';

class Stk extends StatefulWidget {
  const Stk({super.key});

  @override
  State<Stk> createState() => _StkState();
}

class _StkState extends State<Stk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(90.0),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.black87,
            ),
          ),

        ],
      ),

    );
  }
}