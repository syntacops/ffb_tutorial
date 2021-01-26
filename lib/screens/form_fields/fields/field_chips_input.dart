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

class Contact {
  final String name;
  final String email;
  final String imageUrl;

  const Contact(this.name, this.email, this.imageUrl);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Contact &&
          runtimeType == other.runtimeType &&
          name == other.name;

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() {
    return name;
  }
}

const contacts = <Contact>[
  Contact('Andrew', 'stock@man.com',
      'https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX4057996.jpg'),
  Contact('Paul', 'paul@google.com',
      'https://media.istockphoto.com/photos/man-with-crossed-arms-isolated-on-gray-background-picture-id1171169099'),
  Contact('Fred', 'fred@google.com',
      'https://media.istockphoto.com/photos/confident-businessman-posing-in-the-office-picture-id891418990'),
  Contact('Brian', 'brian@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
  Contact('John', 'john@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
  Contact('Thomas', 'thomas@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
  Contact('Nelly', 'nelly@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
  Contact('Marie', 'marie@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
  Contact('Charlie', 'charlie@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
  Contact('Diana', 'diana@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
  Contact('Ernie', 'ernie@flutter.io',
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
  Contact('Gina', 'gina@flutter.io',
      'https://media.istockphoto.com/photos/all-set-for-a-productive-night-ahead-picture-id637233964'),
];
