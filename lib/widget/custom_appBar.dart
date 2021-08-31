import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({
    Key? key,
    this.scrollOffset = 0.0,
    }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      color: Colors.black.withOpacity((scrollOffset / 250).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset('assets/images/netflix_logo0.png'),
            const SizedBox(
              width: 12.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => print('TV Show'),
                    child:
                        Text('TV Shows', style: TextStyle(color: Colors.white)),
                  ),
                  GestureDetector(
                    onTap: () => print('Movie'),
                    child: Text('Movie', style: TextStyle(color: Colors.white)),
                  ),
                  GestureDetector(
                    onTap: () => print('Categories'),
                    child: Text('Categories',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.search,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
