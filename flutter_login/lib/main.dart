import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'firebase_options.dart';

// TODO(codelab user): Get API key
const clientId =
    '632534890207-1iedgrfh3ogjqpoppd00a3laned7mcrf.apps.googleusercontent.com';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}
