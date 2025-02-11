import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/lotties/welcome.json', height: 400.0),
                FittedBox(
                  child: Text(
                    'Flutter App',
                    style: TextStyle(
                        fontSize: 50.0,
                        letterSpacing: 50.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                FilledButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginPage(
                          title: 'Login',
                        );
                      }));
                    },
                    style: FilledButton.styleFrom(
                        minimumSize: Size(double.infinity, 40.0)),
                    child: const Text('Login')),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginPage(
                          title: 'Register',
                        );
                      }));
                    },
                    style: FilledButton.styleFrom(
                        minimumSize: Size(double.infinity, 40.0)),
                    child: const Text('Register'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
