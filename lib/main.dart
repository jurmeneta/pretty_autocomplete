import 'package:flutter/material.dart';
import 'package:pretty_autocomplete/presentation/styles/AutocompleteStyles.dart';
import 'package:pretty_autocomplete/presentation/widgets/DefaultAutocompleteWidget.dart';
import 'package:pretty_autocomplete/presentation/widgets/PrettyOptionsAutocompleteWidget.dart';
import 'package:pretty_autocomplete/presentation/widgets/PrettyTextFieldAutocompleteWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pretty Autocomplete Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pretty Autocomplete Demo"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(_Dimens.GENERAL_MARGIN),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: _Dimens.TITLE_TOP_MARGIN,
                        bottom: _Dimens.TITLE_BOTTOM_MARGIN),
                    child: Text(
                      "Simple Autocomplete",
                      style: AutocompleteStyles.title,
                    ),
                  ),
                  DefaultAutocompleteWidget(),
                  Container(
                    margin: EdgeInsets.only(
                        top: _Dimens.TITLE_TOP_MARGIN,
                        bottom: _Dimens.TITLE_BOTTOM_MARGIN),
                    child: Text(
                      "Pretty Text Field Autocomplete",
                      style: AutocompleteStyles.title,
                    ),
                  ),
                  PrettyTextFieldAutoCompleteWidget(),
                  Container(
                    margin: EdgeInsets.only(
                        top: _Dimens.TITLE_TOP_MARGIN,
                        bottom: _Dimens.TITLE_BOTTOM_MARGIN),
                    child: Text(
                      "Pretty Options Autocomplete",
                      style: AutocompleteStyles.title,
                    ),
                  ),
                  PrettyOptionsAutoCompleteWidget(),
                ],
            ),
          ),
        ),
      ),
    );
  }
}

abstract class _Dimens {
  static const double GENERAL_MARGIN = 20;
  static const double TITLE_TOP_MARGIN = 20;
  static const double TITLE_BOTTOM_MARGIN = 20;
}
