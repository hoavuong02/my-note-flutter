import 'package:flutter/cupertino.dart';
import 'package:my_app/extensions/buildcontext/loc.dart';
import 'package:my_app/utilities/dialogs/generic_diaglog.dart';

Future<bool> showDeleteDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: context.loc.delete,
    content: context.loc.delete_note_prompt,
    optionBuilder: () => {
      context.loc.cancel: false,
      context.loc.yes: true,
    },
  ).then(
    (value) => value ?? false,
  );
}
