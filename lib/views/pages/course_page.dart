import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/classes/person_class.dart';
import 'package:flutter_application_2/views/widgets/hero_widget.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  Future getData() async {
    var url = Uri.https('api.genderize.io', '/', {'name': 'sofia'});

    var response = await http.get(url);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Person.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Course'),
        ),
        body: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              Widget widget;
              if (snapshot.connectionState == ConnectionState.waiting) {
                widget = Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasData) {
                Person person = snapshot.data;
                widget = SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          HeroWidget(
                            title: person.name,
                          ),
                          Text(person.gender),
                          Text(person.probability.toString()),
                        ],
                      )),
                );
              } else {
                widget = Center(
                  child: Text('Error'),
                );
              }
              return widget;
            }));
  }
}
