import 'package:flutter/material.dart';

class CustomFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,  top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(Icons.home, color: Colors.white),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Home',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Icon(Icons.play_circle, color: Colors.white),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Coming Soon',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Icon(Icons.download, color: Colors.white),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Download',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}