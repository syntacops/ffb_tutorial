import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:getwidget/components/typography/gf_typography.dart';
import 'package:getwidget/getwidget.dart';

class InternationalizationFormScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  // https://flutter.dev/docs/development/accessibility-and-localization/internationalization

  @override
  Widget build(BuildContext context) {
    final helloWorld = AppLocalizations.of(context).helloWorld;
    final formBuilderLocal = FormBuilderLocalizations();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Internationlization - $helloWorld'),
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
                        text: '$helloWorld', type: GFTypographyType.typo1),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'This headline can be display in English or Spanish. Change your device settings.',
                          textAlign: TextAlign.left,
                          textScaleFactor: 1.5,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    FormBuilderTextField(
                        name: 'textfield',
                        decoration: InputDecoration(
                            hintText: 'Enter credit card',
                            errorText: formBuilderLocal.creditCardErrorText),
                        validator: FormBuilderValidators.equal(context, 'yes')),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'The error text of this text field can be display in English or Spanish. Change your device settings.',
                          textAlign: TextAlign.left,
                          textScaleFactor: 1.5,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    RaisedButton(
                      onPressed: () {
                        _formKey.currentState.saveAndValidate();
                      },
                      child: Text('Submit'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
