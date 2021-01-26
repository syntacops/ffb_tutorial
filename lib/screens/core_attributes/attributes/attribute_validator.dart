import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getwidget/getwidget.dart';

class AttributeValidatorScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Core Attribute: validator'),
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
                text: 'Only "yes" is a valid input',
              ),
              SizedBox(height: 20),
              FormBuilderTextField(
                name: 'textfield',
                validator: (value) {
                  if (value != 'yes') {
                    return 'Answer must be "yes"';
                  } else
                    return null;
                },
                decoration: InputDecoration(
                    helperText: 'Textfield name is "textfield"',
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Type in 'yes'",
                    fillColor: Colors.white70),
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  // Get textfield input value
                  final isValid = _formKey.currentState.validate();

                  if (isValid) {
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text('Success', textScaleFactor: 1.5),
                      ),
                    );
                  } else {
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(seconds: 1),
                        content:
                            Text('Input is INVALID!', textScaleFactor: 1.5),
                      ),
                    );
                  }

                  // Optional: unfocus keyboard
                  FocusScope.of(context).unfocus();
                },
                child: Text('Read'),
              ),
              SizedBox(height: 20),
              Image(
                height: 400,
                image:
                    AssetImage('assets/images/core_attributes/validator.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
