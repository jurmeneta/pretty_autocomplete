import 'package:flutter/material.dart';
import 'package:pretty_autocomplete/presentation/model/AppConstants.dart';

class PrettyOptionsAutoCompleteWidget extends StatelessWidget {
  const PrettyOptionsAutoCompleteWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
        optionsBuilder: (TextEditingValue textEditingValue) {
      if (textEditingValue.text == '') return const Iterable<String>.empty();

      return AppConstants.K_OPTIONS.where((String option) {
        return option.contains(textEditingValue.text.toLowerCase());
      });
    }, onSelected: (String selection) {
      print('You just selected ' + selection);
    }, optionsViewBuilder: (BuildContext context,
            AutocompleteOnSelected<String> onSelected,
            Iterable<String> options) {
      return Align(
          alignment: Alignment.topLeft,
          child: Material(
            child: Container(
              width: 300,
              height: 200,
              color: Colors.teal,
              child: ListView.builder(
                padding: EdgeInsets.all(_Dimens.PADDING),
                itemCount: options.length,
                itemBuilder: (BuildContext context, int index) {
                  final String option = options.elementAt(index);
                  return GestureDetector(
                    onTap: () {
                      onSelected(option);
                    },
                    child: ListTile(
                      title: Text(option,
                          style: const TextStyle(color: Colors.white)),
                    ),
                  );
                },
              ),
            ),
          ));
    });
  }
}

/**
 *
 */
abstract class _Dimens {
  static const double PADDING = 0.0;
}
