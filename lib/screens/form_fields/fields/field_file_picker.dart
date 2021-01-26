import 'package:flutter/material.dart';
import 'package:form_builder_file_picker/form_builder_file_picker.dart';

// https://github.com/miguelpruivo/flutter_file_picker/wiki/Setup

final exampleFilePicker = FormBuilderFilePicker(
  name: 'file_picker',
  decoration: InputDecoration(labelText: "Attachments"),
  maxFiles: 1,
  previewImages: true,
  onChanged: (val) => print(val),
  selector: Row(
    children: <Widget>[
      Icon(Icons.file_upload),
      Text('Upload'),
    ],
  ),
  onFileLoading: (val) {
    print(val);
  },
);
