import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getwidget/getwidget.dart';

class AttributeValueTransformerScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Core Attribute: valueTransformer'),
      ),
      body: FormBuilder(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GFTypography(
                  type: GFTypographyType.typo1,
                  text: 'Transform input before saving',
                ),
                SizedBox(height: 20),
                FormBuilderTextField(
                  name: 'textfield',
                  valueTransformer: (value) {
                    return value.toUpperCase();
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
                      hintText: "Type in your text",
                      fillColor: Colors.white70),
                ),
                SizedBox(height: 20),
                RaisedButton(
                  onPressed: () {
                    // Get textfield input value
                    _formKey.currentState.save();

                    // Optional: unfocus keyboard
                    FocusScope.of(context).unfocus();
                  },
                  child: Text('Save'),
                ),
                RaisedButton(
                  onPressed: () {
                    // Get textfield input value
                    final formData =
                        _formKey.currentState.fields['textfield'].value;

                    // Optional: unfocus keyboard
                    FocusScope.of(context).unfocus();

                    // Optional: Show snackbar
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text('$formData', textScaleFactor: 1.5),
                      ),
                    );
                  },
                  child: Text('Read field data'),
                ),
                RaisedButton(
                  onPressed: () {
                    // Get textfield input value
                    final formData = _formKey.currentState.value;

                    // Optional: unfocus keyboard
                    FocusScope.of(context).unfocus();

                    // Optional: Show snackbar
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text('$formData', textScaleFactor: 1.5),
                      ),
                    );
                  },
                  child: Text('Read form data'),
                ),
                SizedBox(height: 20),
                Image(
                  height: 300,
                  image: AssetImage(
                      'assets/images/core_attributes/value_transformer.png'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
