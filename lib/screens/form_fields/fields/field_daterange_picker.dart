import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

// Creates field for selecting a range of dates

final ValueChanged _onChanged = (val) => print(val);

final exampleDateRangePicker = FormBuilderDateRangePicker(
  name: 'date_range',
  firstDate: DateTime(1970),
  lastDate: DateTime(2030),
  format: DateFormat('yyyy-MM-dd'),
  onChanged: _onChanged,
  decoration: InputDecoration(
    labelText: 'Date Range',
    helperText: 'Helper text',
    hintText: 'Hint text',
  ),
);
