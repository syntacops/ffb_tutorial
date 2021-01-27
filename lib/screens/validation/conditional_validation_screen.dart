import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getwidget/components/typography/gf_typography.dart';
import 'package:getwidget/getwidget.dart';

class ConditionalValidationFormScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Conditional validation',
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
                        text: 'If other, please specify',
                        type: GFTypographyType.typo3),
                    FormBuilderRadioGroup(
                      decoration:
                          InputDecoration(labelText: 'My best language'),
                      name: 'my_language',
                      validator: FormBuilderValidators.required(context),
                      options: [
                        'Dart',
                        'Kotlin',
                        'Java',
                        'Swift',
                        'Objective-C',
                        'Other'
                      ]
                          .map((lang) => FormBuilderFieldOption(value: lang))
                          .toList(growable: false),
                    ),
                    FormBuilderTextField(
                      name: 'specify',
                      decoration: InputDecoration(
                          labelText: 'If Other, please specify'),
                      validator: (val) {
                        if (_formKey.currentState.fields['my_language']
                                    ?.value ==
                                'Other' &&
                            (val == null || val.isEmpty)) {
                          return 'Kindly specify your language';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () {
                final isValid = _formKey.currentState.validate();
                if (isValid) {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 10),
                      content: Row(
                        children: [
                          Expanded(
                            child:
                                Text('Validation passed', textScaleFactor: 1.5),
                          ),
                          RaisedButton.icon(
                            onPressed: () {
                              Scaffold.of(context).hideCurrentSnackBar();
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
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            Image(
              height: 700,
              image: AssetImage(
                  'assets/images/validation/conditional_validation.png'),
            )
          ],
        ),
      ),
    );
  }
}
