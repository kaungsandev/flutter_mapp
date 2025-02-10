import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/notifiers.dart';
import 'package:flutter_application_2/views/pages/home_page.dart';
import 'package:flutter_application_2/views/pages/profile_page.dart';
import 'package:flutter_application_2/views/pages/setting_page.dart';
import 'package:flutter_application_2/views/widgets/navbar_widget.dart';

List<Widget> pages = [const HomePage(), const ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Flutter App'),
        actions: [
          IconButton(
              onPressed: () {
                isDarkModeEnabledNotifier.value =
                    !isDarkModeEnabledNotifier.value;
              },
              icon: ValueListenableBuilder(
                  valueListenable: isDarkModeEnabledNotifier,
                  builder: (context, isDarkMode, child) {
                    return Icon(
                        isDarkMode ? Icons.light_mode : Icons.dark_mode);
                  })),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SettingPage(
                    title: 'Settings',
                  );
                }));
              },
              icon: const Icon(Icons.settings)),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
