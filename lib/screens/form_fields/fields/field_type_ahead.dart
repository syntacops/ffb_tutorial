import 'package:ffb_tutorial/core/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

// Creates text field that auto-completes user input from a list of items

final exampleTypeAhead = FormBuilderTypeAhead(
  decoration: InputDecoration(
    labelText: 'Country',
  ),
  name: 'country',
  itemBuilder: (context, country) {
    return ListTile(
      title: Text(country),
    );
  },
  controller: TextEditingController(text: ''),
  initialValue: 'Uganda',
  suggestionsCallback: (query) {
    if (query.isNotEmpty) {
      var lowercaseQuery = query.toLowerCase();
      return allCountries.where((country) {
        return country.toLowerCase().contains(lowercaseQuery);
      }).toList(growable: false)
        ..sort((a, b) => a
            .toLowerCase()
            .indexOf(lowercaseQuery)
            .compareTo(b.toLowerCase().indexOf(lowercaseQuery)));
    } else {
      return allCountries;
    }
  },
);
