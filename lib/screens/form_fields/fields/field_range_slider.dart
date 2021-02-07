import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

final exampleRangeSlider = FormBuilderRangeSlider(
  name: 'range_slider',
  initialValue: RangeValues(0, 0),
  //values: RangeValues(0,100),
  min: 0,
  max: 100,
);
