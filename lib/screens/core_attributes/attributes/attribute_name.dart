import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getwidget/getwidget.dart';

class AttributeNameScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Core Attribute: name'),
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
                text: 'Name is "textfield"',
              ),
              SizedBox(height: 20),
              FormBuilderTextField(
                name: 'textfield',
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
              Image(
                height: 400,
                image:
                    AssetImage('assets/images/core_attributes/attr_name.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
