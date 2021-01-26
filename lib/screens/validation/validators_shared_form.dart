import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ValidatorsSharedForm extends StatelessWidget {
  //* Form key
  final _formKey = GlobalKey<FormBuilderState>();
  final _scaffoldKey = GlobalKey();

  final title;
  final validator;

  final image;

  ValidatorsSharedForm({
    Key key,
    this.validator,
    this.title,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('$title'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: FormBuilder(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: FormBuilderTextField(
                        name: 'textfield',
                        validator: validator,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                RaisedButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    //* Save form
                    final isValid = _formKey.currentState.validate();
                    // Show snackbar only if input is valid

                    if (isValid) {
                      Scaffold.of(_scaffoldKey.currentContext).showSnackBar(
                        SnackBar(
                          duration: Duration(seconds: 10),
                          content: Row(
                            children: [
                              Expanded(
                                child: Text('Validation passed',
                                    textScaleFactor: 1.5),
                              ),
                              RaisedButton.icon(
                                onPressed: () {
                                  Scaffold.of(_scaffoldKey.currentContext)
                                      .hideCurrentSnackBar();
                                },
                                icon: Icon(Icons.close),
                                label: Text('Close'),
                              )
                            ],
                          ),
                        ),
                      );
                      _formKey.currentState.reset();
                    }
                  },
                  child: Text('Validate'),
                ),
                SizedBox(height: 20),
                image ?? Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
