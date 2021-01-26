import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getwidget/getwidget.dart';

class AttributeEnabledScreen extends StatefulWidget {
  @override
  _AttributeEnabledScreenState createState() => _AttributeEnabledScreenState();
}

class _AttributeEnabledScreenState extends State<AttributeEnabledScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  bool _checkboxEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Core Attribute: enabled'),
      ),
      body: FormBuilder(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GFTypography(
                type: GFTypographyType.typo1,
                text: 'Enable to use',
              ),
              SizedBox(height: 20),
              FormBuilderTextField(
                name: 'textfield',
                enabled: _checkboxEnabled,
                decoration: InputDecoration(
                    helperText: 'Textfield name is "textfield"',
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
                onPressed: () {
                  // Get textfield input value
                  final textfieldData =
                      _formKey.currentState.fields['textfield'].value;

                  // Optional: unfocus keyboard
                  FocusScope.of(context).unfocus();

                  // Optional: Show snackbar
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text('$textfieldData', textScaleFactor: 1.5),
                    ),
                  );
                },
                child: Text('Read'),
              ),
              SizedBox(height: 20),
              FormBuilderCheckbox(
                  name: 'checkbox',
                  initialValue: false,
                  onChanged: (val) {
                    setState(() {
                      _checkboxEnabled = val;
                    });
                  },
                  title: Text(
                    'Enable',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
