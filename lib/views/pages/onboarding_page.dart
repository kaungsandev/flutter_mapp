import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/pages/login_page.dart';
import 'package:flutter_application_2/views/pages/welcome_page.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WelcomePage(),
              ),
            );
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Lottie.asset('assets/lotties/welcome.json', height: 400.0),
                SizedBox(height: 20.0),
                Text(
                  'Welcome to INNWA IT & Mobile',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  // textAlign: TextAlign.justify,
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 40.0)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginPage(
                          title: "Register",
                        ); // Replace with your page you want to navigate to upon successful login.
                      }));
                    },
                    child: Text('Next')),
                SizedBox(
                  height: 50.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
