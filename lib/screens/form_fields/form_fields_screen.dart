import 'package:ffb_tutorial/screens/form_fields/changing_field_values_screen.dart';
import 'package:ffb_tutorial/screens/form_fields/custom_form_field_screen.dart';
import 'package:flutter/material.dart';

import 'built_in_form_fields_screen.dart';

class FormFieldsScreen extends StatefulWidget {
  @override
  _FormFieldsScreenState createState() => _FormFieldsScreenState();
}

class _FormFieldsScreenState extends State<FormFieldsScreen> {
  int _currentIndex = 0;

  Widget _getScreen() {
    switch (_currentIndex) {
      case 0:
        return BuiltInFormFieldsScreen();
        break;
      case 1:
        return CustomFormFieldScreen();
        break;
      case 2:
        return ChangingFieldValuesFormScreen();
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
                      label: Text('Built-in fields'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.check_box_outlined),
                      selectedIcon: Icon(Icons.check_box_outlined),
                      label: Text('Custom fields'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.check_box_outlined),
                      selectedIcon: Icon(Icons.check_box_outlined),
                      label: Text('Changing field values'),
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
