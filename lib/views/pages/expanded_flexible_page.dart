import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(child: Container(height: 20.0, color: Colors.red)),
                Flexible(
                    child: Container(
                  height: 20.0,
                  color: Colors.green,
                  child: Text('Hello World'),
                )),
              ],
            ),
            Divider(),
            Row(
              children: [
                Flexible(
                    child: Container(
                  height: 20.0,
                  color: Colors.green,
                  child: Text('Hello World'),
                )),
                Expanded(
                    child: Container(
                        height: 20.0,
                        color: Colors.red,
                        child: Text('Hello World'))),
              ],
            ),
          ],
        ));
  }
}
