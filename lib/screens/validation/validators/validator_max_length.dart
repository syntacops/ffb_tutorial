import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

Function buildValidatorMaxLength(BuildContext context) {
  return FormBuilderValidators.maxLength(context, 3);
}
