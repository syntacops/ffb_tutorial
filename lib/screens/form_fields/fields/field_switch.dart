import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

final exampleSwitch = FormBuilderSwitch(
  name: 'switch',
  initialValue: false,
  title: Text(
    'Accept terms & conditions',
  ),
);
