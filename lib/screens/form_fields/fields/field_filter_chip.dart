import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

final exampleFilterChip = FormBuilderFilterChip(name: 'filter_chip', options: [
  FormBuilderFieldOption(value: 'Elephant', child: Text('Elephant')),
  FormBuilderFieldOption(value: 'Turtle', child: Text('Turtle')),
  FormBuilderFieldOption(value: 'Monkey', child: Text('Monkey')),
  FormBuilderFieldOption(value: 'Dog', child: Text('Dog')),
  FormBuilderFieldOption(value: 'Cat', child: Text('Cat')),
]);
