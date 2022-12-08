import 'package:flutter/cupertino.dart';

import 'generic_diaglog.dart';

Future<void> showCannotShareEmptyNoteDialog(BuildContext context) {
  return showGenericDialog<void>(
    context: context,
    title: 'Sharing',
    content: 'You cannot share an empty note',
    optionBuilder: () => {
      'OK': null,
    },
  );
}
