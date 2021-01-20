import 'package:flutter/material.dart';

class FormBuilderScreen extends StatefulWidget {
  @override
  _FormBuilderScreenState createState() => _FormBuilderScreenState();
}

class _FormBuilderScreenState extends State<FormBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Text('FormBuilder Widget'),
          ),
        ),
        VerticalDivider(thickness: 2, width: 1),
        Container(
          color: Colors.black38,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('Properties', textScaleFactor: 1.5),
              ],
            ),
          ),
        )
      ],
    );
  }
}
