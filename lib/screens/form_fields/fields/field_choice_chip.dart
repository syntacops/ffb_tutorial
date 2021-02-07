import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

// A list of `Chip`s that acts like radio buttons

final exampleChoiceChip = FormBuilderChoiceChip(
  name: 'choice_chip',
  decoration: InputDecoration(
    labelText: 'What is your favorite ice flavor?',
  ),
  options: [
    FormBuilderFieldOption(value: 'Chocolate', child: Text('Chocolate 🍫')),
    FormBuilderFieldOption(value: 'Strawberry', child: Text('Strawberry 🍓')),
    FormBuilderFieldOption(value: 'Vanilla', child: Text('Vanilla 🍦')),
    FormBuilderFieldOption(
        value: 'Cookie Dough', child: Text('Cookie Dough 🍪')),
    FormBuilderFieldOption(value: 'Mango', child: Text('Mango 🥭')),
  ],
);
