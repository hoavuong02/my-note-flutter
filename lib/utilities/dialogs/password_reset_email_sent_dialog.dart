import 'package:flutter/cupertino.dart';
import 'package:my_app/extensions/buildcontext/loc.dart';
import 'package:my_app/utilities/dialogs/generic_diaglog.dart';

Future<void> showPasswordResetSentDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: context.loc.password_reset,
    content: context.loc.password_reset_dialog_prompt,
    optionBuilder: () => {
      context.loc.ok: null,
    },
  );
}
