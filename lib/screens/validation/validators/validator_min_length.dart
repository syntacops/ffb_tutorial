import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

Function buildValidatorMinLength(BuildContext context) {
  return FormBuilderValidators.minLength(context, 3);
}
