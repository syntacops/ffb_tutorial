import 'package:flutter/material.dart';
import 'package:form_builder_map_field/form_builder_map_field.dart';

// Creates a location field

final exampleLocationField = FormBuilderLocationField(
  name: 'location_field',
  enabled: false,
);

final exampleLocationFieldContents = Column(
  children: [
    exampleLocationField,
    SizedBox(height: 20),
    Text(
      'Google Maps API Key needed!',
      textScaleFactor: 1.5,
      style: TextStyle(color: Colors.red),
    ),
  ],
);
