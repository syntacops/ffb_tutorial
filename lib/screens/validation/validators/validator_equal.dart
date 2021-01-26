import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

Function buildValidatorEqual(BuildContext context) {
  return FormBuilderValidators.equal(context, 'YES');
}
