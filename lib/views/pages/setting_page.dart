import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/pages/expanded_flexible_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key, required this.title});

  final String title;
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () {
          Navigator.pop(context);
        }),
        automaticallyImplyLeading: false,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        duration: Duration(seconds: 5),
                        behavior: SnackBarBehavior.floating,
                        content: Text('Snackbar')));
                  },
                  child: const Text('Snack Bar')),
              const Divider(
                color: Colors.teal,
                thickness: 5.0,
                endIndent: 200.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Alert Title'),
                            content: const Text('Alert Content'),
                            actions: [
                              FilledButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  child: const Text('Alert Box')),
              DropdownButton(
                  value: menuItem,
                  items: const [
                    DropdownMenuItem(value: 'e1', child: Text("Element 1")),
                    DropdownMenuItem(value: 'e2', child: Text("Element 2")),
                    DropdownMenuItem(value: 'e3', child: Text("Element 3"))
                  ],
                  onChanged: (value) {
                    setState(() {
                      menuItem = value;
                    });
                  }),
              TextField(
                controller: controller,
                onEditingComplete: () {
                  setState(() {});
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              Text(controller.text),
              Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value;
                    });
                  }),
              CheckboxListTile(
                  title: const Text('Check me'),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value;
                    });
                  }),
              Switch(
                  value: isSwitched,
                  onChanged: (bool value) {
                    setState(() {
                      isSwitched = value;
                    });
                  }),
              SwitchListTile.adaptive(
                  title: const Text("Switch Me"),
                  value: isSwitched,
                  onChanged: (bool value) {
                    setState(() {
                      isSwitched = value;
                    });
                  }),
              Slider(
                  max: 10.0,
                  divisions: 10,
                  value: sliderValue,
                  onChanged: (double value) {
                    setState(() {
                      sliderValue = value;
                    });
                  }),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.grey,
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text("Elevated Button")),
              ElevatedButton(
                  onPressed: () {}, child: const Text("Elevated Button")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ExpandedFlexiblePage();
                    }));
                  },
                  child: const Text("Expanded flexible test card")),
              FilledButton(
                  onPressed: () {}, child: const Text("Filled Button")),
              TextButton(onPressed: () {}, child: const Text("Text Button")),
              OutlinedButton(
                  onPressed: () {}, child: const Text("Outline Button")),
              CloseButton(
                onPressed: () {},
              ),
              BackButton(
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
