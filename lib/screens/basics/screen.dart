import 'package:ffb_tutorial/screens/basics/formbuilder/screen.dart';
import 'package:flutter/material.dart';

class BasicsScreen extends StatefulWidget {
  @override
  _BasicsScreenState createState() => _BasicsScreenState();
}

class _BasicsScreenState extends State<BasicsScreen> {
  int _currentIndex = 0;

  Widget _getScreen() {
    switch (_currentIndex) {
      case 0:
        return FormBuilderScreen();
        break;
      case 1:
        return Center(
          child: Text('$_currentIndex'),
        );
        break;
      case 2:
        return Center(
          child: Text('$_currentIndex'),
        );
        break;
      case 3:
        return Center(
          child: Text('$_currentIndex'),
        );
        break;
      case 4:
        return Center(
          child: Text('$_currentIndex'),
        );
        break;
      case 5:
        return Center(
          child: Text('$_currentIndex'),
        );
        break;
      case 6:
        return Center(
          child: Text('$_currentIndex'),
        );
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
              icon: Icon(Icons.widgets),
              selectedIcon: Icon(Icons.widgets),
              label: Text('FormBuilder-Widget'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.list_alt),
              selectedIcon: Icon(Icons.list_alt),
              label: Text('Creating a form'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.restore),
              selectedIcon: Icon(Icons.restore),
              label: Text('Reset form'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.remove_red_eye_outlined),
              selectedIcon: Icon(Icons.remove_red_eye_outlined),
              label: Text('Reading field data'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.remove_red_eye),
              selectedIcon: Icon(Icons.remove_red_eye),
              label: Text('Reading form data'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.save),
              selectedIcon: Icon(Icons.save),
              label: Text('Save form input'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.check),
              selectedIcon: Icon(Icons.check),
              label: Text('Validate form input'),
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
