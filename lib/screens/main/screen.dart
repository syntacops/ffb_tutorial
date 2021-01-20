import 'package:ffb_tutorial/screens/basics/screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  Widget _getScreen() {
    switch (_currentIndex) {
      case 0:
        return BasicsScreen();
        break;
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Form Builder Demo'),
        elevation: 0,
        backgroundColor: Colors.black54,
      ),
      body: Row(
        children: <Widget>[
          NavigationRail(
            leading: Row(
              children: [Text('Topics', textScaleFactor: 1.5)],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            selectedIndex: _currentIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.stairs),
                selectedIcon: Icon(Icons.stairs),
                label: Text('Form Basics'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.attribution_outlined),
                selectedIcon: Icon(Icons.attribution_outlined),
                label: Text('Core Attributes'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.input),
                selectedIcon: Icon(Icons.input),
                label: Text('Form fields'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.check_box),
                selectedIcon: Icon(Icons.check_box),
                label: Text('Validators'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.more),
                selectedIcon: Icon(Icons.more),
                label: Text('Miscellaneous'),
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
      ),
    );
  }
}
