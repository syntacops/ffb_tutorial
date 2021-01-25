import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getwidget/getwidget.dart';

class ResetFormScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset form'),
        backgroundColor: Colors.black,
      ),
      body: FormBuilder(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GFTypography(
                type: GFTypographyType.typo1,
                text: 'Example form',
              ),
              SizedBox(height: 20),
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
                    hintText: "Type in your text",
                    fillColor: Colors.white70),
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  // Reset form
                  _formKey.currentState.reset();

                  // Optional: unfocus keyboard
                  FocusScope.of(context).unfocus();
                },
                child: Text('Reset'),
              ),
              SizedBox(height: 20),
              Image(
                  height: 200,
                  image: AssetImage('assets/images/reset_form/reset_form.png'))
            ],
          ),
        ),
      ),
    );
  }
}
