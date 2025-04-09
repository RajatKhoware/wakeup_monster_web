import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import 'package:wakeup_web/features/home/screens/home_screen.dart';
import 'package:wakeup_web/my%20web/my_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp(
        title: 'Wakeup Monster',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyWeb(),
      ),
    );
  }
}


 

// Needs
// 1. Use same spacing and same font size for everything
// 2. real brand images
// 3. change logo
// 4. put link of sm
// 5. email + website 
// 6. site under maintanice page
// 7. convert to mobile view