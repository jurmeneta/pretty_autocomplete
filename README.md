# pretty_autocomplete
Flutter sample of using autocomplete widget and make it pretty

Sometimes people tend to use any dart library when coding an specific widget becomes a bit hard. In any case, I do think that's important to try to figure out how things work instead of cutting corners.

For that reason, I decided to create this repository. A simple exercice about how the widget Autocomplete works.

It is a simple demonstration where 3 Autocomplete samples can be found.

![alt text](https://github.com/jurmeneta/pretty_autocomplete/blob/main/screenshots/overall.png)

First of all a simple autocomplete, which is the default provided in Dart

![alt text](https://github.com/jurmeneta/pretty_autocomplete/blob/main/screenshots/simple_autocomplete.png)

Second, exploring Autocomplete possibilities, there's one called fieldViewBuilder which can return a TextField and you can make it as pretty as you want:

```
      fieldViewBuilder: (BuildContext context,
          TextEditingController fieldTextEditingController,
          FocusNode fieldFocusNode,
          VoidCallback onFieldSubmitted) {
        return TextField(

```

![alt text](https://raw.githubusercontent.com/jurmeneta/pretty_autocomplete/main/screenshots/pretty_text_field_autocomplete.png)

And finally, the list of options displayed can also be modified via the optionsViewBuilder:

```
optionsViewBuilder: (BuildContext context,
            AutocompleteOnSelected<String> onSelected,
            Iterable<String> options) {
      return Align(
```

![alt text](https://raw.githubusercontent.com/jurmeneta/pretty_autocomplete/main/screenshots/pretty_options_autocomplete.png)

Enjoy!
