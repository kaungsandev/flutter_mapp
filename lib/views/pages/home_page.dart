import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/pages/course_page.dart';
import 'package:flutter_application_2/views/widgets/hero_widget.dart';
import 'package:flutter_application_2/views/widgets/container_widget.dart';
import 'package:flutter_application_2/data/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.basicLayout,
      KValue.cleanUi,
      KValue.fixBugs,
      KValue.keyConcepts,
    ];

    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const HeroWidget(
                title: "Home",
                nextPage: CoursePage(),
              ),
              ...List.generate(
                  list.length,
                  (index) => ContainerWidget(
                        title: list.elementAt(index),
                        description: 'This is description',
                      )),
            ],
          )),
    );
  }
}
