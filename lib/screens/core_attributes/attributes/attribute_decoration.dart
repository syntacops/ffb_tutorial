import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getwidget/getwidget.dart';

class AttributeDecorationScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Core Attribute: decoration'),
      ),
      body: FormBuilder(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        GFTypography(
                          type: GFTypographyType.typo1,
                          text: 'Form WITHOUT decoration',
                        ),
                        SizedBox(height: 20),
                        FormBuilderTextField(
                          name: 'textfield1',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      children: [
                        GFTypography(
                          type: GFTypographyType.typo1,
                          text: 'Form WITH decoration',
                        ),
                        SizedBox(height: 20),
                        FormBuilderTextField(
                          name: 'textfield2',
                          decoration: InputDecoration(
                              helperText: 'Textfield name is "textfield2"',
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
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
