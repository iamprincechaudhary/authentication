import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moneyman/firebase_options.dart';
import 'package:moneyman/view/homepage.dart';
import 'package:moneyman/view/log_in_page.dart';
import 'package:moneyman/view/sign_up_page.dart';

import 'controller/auth_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase Auth',
      theme: ThemeData(
        primaryColor: const Color(0xFF0072B8),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF0072B8),
          secondary: const Color(0xFF0EBE7F),
        ),
      ),
      initialBinding: BindingsBuilder(() {
        Get.put(AuthController());
      }),
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/signup', page: () => SignUpPage()),
        GetPage(name: '/home', page: () => const HomePage()),
      ],
    );
  }
}
