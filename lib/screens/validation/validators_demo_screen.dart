import 'package:ffb_tutorial/screens/validation/validators/validator_email.dart';
import 'package:ffb_tutorial/screens/validation/validators/validator_equal.dart';
import 'package:ffb_tutorial/screens/validation/validators/validator_integer.dart';
import 'package:ffb_tutorial/screens/validation/validators/validator_max_length.dart';
import 'package:ffb_tutorial/screens/validation/validators/validator_numeric.dart';
import 'package:ffb_tutorial/screens/validation/validators/validator_required.dart';
import 'package:ffb_tutorial/screens/validation/validators/validator_url.dart';
import 'package:ffb_tutorial/screens/validation/validators_shared_form.dart';
import 'package:flutter/material.dart';

import 'validators/validator_credit_card.dart';
import 'validators/validator_date.dart';
import 'validators/validator_ip.dart';
import 'validators/validator_match.dart';
import 'validators/validator_max.dart';
import 'validators/validator_min.dart';

class ValidatorsDemoScreen extends StatefulWidget {
  @override
  _FormFieldsScreenState createState() => _FormFieldsScreenState();
}

class _FormFieldsScreenState extends State<ValidatorsDemoScreen> {
  int _currentIndex = 0;

  Widget _getScreen() {
    switch (_currentIndex) {
      case 0:
        return ValidatorsSharedForm(
            title: 'creditCard -> 4111 1111 1111 1111',
            validator: buildValidatorCreditCard(context));
        break;
      case 1:
        return ValidatorsSharedForm(
            title: 'dateString -> YYYY-MM-DD',
            validator: buildValidatorDateString(context));
        break;
      case 2:
        return ValidatorsSharedForm(
          title: 'email',
          validator: buildValidatorEmail(context),
        );
        break;
      case 3:
        return ValidatorsSharedForm(
          title: 'equal -> YES',
          validator: buildValidatorEqual(context),
        );
        break;
      case 4:
        return ValidatorsSharedForm(
          title: 'notEqual -> YES',
          validator: buildValidatorEqual(context),
        );
        break;
      case 5:
        return ValidatorsSharedForm(
          title: 'integer -> any integer value',
          validator: buildValidatorInteger(context),
        );
        break;
      case 6:
        return ValidatorsSharedForm(
          title: 'ip -> for example 192.168.0.1 (range: 0-255)',
          validator: buildValidatorIP(context),
        );
        break;
      case 7:
        return ValidatorsSharedForm(
          title: 'email -> has to match email pattern',
          validator: buildValidatorMatch(context),
          image: Image(
            height: 300,
            image: AssetImage('assets/images/validation/email_pattern.png'),
          ),
        );
        break;
      case 8:
        return ValidatorsSharedForm(
          title: 'max -> max value is 3',
          validator: buildValidatorMax(context),
        );
        break;
      case 9:
        return ValidatorsSharedForm(
            title: 'maxLength -> maxLength is 3',
            validator: buildValidatorMaxLength(context));
        break;
      case 10:
        return ValidatorsSharedForm(
            title: 'min -> min value is 3',
            validator: buildValidatorMin(context));
        break;
      case 11:
        return ValidatorsSharedForm(
            title: 'numeric -> value has to be numeric',
            validator: buildValidatorNumeric(context));
        break;
      case 12:
        return ValidatorsSharedForm(
            title: 'required -> field is required',
            validator: buildValidatorRequired(context));
        break;
      case 13:
        return ValidatorsSharedForm(
            title: 'URL -> value has to be a URL',
            validator: buildValidatorURL(context));
        break;
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LayoutBuilder(builder: (context, constraint) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: NavigationRail(
                  backgroundColor: Colors.white38,
                  selectedIndex: _currentIndex,
                  onDestinationSelected: (int index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  labelType: NavigationRailLabelType.all,
                  destinations: [
                    NavigationRailDestination(
                      icon: Icon(Icons.check_box),
                      selectedIcon: Icon(Icons.check_box),
                      label: Text('creditCard'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.check_box_outlined),
                      selectedIcon: Icon(Icons.check_box_outlined),
                      label: Text('dateString'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.input),
                      selectedIcon: Icon(Icons.input),
                      label: Text('email'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      selectedIcon: Icon(Icons.remove_red_eye_outlined),
                      label: Text('equal'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      selectedIcon: Icon(Icons.remove_red_eye_outlined),
                      label: Text('notEqual'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      selectedIcon: Icon(Icons.remove_red_eye_outlined),
                      label: Text('integer'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      selectedIcon: Icon(Icons.remove_red_eye_outlined),
                      label: Text('ip'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      selectedIcon: Icon(Icons.remove_red_eye_outlined),
                      label: Text('match'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      selectedIcon: Icon(Icons.remove_red_eye_outlined),
                      label: Text('max'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      selectedIcon: Icon(Icons.remove_red_eye_outlined),
                      label: Text('maxLength'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      selectedIcon: Icon(Icons.remove_red_eye_outlined),
                      label: Text('min'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      selectedIcon: Icon(Icons.remove_red_eye_outlined),
                      label: Text('minLength'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      selectedIcon: Icon(Icons.remove_red_eye_outlined),
                      label: Text('numeric'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      selectedIcon: Icon(Icons.remove_red_eye_outlined),
                      label: Text('required'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      selectedIcon: Icon(Icons.remove_red_eye_outlined),
                      label: Text('url'),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),

        VerticalDivider(thickness: 1, width: 1),
        // This is the main content.
        Expanded(
          child: Center(
            child: _getScreen(),
          ),
        )
      ],
    );
  }
}
