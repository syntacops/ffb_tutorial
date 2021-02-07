import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomFormFieldScreen extends StatefulWidget {
  @override
  _CustomFormFieldScreenState createState() => _CustomFormFieldScreenState();
}

class _CustomFormFieldScreenState extends State<CustomFormFieldScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  final options = ["Option 1", "Option 2", "Option 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Custom fields'),
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
                      FormBuilderField(
                        name: "myfield",
                        builder: (FormFieldState<dynamic> field) {
                          return InputDecorator(
                            decoration: InputDecoration(
                              labelText: "Select option",
                              contentPadding:
                                  EdgeInsets.only(top: 10.0, bottom: 0.0),
                              border: InputBorder.none,
                              errorText: field.errorText,
                            ),
                            child: Container(
                              height: 200,
                              child: CupertinoPicker(
                                itemExtent: 30,
                                children: options.map((c) => Text(c)).toList(),
                                onSelectedItemChanged: (index) {
                                  field.didChange(options[index]);
                                },
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 20),
                      RaisedButton(
                        onPressed: () {
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
/*                       Image(
                        height: 150,
                        image: AssetImage(
                            'assets/images/custom_field/custom_field1.png'),
                      ),
                      Image(
                        height: 600,
                        image: AssetImage(
                            'assets/images/custom_field/custom_field2.png'),
                      ) */
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
