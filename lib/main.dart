import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';
import 'package:wakeup_web/features/home/screens/home_screen.dart';
import 'package:wakeup_web/my%20web/my_web.dart';

import 'package:flutter/material.dart';
import 'package:wakeup_web/utils/constant/app_sizer.dart';
import 'package:wakeup_web/utils/res/routing/app_pages.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRes.init(context);
    return ToastificationWrapper(
      child: MaterialApp.router(
        title: 'Wakeup Monster',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: AppGoRouter.router,
        // home: MyWeb(),
      ),
    );
  }
}


// Todo 
// 1. Redirection
// 2. 

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Auto Scrolling Swiper',
//       home: Scaffold(
//         appBar: AppBar(title: Text('Auto Scrolling Swiper')),
//         body: SwiperSlider(),
//       ),
//     );
//   }
// }

// class SwiperSlider extends StatefulWidget {
//   @override
//   _SwiperSliderState createState() => _SwiperSliderState();
// }

// class _SwiperSliderState extends State<SwiperSlider> {
//   final List<Map<String, String>> slides = [
//     {
//       'image':
//           'https://florafountain.com/wp-content/uploads/2024/12/logos_Waghbakri.webp',
//       'alt': "Wagh Bakri Tea"
//     },
//     {
//       'image':
//           'https://florafountain.com/wp-content/uploads/2024/12/logos_Ajays.webp',
//       'alt': "Ajay's cafe"
//     },
//     {
//       'image':
//           'https://florafountain.com/wp-content/uploads/2024/12/logos_tweak.webp',
//       'alt': "Tweak"
//     },
//     {
//       'image':
//           'https://florafountain.com/wp-content/uploads/2024/12/logos_Dia-hart.webp',
//       'alt': "Dia Hart"
//     },
//     {
//       'image':
//           'https://florafountain.com/wp-content/uploads/2024/12/logos_Harit-zaveri.webp',
//       'alt': "Harit Zaveri"
//     },
//     {
//       'image':
//           'https://florafountain.com/wp-content/uploads/2024/12/logos_Shivashish.webp',
//       'alt': "Shivashish world school"
//     },
//     {
//       'image':
//           'https://florafountain.com/wp-content/uploads/2024/12/Manpras.webp',
//       'alt': "Manpras"
//     },
//     {
//       'image':
//           'https://florafountain.com/wp-content/uploads/2024/12/logos_Carzspa.webp',
//       'alt': "CarzSpa"
//     },
//     {
//       'image':
//           'https://florafountain.com/wp-content/uploads/2024/12/logos_Crown-PLaza.webp',
//       'alt': "CROWNE PLAZA"
//     },
//     {
//       'image':
//           'https://florafountain.com/wp-content/uploads/2024/12/logos_Team-.webp',
//       'alt': "T3AM"
//     },
//     {
//       'image':
//           'https://florafountain.com/wp-content/uploads/2024/12/logos_Kich.webp',
//       'alt': "Kich India"
//     },
//     {
//       'image':
//           'https://florafountain.com/wp-content/uploads/2024/12/logos_Sikandar.webp',
//       'alt': "Sikandar"
//     },
//     {
//       'image':
//           'https://florafountain.com/wp-content/uploads/2024/12/Vinal-1.webp',
//       'alt': "Vinal Oil"
//     },
//     {
//       'image':
//           'https://florafountain.com/wp-content/uploads/2024/12/Conde-Nast-Traveller.webp',
//       'alt': "Conde Nast Traveler"
//     },
//   ];

//   final PageController _pageController = PageController(
//     viewportFraction:
//         0.35, // This creates a similar effect to showing part of adjacent slides.
//   );

//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();
//     // Start the auto-scroll timer
//     _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
//       if (_pageController.hasClients) {
//         int nextPage = _pageController.page!.round() + 1;
//         if (nextPage == slides.length) {
//           nextPage = 0; // Loop back to the first slide.
//         }
//         _pageController.animateToPage(
//           nextPage,
//           duration: Duration(milliseconds: 300),
//           curve: Curves.easeIn,
//         );
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // Adjust the height as necessary.
//       height: 200,
//       child: PageView.builder(
//         controller: _pageController,
//         itemCount: slides.length,
//         itemBuilder: (context, index) {
//           return Container(
//             // Mimicking the HTML inline styles: fixed width of 143px and right margin 50px.
//             width: 143,
//             margin: EdgeInsets.only(right: 50),
//             child: Image.network(
//               "data:image/jpeg;base64,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",
//               fit: BoxFit.contain,
//               errorBuilder: (context, error, stackTrace) {
//                 return Center(child: Icon(Icons.error));
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }





 

// Needs
// 1. Use same spacing and same font size for everything
// 2. real brand images -- done
// 3. change logo
// 4. put link of sm -- done
// 5. email + website  -- done
// 6. site under maintanice page
// 7. convert to mobile view