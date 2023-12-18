import 'package:firebase_core/firebase_core.dart';
import 'package:flix_by/firebase_options.dart';
import 'package:flix_by/presentation/pages/login_page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ProviderScope(
    child: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginPage()
        // Scaffold(
        //   appBar: AppBar(
        //     title: const Text("Aplikasi Pemesanan Tiket"),
        //     centerTitle: true,
        //   ),
        //   body: const Center(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Text('Hello Cruel World!'),
        //         Text("Age : 22"),
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}
