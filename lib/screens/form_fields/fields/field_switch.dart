import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

// Creates On/Off switch field

final exampleSwitch = FormBuilderSwitch(
  name: 'switch',
  initialValue: false,
  title: Text(
    'Accept terms & conditions',
  ),
);
