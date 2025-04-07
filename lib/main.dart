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


// About 
// 1. make email redirection
// 2. make website tapable 
// 3. put link of sm
// 4. work on site under maintaince page 
// 5. Change text and color pallet of website
// 6. change logo of website
// 6. Convert it into mobile view 