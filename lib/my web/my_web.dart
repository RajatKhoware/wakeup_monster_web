import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wakeup_web/features/about%20us/screen/about_us.dart';
import 'package:wakeup_web/features/client%20review/screen/client_review_section.dart';
import 'package:wakeup_web/features/contactus%20form/screen/contact_us_setion.dart';
import 'package:wakeup_web/features/home/screens/home_screen.dart';
import 'package:wakeup_web/features/why%20choose%20us/screen/why_choose_us_section.dart';

import '../features/we help/screen/we_help_section.dart';
import '../utils/res/comman/app_colors.dart';
import '../features/home/widgets/home_appbar.dart';
import '../features/our services/screens/our_services_screen.dart';

class MyWeb extends StatefulWidget {
  const MyWeb({super.key});

  @override
  State<MyWeb> createState() => _MyWebState();
}

class _MyWebState extends State<MyWeb> {
  final ScrollController _scrollController = ScrollController();
  double scrollPosition = 0;
  double opacity = 0;

  _scrollListener() {
    setState(() {
      scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.blackBg,
      appBar: PreferredSize(
        preferredSize: Size(width, 80),
        child: const HomeAppBar(),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: const Column(
          children: [
            HomePage(),
            OurServices(),
            ClientReviewSection(),
            WhyChooseUsSection(),
            ContactUsSection(),
            AboutUsSection()
          ],
        ),
      ),
    );
  }
}
