import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getwidget/getwidget.dart';

class OnWillPopExample extends StatelessWidget {
  //* onWillPop example
  Future<bool> _onWillPop() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormBuilder(
          onWillPop: _onWillPop,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GFTypography(
                  type: GFTypographyType.typo1,
                  text: 'onWillPop example',
                ),
                SizedBox(height: 20),
                FormBuilderTextField(
                  name: 'textfield',
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Type in your text",
                      fillColor: Colors.white70),
                ),
                SizedBox(height: 20),
                RaisedButton(
                  onPressed: () {},
                  child: Text('Submit'),
                )
              ],
            ),
          )),
    );
  }
}
