import 'package:ffb_tutorial/screens/form_fields/fields/field_checkbox.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_checkbox_list.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_chips_input.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_choice_chip.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_daterange_picker.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_dropdown.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_filepicker.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_filter_chip.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_image_picker.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_location_field.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_phone_field.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_radio_group.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_range_slider.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_rating.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_searchable_dropdown.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_segmented_control.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_signature_pad.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_slider.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_switch.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_textfield.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_touchspin.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/field_type_ahead.dart';
import 'package:ffb_tutorial/screens/form_fields/fields/fields_color_picker.dart';
import 'package:ffb_tutorial/screens/form_fields/shared_form.dart';
import 'package:flutter/material.dart';

import 'fields/field_datetime_picker.dart';

class FormFieldsScreen extends StatefulWidget {
  @override
  _FormFieldsScreenState createState() => _FormFieldsScreenState();
}

class _FormFieldsScreenState extends State<FormFieldsScreen> {
  int _currentIndex = 0;

  Widget _getScreen() {
    switch (_currentIndex) {
      case 0:
        return SharedForm(title: 'Checkbox', formField: exampleCheckbox);
        break;
      case 1:
        return SharedForm(
            title: 'CheckboxGroup', formField: exampleCheckboxGroup);
        break;
      case 2:
        return SharedForm(title: 'ChipsInput', formField: exampleChipsInput);
        break;
      case 3:
        return SharedForm(title: 'ChoiceChip', formField: exampleChoiceChip);
        break;
      case 4:
        return SharedForm(
            title: 'ColorPickerField', formField: exampleColorPicker);
        break;
      case 5:
        return SharedForm(
            title: 'DateTimePicker', formField: exampleDateTimePicker);
        break;
      case 6:
        return SharedForm(
            title: 'DateRangePicker', formField: exampleDateRangePicker);
        break;
      case 7:
        return SharedForm(title: 'Dropdown', formField: exampleDropdown);
        break;
      case 8:
        return SharedForm(title: 'FilterChip', formField: exampleFilterChip);
        break;
      case 9:
        return SharedForm(title: 'RadioGroup', formField: exampleRadioGroup);
        break;
      case 10:
        return SharedForm(title: 'RangeSlider', formField: exampleRangeSlider);
        break;
      case 11:
        return SharedForm(title: 'Rating', formField: exampleRating);
        break;
      case 12:
        return SharedForm(
            title: 'SearchableDropdown', formField: exampleSearchableDropdown);
        break;
      case 13:
        return SharedForm(
            title: 'SegementedControl', formField: exampleSegmentedControl);
        break;
      case 14:
        return SharedForm(
            title: 'SignaturePad', formField: exampleSignaturePad);
        break;
      case 15:
        return SharedForm(title: 'Slider', formField: exampleSlider);
        break;
      case 16:
        return SharedForm(title: 'Switch', formField: exampleSwitch);
        break;
      case 17:
        return SharedForm(title: 'Textfield', formField: exampleTextfield);
        break;
      case 18:
        return SharedForm(title: 'TouchSpin', formField: exampleTouchSpin);
        break;
      case 19:
        return SharedForm(title: 'TypeAhead', formField: exampleTypeAhead);
        break;
      case 20:
        return SharedForm(title: 'FilePicker', formField: exampleFilePicker);
        break;
      case 21:
        return SharedForm(title: 'ImagePicker', formField: exampleImagePicker);
        break;
      case 22:
        return SharedForm(
            title: 'LocationField', formField: exampleLocationField);
        break;
      case 23:
        return SharedForm(title: 'PhoneField', formField: examplePhoneField);
        break;
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LayoutBuilder(builder: (context, constraint) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: NavigationRail(
                  backgroundColor: Colors.white38,
                  selectedIndex: _currentIndex,
                  onDestinationSelected: (int index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  labelType: NavigationRailLabelType.all,
                  destinations: [
                    NavigationRailDestination(
                      icon: Icon(Icons.check_box),
                      selectedIcon: Icon(Icons.check_box),
                      label: Text('Checkbox'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.check_box_outlined),
                      selectedIcon: Icon(Icons.check_box_outlined),
                      label: Text('CheckboxGroup'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.input),
                      selectedIcon: Icon(Icons.input),
                      label: Text('ChipsInput'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      selectedIcon: Icon(Icons.remove_red_eye_outlined),
                      label: Text('ChoiceChip'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.warning),
                      selectedIcon: Icon(Icons.warning),
                      label: Text('ColorPickerField'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.track_changes),
                      selectedIcon: Icon(Icons.track_changes),
                      label: Text('DateTimePicker'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.transform),
                      selectedIcon: Icon(Icons.transform),
                      label: Text('DateRangePicker'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.transform),
                      selectedIcon: Icon(Icons.transform),
                      label: Text('Dropdown'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.transform),
                      selectedIcon: Icon(Icons.transform),
                      label: Text('FilterChip'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.transform),
                      selectedIcon: Icon(Icons.transform),
                      label: Text('RadioGroup'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.transform),
                      selectedIcon: Icon(Icons.transform),
                      label: Text('RangeSlider'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.transform),
                      selectedIcon: Icon(Icons.transform),
                      label: Text('Rating'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.transform),
                      selectedIcon: Icon(Icons.transform),
                      label: Text('SearchableDropdown'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.transform),
                      selectedIcon: Icon(Icons.transform),
                      label: Text('SegmentedControl'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.transform),
                      selectedIcon: Icon(Icons.transform),
                      label: Text('SignaturePad'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.transform),
                      selectedIcon: Icon(Icons.transform),
                      label: Text('Slider'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.transform),
                      selectedIcon: Icon(Icons.transform),
                      label: Text('Switch'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.transform),
                      selectedIcon: Icon(Icons.transform),
                      label: Text('TextField'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.transform),
                      selectedIcon: Icon(Icons.transform),
                      label: Text('TouchSpin'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.transform),
                      selectedIcon: Icon(Icons.transform),
                      label: Text('TypeAhead'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.star),
                      selectedIcon: Icon(Icons.star),
                      label: Text('FilePicker'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.star),
                      selectedIcon: Icon(Icons.star),
                      label: Text('ImagePicker '),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.star),
                      selectedIcon: Icon(Icons.star),
                      label: Text('LocationField'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.star),
                      selectedIcon: Icon(Icons.star),
                      label: Text('PhoneField'),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),

        VerticalDivider(thickness: 1, width: 1),
        // This is the main content.
        Expanded(
          child: Center(
            child: _getScreen(),
          ),
        )
      ],
    );
  }
}
