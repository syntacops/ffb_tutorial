import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

// Creates a list of Checkboxes for selecting multiple options

final exampleCheckboxGroup = FormBuilderCheckboxGroup(
  name: 'checkboxGroup',
  options: [
    FormBuilderFieldOption(
      value: 'Like',
      child: Text('Like'),
    ),
    FormBuilderFieldOption(
      value: 'Subscribe',
      child: Text('Subscribe'),
    ),
    FormBuilderFieldOption(
      value: 'Share',
      child: Text('Share'),
    ),
    FormBuilderFieldOption(
      value: 'Comment',
      child: Text('Comment'),
    ),
  ],
);
