import 'package:ffb_tutorial/core/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

final ValueChanged _onChanged = (val) => print(val);

final exampleChipsInput = FormBuilderChipsInput(
    decoration: InputDecoration(labelText: 'Chips'),
    name: 'chips_test',
    onChanged: _onChanged,
    initialValue: [
      Contact('Andrew', 'stock@man.com',
          'https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX4057996.jpg'),
    ],
    maxChips: 5,
    findSuggestions: (String query) {
      if (query.isNotEmpty) {
        var lowercaseQuery = query.toLowerCase();
        return contacts.where((profile) {
          return profile.name.toLowerCase().contains(query.toLowerCase()) ||
              profile.email.toLowerCase().contains(query.toLowerCase());
        }).toList(growable: false)
          ..sort((a, b) => a.name
              .toLowerCase()
              .indexOf(lowercaseQuery)
              .compareTo(b.name.toLowerCase().indexOf(lowercaseQuery)));
      } else {
        return const <Contact>[];
      }
    },
    chipBuilder: (context, state, profile) {
      return InputChip(
        key: ObjectKey(profile),
        label: Text(profile.name),
        avatar: CircleAvatar(
          backgroundImage: NetworkImage(profile.imageUrl),
        ),
        onDeleted: () => state.deleteChip(profile),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      );
    },
    suggestionBuilder: (context, state, profile) {
      return ListTile(
        key: ObjectKey(profile),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(profile.imageUrl),
        ),
        title: Text(profile.name),
        subtitle: Text(profile.email),
        onTap: () => state.selectSuggestion(profile),
      );
    });
