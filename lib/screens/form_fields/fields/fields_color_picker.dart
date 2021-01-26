import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

final exampleColorPicker = FormBuilderColorPickerField(
  name: 'color_picker',
  colorPickerType: ColorPickerType.MaterialPicker,
  decoration: InputDecoration(labelText: 'Pick Color'),
);
