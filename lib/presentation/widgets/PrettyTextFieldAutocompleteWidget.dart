import 'package:flutter/material.dart';
import 'package:pretty_autocomplete/presentation/model/AppConstants.dart';

class PrettyTextFieldAutoCompleteWidget extends StatelessWidget {
  const PrettyTextFieldAutoCompleteWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '')
          return const Iterable<String>.empty();

        return AppConstants.K_OPTIONS.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });

      },
      onSelected: (String selection) {
        print('You just selected ' + selection);
      },
      fieldViewBuilder: (BuildContext context,
          TextEditingController fieldTextEditingController,
          FocusNode fieldFocusNode,
          VoidCallback onFieldSubmitted) {
        return TextField(
          controller: fieldTextEditingController,
          focusNode: fieldFocusNode,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(
                  Radius.circular(_Dimens.TEXTFIELD_RADIUS)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(
                  Radius.circular(_Dimens.TEXTFIELD_RADIUS)),
            ),
            hintText: 'Choose a Hero',
            prefixIcon: Icon(Icons.search),
            labelText: 'Your hero is'
          ),
          onChanged: (text) {
            print("text field: $text");
          },
        );
      },
    );
  }
}

/**
 *
 */
abstract class _Dimens {
  static const double TEXTFIELD_RADIUS = 30.0;
}
