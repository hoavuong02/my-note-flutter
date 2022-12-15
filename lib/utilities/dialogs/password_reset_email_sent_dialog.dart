import 'package:flutter/cupertino.dart';
import 'package:my_app/utilities/dialogs/generic_diaglog.dart';

Future<void> showPasswordResetSentDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: 'Password Reset',
    content:
        'We have sent you a password reset link. Please check your email for more information.',
    optionBuilder: () => {
      'OK': null,
    },
  );
}
