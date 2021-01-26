import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

final exampleRating = FormBuilderRating(
  name: 'rating',
  decoration: InputDecoration(labelText: 'Rate this form'),
  iconSize: 32.0,
  initialValue: 1.0,
  max: 5.0,
);
