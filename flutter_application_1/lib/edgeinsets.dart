
import 'package:flutter/material.dart';

class EdgeInsetsDemo extends StatelessWidget {
  const EdgeInsetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF7FF),
        elevation: 0,
        toolbarHeight: 40,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.more_horiz,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 1. EdgeInsets.all(30)
          Container(
            color: Colors.red,
            margin: const EdgeInsets.all(30),
            padding: const EdgeInsets.all(30),
            child: const Text(
              'EdgeInsets.all(30)',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black87),
            ),
          ),

          // 2. EdgeInsets.symmetric
          Container(
            color: Colors.yellow,
            margin: const EdgeInsets.symmetric(
              horizontal: 0,
              vertical: 0,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 10,
            ),
            child: const Text(
              'EdgeInsets.symmetric(horizontal: 40, vertical: 10)',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
          ),

          // 3. EdgeInsets.only
          Container(
            color: Colors.blue,
            margin: const EdgeInsets.only(
              left: 15,
              top: 25,
              right: 15,
              bottom: 0,
            ),
            padding: const EdgeInsets.only(
              left: 30,
              top: 10,
              right: 5,
              bottom: 20,
            ),
            child: const Text(
              'EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),

          // 4. EdgeInsets.fromLTRB
          Container(
            color: Colors.green,
            margin: const EdgeInsets.fromLTRB(
              58,
              25,
              58,
              0,
            ),
            padding: const EdgeInsets.fromLTRB(
              10,
              20,
              30,
              40,
            ),
            child: const Text(
              'EdgeInsets.fromLTRB(10, 20, 30, 40)',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
