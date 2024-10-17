import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckboxDemo(),
    );
  }
}

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Misol'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Checkbox(
                  value: _isChecked1,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _isChecked1 = newValue!;
                    });
                  },
                ),
                Text('Tanlov 1'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: _isChecked2,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _isChecked2 = newValue!;
                    });
                  },
                ),
                Text('Tanlov 2'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: _isChecked3,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _isChecked3 = newValue!;
                    });
                  },
                ),
                Text('Tanlov 3'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
