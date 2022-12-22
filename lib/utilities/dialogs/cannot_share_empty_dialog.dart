import 'package:flutter/cupertino.dart';
import 'package:my_app/extensions/buildcontext/loc.dart';

import 'generic_diaglog.dart';

Future<void> showCannotShareEmptyNoteDialog(BuildContext context) {
  return showGenericDialog<void>(
    context: context,
    title: context.loc.sharing,
    content: context.loc.cannot_share_empty_note_prompt,
    optionBuilder: () => {
      context.loc.ok: null,
    },
  );
}
