import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

Function buildValidatorEmail(BuildContext context) {
  return FormBuilderValidators.email(context);
}
