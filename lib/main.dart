import 'package:flutter/material.dart';
import 'package:wise_wave/components/auth_page.dart';
//import 'package:wise_wave/screens/signup_screen.dart';
//import 'package:wise_wave/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: LoginPage(),
      //home: SignupPage(),
      home: AuthPage(),
    );
  }
}