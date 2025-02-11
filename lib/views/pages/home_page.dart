import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/constants.dart';
import 'package:flutter_application_2/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const HeroWidget(title: "Home"),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Basic Layout',
                            style: KTextStyle.titleTealText,
                          ),
                          Text(
                            'The description text',
                            style: KTextStyle.descriptionText,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
