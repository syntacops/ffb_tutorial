import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ValidateFormInputScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Validate form input'),
        backgroundColor: Colors.black,
      ),
      body: FormBuilder(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                        hintText: "Enter 'yes'",
                        fillColor: Colors.white70),
                    validator: (value) {
                      if (value != 'yes') {
                        return 'Answer must be yes';
                      }
                      return null;
                    }),
                RaisedButton(
                  onPressed: () {
                    // Get textfield input value
                    final validationSuccess = _formKey.currentState.validate();

                    if (validationSuccess) {
                      //
                      // Save only when validation passed
                      _formKey.currentState.save();
                      //
                      // Get form data
                      final formData = _formKey.currentState.value;
                      //
                      // Optional: Show snackbar
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          duration: Duration(seconds: 2),
                          content: Text(
                              'Validation succeeded -> Data: $formData',
                              textScaleFactor: 1.5),
                        ),
                      );
                    } else {
                      // Get form data
                      final formData = _formKey.currentState.value;
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          duration: Duration(seconds: 2),
                          content: Text('Validation failed! -> Data: $formData',
                              textScaleFactor: 1.5),
                        ),
                      );
                    }

                    // Optional: unfocus keyboard
                    FocusScope.of(context).unfocus();
                  },
                  child: Text('Submit'),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    // Expanded(
                    //   flex: 3,
                    //   child: Image(
                    //       height: 450,
                    //       image: AssetImage(
                    //           'assets/images/validate_form_input/validator_example.png')),
                    // ),
                    // Expanded(
                    //   flex: 4,
                    //   child: Image(
                    //       height: 450,
                    //       image: AssetImage(
                    //           'assets/images/validate_form_input/validate.png')),
                    // ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
