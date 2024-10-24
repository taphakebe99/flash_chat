import 'package:firebase_core/firebase_core.dart';
import 'package:flash/screens/chat_screen.dart';
import 'package:flash/screens/login_screen.dart';
import 'package:flash/screens/registration_screen.dart';
import 'package:flash/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  //Pour assurer que les widgets Flutter sont correctement configurés.
  WidgetsFlutterBinding.ensureInitialized();

  //Pour initialiser Firebase.
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
