import 'package:flutter/cupertino.dart';
import 'package:my_app/utilities/dialogs/generic_diaglog.dart';

Future<void> showErrorDialog(
  BuildContext context,
  String text,
) {
  return showGenericDialog(
    context: context,
    title: 'An error has occured',
    content: text,
    optionBuilder: () => {
      'Ok': null,
    },
  );
}
