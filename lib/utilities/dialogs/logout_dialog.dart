import 'package:flutter/cupertino.dart';
import 'package:my_app/extensions/buildcontext/loc.dart';
import 'package:my_app/utilities/dialogs/generic_diaglog.dart';

Future<bool> showLogOutDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: context.loc.logout_button,
    content: context.loc.logout_dialog_prompt,
    optionBuilder: () => {
      context.loc.cancel: false,
      context.loc.logout_button: true,
    },
  ).then(
    (value) => value ?? false,
  );
}
