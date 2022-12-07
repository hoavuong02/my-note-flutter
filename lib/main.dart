import 'package:flutter/material.dart';
import 'package:my_app/constant/routes.dart';
import 'package:my_app/services/auth/auth_service.dart';
import 'package:my_app/views/login_view.dart';
import 'package:my_app/views/notes/create_update_note_view.dart';
import 'package:my_app/views/notes/notes_view.dart';
import 'package:my_app/views/register_view.dart';
import 'package:my_app/views/verify_email_view.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: <String, WidgetBuilder>{
        loginRoute: (context) => const LoginView(),
        registerRoute: (context) => const RegisterView(),
        notesRoute: (context) => const NoteView(),
        verifyEmailRoute: (context) => const VerifyEmailView(),
        createUpdateNoteRoute: (context) => const CreateUpdateNewNote(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AuthService.firebase().initialize(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final user = AuthService.firebase().currentUser;
            // print(user);
            if (user != null) {
              // if (user.isEmailVerified) {
              // return NoteView();
              // } else {
              //   return const VerifyEmailView();
              // }
              return NoteView();
            } else {
              return const LoginView();
            }
          // return LoginView();
          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}
