import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_services.dart';
import 'package:uts_arnea_wanda_izzi/wrapper.dart';
import 'package:uts_arnea_wanda_izzi/auth_services.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.onAuthStateChanged,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
