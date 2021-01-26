import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

Function buildValidatorRequired(BuildContext context) {
  return FormBuilderValidators.required(context);
}
