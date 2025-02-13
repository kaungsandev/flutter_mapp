import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title, this.nextPage});

  final String title;
  final Widget? nextPage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextPage != null
          ? () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => nextPage!));
            }
          : null,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Hero(
            tag: 'hero1',
            child: AspectRatio(
              aspectRatio: 1920 / 1080,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'assets/images/bg.jpg',
                    fit: BoxFit.cover,
                    color: Colors.teal,
                    colorBlendMode: BlendMode.darken,
                  )),
            ),
          ),
          FittedBox(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  letterSpacing: 50.0),
            ),
          )
        ],
      ),
    );
  }
}
