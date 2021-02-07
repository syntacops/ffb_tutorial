import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

Function buildValidatorIP(BuildContext context) {
  return FormBuilderValidators.ip(context, errorText: 'Invalid IP');
}
