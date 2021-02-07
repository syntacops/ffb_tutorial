import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

// Creates field for selection of a numerical value on a slider

final exampleSlider = FormBuilderSlider(
  name: 'slider',
  min: 0.0,
  max: 10.0,
  initialValue: 7.0,
  divisions: 20,
  activeColor: Colors.red,
  inactiveColor: Colors.pink[100],
  decoration: InputDecoration(
    labelText: 'Number of things',
  ),
);
