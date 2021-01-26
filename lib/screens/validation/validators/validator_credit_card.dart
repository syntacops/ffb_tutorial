import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

Function buildValidatorCreditCard(BuildContext context) {
  return FormBuilderValidators.creditCard(context);
}
