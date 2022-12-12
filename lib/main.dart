import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/constant/routes.dart';
import 'package:my_app/services/auth/auth_service.dart';
import 'package:my_app/services/auth/bloc/auth_bloc.dart';
import 'package:my_app/services/auth/bloc/auth_events.dart';
import 'package:my_app/services/auth/bloc/auth_state.dart';
import 'package:my_app/services/auth/firebase_auth_provider.dart';
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
      home: BlocProvider<AuthBloc>(
        create: (context) => AuthBloc(FirebaseAuthProvider()),
        child: HomePage(),
      ),
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
    context.read<AuthBloc>().add(const AuthEventInitialize());
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthStateLoggedIn) {
          return const NoteView();
        }
        // else if (state is AuthStateNeedsVerification) {
        //   return const VerifyEmailView();
        // }
        else if (state is AuthStateLoggedOut) {
          return const LoginView();
        } else {
          // return Scaffold(
          //   body: CircularProgressIndicator(),
          // );
          return const NoteView();
        }
      },
    );
  }
}
