import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/constants.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget(
      {super.key, required this.title, required this.description});

  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 10.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: KTextStyle.titleTealText,
              ),
              Text(
                description,
                style: KTextStyle.descriptionText,
              )
            ],
          ),
        ),
      ),
    );
  }
}
