import 'package:flutter/material.dart';
import 'package:pretty_autocomplete/presentation/model/AppConstants.dart';

class DefaultAutocompleteWidget extends StatelessWidget {
  const DefaultAutocompleteWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return AppConstants.K_OPTIONS.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        print('You just selected $selection');
      },
    );
  }
}
