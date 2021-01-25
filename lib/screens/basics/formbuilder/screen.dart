import 'package:ffb_tutorial/screens/basics/formbuilder/examples/onWillPop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getwidget/getwidget.dart';

class FormBuilderScreen extends StatefulWidget {
  @override
  _FormBuilderScreenState createState() => _FormBuilderScreenState();
}

class _FormBuilderScreenState extends State<FormBuilderScreen> {
  //* Form key
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormBuilder Basics'),
        backgroundColor: Colors.black,
      ),
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image(
                          height: 300,
                          image: AssetImage(
                              'assets/images/FormBuilder-Widget.png'),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FormBuilder(
                              key: _formKey,
                              child: Column(
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
                                        hintStyle:
                                            TextStyle(color: Colors.grey[800]),
                                        hintText: "Type in your text",
                                        fillColor: Colors.white70),
                                  ),
                                  SizedBox(height: 20),
                                  RaisedButton(
                                    onPressed: () {},
                                    child: Text('Submit'),
                                  )
                                ],
                              ),
                              onChanged: () => print('changed'),
                              autovalidateMode: null,
                              onWillPop: null,
                              initialValue: null,
                              skipDisabled: null,
                              enabled: null,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Text('Properties', textScaleFactor: 2),
                      ],
                    ),
                    GFAccordion(
                      title: 'key',
                      collapsedTitleBackgroundColor: Colors.blue,
                      contentChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GFTypography(
                            text: 'Creates a container for form fields.',
                            type: GFTypographyType.typo3,
                            dividerWidth: 500,
                            icon: Icon(Icons.send),
                          ),
                          GFTypography(
                            text:
                                'Takes GlobalKey for form validation and processing.',
                            type: GFTypographyType.typo3,
                            showDivider: false,
                            icon: Icon(Icons.send),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: Image(
                                  height: 150,
                                  image:
                                      AssetImage('assets/images/formkey.png'),
                                ),
                              ),
                              Expanded(
                                child: Image(
                                  height: 150,
                                  image: AssetImage(
                                      'assets/images/formbuilder_with_formkey.png'),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      textStyle: TextStyle(fontSize: 20),
                      collapsedIcon: Icon(Icons.add),
                      expandedIcon: Icon(Icons.minimize),
                    ),
                    GFAccordion(
                      title: 'child',
                      collapsedTitleBackgroundColor: Colors.blue,
                      contentChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GFTypography(
                            text: 'Holds all form fields.',
                            type: GFTypographyType.typo3,
                            dividerWidth: 500,
                            showDivider: false,
                            icon: Icon(Icons.send),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Image(
                                    height: 300,
                                    image: AssetImage(
                                        'assets/images/example_form1.png')),
                              ),
                              Expanded(
                                child: Image(
                                    height: 300,
                                    image: AssetImage(
                                        'assets/images/example_form1_ui.png')),
                              ),
                            ],
                          )
                        ],
                      ),
                      textStyle: TextStyle(fontSize: 20),
                      collapsedIcon: Icon(Icons.add),
                      expandedIcon: Icon(Icons.minimize),
                    ),
                    GFAccordion(
                      title: 'onChanged',
                      collapsedTitleBackgroundColor: Colors.blue,
                      contentChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GFTypography(
                            text: 'Called when one of the form fields changes.',
                            type: GFTypographyType.typo3,
                            dividerWidth: 500,
                            showDivider: false,
                            icon: Icon(Icons.send),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Image(
                                height: 150,
                                image:
                                    AssetImage('assets/images/onChanged.png'),
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/images/onChanged_terminal_msg.png'),
                              )
                            ],
                          ),
                        ],
                      ),
                      collapsedIcon: Icon(Icons.add),
                      expandedIcon: Icon(Icons.minimize),
                    ),
                    GFAccordion(
                      title: 'autovalidateMode',
                      collapsedTitleBackgroundColor: Colors.blue,
                      contentChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GFTypography(
                            text:
                                'Used to enable/disable form fields auto validation and update their error text.',
                            type: GFTypographyType.typo3,
                            dividerWidth: 500,
                            showDivider: false,
                            icon: Icon(Icons.send),
                          ),
                          SizedBox(height: 20),
                          GFTypography(
                            text: 'AutovalidateMode.values',
                            type: GFTypographyType.typo4,
                            dividerWidth: 500,
                            showDivider: false,
                            icon: Icon(Icons.send),
                          ),
                          GFTypography(
                            text: 'AutovalidateMode.always',
                            type: GFTypographyType.typo4,
                            dividerWidth: 500,
                            showDivider: false,
                            icon: Icon(Icons.send),
                          ),
                          GFTypography(
                            text: 'AutovalidateMode.disabled',
                            type: GFTypographyType.typo4,
                            dividerWidth: 500,
                            showDivider: false,
                            icon: Icon(Icons.send),
                          ),
                          GFTypography(
                            text: 'AutovalidateMode.onUserInteraction',
                            type: GFTypographyType.typo4,
                            dividerWidth: 500,
                            showDivider: false,
                            icon: Icon(Icons.send),
                          ),
                        ],
                      ),
                      collapsedIcon: Icon(Icons.add),
                      expandedIcon: Icon(Icons.minimize),
                    ),
                    GFAccordion(
                      title: 'onWillPop',
                      collapsedTitleBackgroundColor: Colors.blue,
                      contentChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GFTypography(
                            text:
                                "Enables the form to veto attempts by the user to dismiss the [ModalRoute] that contains the form.\nIf the callback returns a Future that resolves to false, the form's route will not be popped.",
                            type: GFTypographyType.typo3,
                            dividerWidth: 500,
                            showDivider: false,
                            icon: Icon(Icons.send),
                          ),
                          SizedBox(height: 20),
                          RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            OnWillPopExample()));
                              },
                              child: Text('Go to example form screen'))
                        ],
                      ),
                      collapsedIcon: Icon(Icons.add),
                      expandedIcon: Icon(Icons.minimize),
                    ),
                    GFAccordion(
                      title: 'initialValue',
                      collapsedTitleBackgroundColor: Colors.blue,
                      contentChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GFTypography(
                            text:
                                "An optional Map of field initialValues. Keys correspond to the field's name and value to the initialValue of the field.",
                            type: GFTypographyType.typo3,
                            dividerWidth: 500,
                            showDivider: false,
                            icon: Icon(Icons.send),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/initialValueExample.png'),
                                ),
                              ),
                              Expanded(
                                child: Image(
                                  image: AssetImage(
                                      'assets/images/initialValueExample_ui.png'),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      collapsedIcon: Icon(Icons.add),
                      expandedIcon: Icon(Icons.minimize),
                    ),
                    GFAccordion(
                      title: 'skipDisabled',
                      collapsedTitleBackgroundColor: Colors.blue,
                      contentChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GFTypography(
                            text:
                                "Whether the form should ignore submitting values from fields where enabled is false. This behavior is common in HTML forms where readonly values are not submitted when the form is submitted.",
                            type: GFTypographyType.typo3,
                            dividerWidth: 500,
                            showDivider: false,
                            icon: Icon(Icons.send),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                      collapsedIcon: Icon(Icons.add),
                      expandedIcon: Icon(Icons.minimize),
                    ),
                    GFAccordion(
                      title: 'enabled',
                      collapsedTitleBackgroundColor: Colors.blue,
                      contentChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GFTypography(
                            text:
                                "Whether the form is able to receive user input.",
                            type: GFTypographyType.typo3,
                            dividerWidth: 500,
                            showDivider: false,
                            icon: Icon(Icons.send),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                      collapsedIcon: Icon(Icons.add),
                      expandedIcon: Icon(Icons.minimize),
                    ),
                  ],
                ),
              ),
            ),
          ),
          VerticalDivider(thickness: 2, width: 1),
          // Container(
          //   color: Colors.black38,
          //   child: Padding(
          //     padding: const EdgeInsets.all(16.0),
          //     child: Column(
          //       children: [],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
