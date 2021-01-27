import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getwidget/components/typography/gf_typography.dart';
import 'package:getwidget/getwidget.dart';

class MultipleValidatorsFormScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Multiple validators',
        ),
      ),
      body: Column(
        children: [
          FormBuilder(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  GFTypography(
                      text: 'Numeric only AND minLength == 8',
                      type: GFTypographyType.typo3),
                  FormBuilderTextField(
                    name: 'textfield',
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.numeric(context),
                      FormBuilderValidators.minLength(context, 8),
                    ]),
                  )
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
            height: 300,
            image:
                AssetImage('assets/images/validation/multiple_validators.png'),
          )
        ],
      ),
    );
  }
}
