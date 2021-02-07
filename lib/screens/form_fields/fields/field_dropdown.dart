import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

// Creates field for Dropdown button

var genderOptions = ['Male', 'Female', 'Other'];

final exampleDropdown = FormBuilderDropdown(
  name: 'gender',
  decoration: InputDecoration(
    labelText: 'Gender',
  ),
  // initialValue: 'Male',
  allowClear: true,
  hint: Text('Select Gender'),
  items: genderOptions
      .map((gender) => DropdownMenuItem(
            value: gender,
            child: Text('$gender'),
          ))
      .toList(),
);
