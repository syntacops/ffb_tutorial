import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

// Single Checkbox field

final exampleCheckbox = FormBuilderCheckbox(
  // Core attributes
  name: 'checkbox',
  initialValue: false,
  title: Text('Example checkbox'),
);
