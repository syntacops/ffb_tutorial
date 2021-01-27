import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getwidget/components/typography/gf_typography.dart';
import 'package:getwidget/getwidget.dart';

class CustomErrorsFormScreen extends StatefulWidget {
  @override
  _CustomErrorsFormScreenState createState() => _CustomErrorsFormScreenState();
}

class _CustomErrorsFormScreenState extends State<CustomErrorsFormScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  String _emailError;

  bool checkIfEmailExists(String email) {
    final existingEmails = [
      'syntacops@gmail.com',
    ];

    if (existingEmails.contains(email)) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Custom Errors',
        ),
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
                    GFTypography(
                        text: 'Programmatically inducing an error',
                        type: GFTypographyType.typo3),
                    FormBuilderTextField(
                      name: 'email',
                      decoration: InputDecoration(
                        labelText: 'Email',
                        errorText: _emailError,
                      ),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(context),
                        FormBuilderValidators.email(context),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () async {
                final email = _formKey.currentState.fields['email'].value;
                setState(() => _emailError = null);
                if (checkIfEmailExists(email)) {
                  setState(() => _emailError = 'Email already taken.');
                }
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            Image(
              height: 300,
              image: AssetImage(
                  'assets/images/validation/multiple_validators.png'),
            )
          ],
        ),
      ),
    );
  }
}
