import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getwidget/getwidget.dart';

class ReadingFormDataScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Save & Read form data'),
        backgroundColor: Colors.black,
      ),
      body: FormBuilder(
        key: _formKey,
        skipDisabled: true,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GFTypography(
                  type: GFTypographyType.typo1,
                  text: 'Example form',
                ),
                SizedBox(height: 20),
                FormBuilderTextField(
                  name: 'textfield1',
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "texfield1",
                      fillColor: Colors.white70),
                ),
                FormBuilderTextField(
                  name: 'textfield2',
                  enabled: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "textfield2",
                      fillColor: Colors.white70),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      onPressed: () {
                        // Before reading form data, form has to be saved
                        _formKey.currentState.save();

                        // Optional: unfocus keyboard
                        FocusScope.of(context).unfocus();

                        // Optional: Show snackbar
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            duration: Duration(seconds: 1),
                            content: Text('Form saved', textScaleFactor: 1.5),
                          ),
                        );
                      },
                      child: Text('Save form data'),
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
                  ],
                ),
                SizedBox(height: 20),
                Image(
                  height: 420,
                  image: AssetImage(
                      'assets/images/reading_form_data/read_form.png'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
