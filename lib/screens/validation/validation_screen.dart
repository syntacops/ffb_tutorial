import 'package:ffb_tutorial/screens/validation/validators_demo_screen.dart';
import 'package:flutter/material.dart';

class ValidationScreen extends StatefulWidget {
  @override
  _ValidationScreenState createState() => _ValidationScreenState();
}

class _ValidationScreenState extends State<ValidationScreen> {
  int _currentIndex = 0;

  Widget _getScreen() {
    switch (_currentIndex) {
      case 0:
        return ValidatorsDemoScreen();
        break;
      case 1:
        return Center(child: Text('$_currentIndex'));
        break;
      case 2:
        return Center(child: Text('$_currentIndex'));
        break;
      case 3:
        return Center(child: Text('$_currentIndex'));
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
              label: Text('Built-In Validators'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.view_array),
              selectedIcon: Icon(Icons.view_array),
              label: Text('Multiple validators'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.check_box),
              selectedIcon: Icon(Icons.check_box),
              label: Text('Conditional validation'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.remove_red_eye_outlined),
              selectedIcon: Icon(Icons.remove_red_eye_outlined),
              label: Text('Advanced validation & errors'),
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
