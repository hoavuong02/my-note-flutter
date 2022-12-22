import 'package:flutter/cupertino.dart';
import 'package:my_app/extensions/buildcontext/loc.dart';
import 'package:my_app/utilities/dialogs/generic_diaglog.dart';

Future<void> showErrorDialog(
  BuildContext context,
  String text,
) {
  return showGenericDialog(
    context: context,
    title: context.loc.generic_error_prompt,
    content: text,
    optionBuilder: () => {
      context.loc.ok: null,
    },
  );
}
