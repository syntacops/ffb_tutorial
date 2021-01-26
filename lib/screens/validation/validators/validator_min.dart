import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

Function buildValidatorMin(BuildContext context) {
  return FormBuilderValidators.min(context, 3);
}
