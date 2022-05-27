import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:halawa_naim_chat/screens/chat_screen.dart';
import 'package:halawa_naim_chat/screens/login_screen.dart';
import 'package:halawa_naim_chat/screens/registration_screen.dart';
import 'package:halawa_naim_chat/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MoeChat());
}

class MoeChat extends StatelessWidget {
  const MoeChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        ChatScreen.id: (context) => const ChatScreen(),
      },
    );
  }
}
