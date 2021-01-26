import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

Function buildValidatorURL(BuildContext context) {
  return FormBuilderValidators.url(context);
}
