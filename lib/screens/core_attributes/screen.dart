import 'package:ffb_tutorial/screens/core_attributes/attributes/attribute_decoration.dart';
import 'package:ffb_tutorial/screens/core_attributes/attributes/attribute_enabled.dart';
import 'package:ffb_tutorial/screens/core_attributes/attributes/attribute_initialValue.dart';
import 'package:ffb_tutorial/screens/core_attributes/attributes/attribute_onchanged.dart';
import 'package:ffb_tutorial/screens/core_attributes/attributes/attribute_validator.dart';
import 'package:ffb_tutorial/screens/core_attributes/attributes/attribute_value_transformer.dart';
import 'package:flutter/material.dart';

import 'attributes/attribute_name.dart';

class CoreAttributesScreen extends StatefulWidget {
  @override
  _CoreAttributesScreenState createState() => _CoreAttributesScreenState();
}

class _CoreAttributesScreenState extends State<CoreAttributesScreen> {
  int _currentIndex = 0;

  Widget _getScreen() {
    switch (_currentIndex) {
      case 0:
        return AttributeNameScreen();
        break;
      case 1:
        return AttributeInitialValueScreen();
        break;
      case 2:
        return AttributeEnabledScreen();
        break;
      case 3:
        return AttributeDecorationScreen();
        break;
      case 4:
        return AttributeValidatorScreen();
        break;
      case 5:
        return AttributeOnChangedScreen();
        break;
      case 6:
        return AttributeValueTransformerScreen();
        break;
      case 7:
        return Container();
        break;
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
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
              icon: Icon(Icons.title),
              selectedIcon: Icon(Icons.title),
              label: Text('name'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.view_array),
              selectedIcon: Icon(Icons.view_array),
              label: Text('initialValue'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.check_box),
              selectedIcon: Icon(Icons.check_box),
              label: Text('enabled'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.remove_red_eye_outlined),
              selectedIcon: Icon(Icons.remove_red_eye_outlined),
              label: Text('decoration'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.warning),
              selectedIcon: Icon(Icons.warning),
              label: Text('validator'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.track_changes),
              selectedIcon: Icon(Icons.track_changes),
              label: Text('onChanged'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.transform),
              selectedIcon: Icon(Icons.transform),
              label: Text('valueTransformer'),
            ),
          ],
        ),
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
