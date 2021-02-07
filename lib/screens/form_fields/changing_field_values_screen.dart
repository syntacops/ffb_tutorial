import 'package:ffb_tutorial/core/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ChangingFieldValuesFormScreen extends StatefulWidget {
  @override
  _ChangingFieldValuesFormScreenState createState() =>
      _ChangingFieldValuesFormScreenState();
}

class _ChangingFieldValuesFormScreenState
    extends State<ChangingFieldValuesFormScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Changing field values'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FormBuilder(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: [
                      FormBuilderTextField(name: 'textfield1'),
                      FormBuilderTextField(name: 'textfield2'),
                      SizedBox(height: 20),
                      RaisedButton(
                        onPressed: () {
                          _formKey.currentState.fields['textfield1']
                              .didChange('changed!!!');

                          //
                          if (_formKey.currentState.saveAndValidate()) {
                            final formData = _formKey.currentState.value;
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                duration: Duration(seconds: 10),
                                content: Row(
                                  children: [
                                    Expanded(
                                      child: Text('$formData',
                                          textScaleFactor: 1.5),
                                    ),
                                    RaisedButton.icon(
                                      onPressed: () {
                                        Scaffold.of(context)
                                            .hideCurrentSnackBar();
                                      },
                                      icon: Icon(Icons.close),
                                      label: Text('Close'),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                        },
                        child: Text('Submit'),
                      ),
                      SizedBox(height: 20),
                      // Image(
                      //   height: 300,
                      //   image: AssetImage(
                      //       'assets/images/custom_field/change_field_value.png'),
                      // )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
