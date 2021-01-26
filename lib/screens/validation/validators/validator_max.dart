import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

Function buildValidatorMax(BuildContext context) {
  return FormBuilderValidators.max(context, 3);
}
