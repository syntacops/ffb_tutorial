import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

Function buildValidatorNumeric(BuildContext context) {
  return FormBuilderValidators.numeric(context);
}
