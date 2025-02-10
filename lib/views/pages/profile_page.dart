import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/notifiers.dart';
import 'package:flutter_application_2/views/pages/welcome_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListTile(
        title: const Text('Logout'),
        onTap: () {
          selectedPageNotifier.value = 0;
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const WelcomePage();
          }));
        },
      ),
    );
  }
}
