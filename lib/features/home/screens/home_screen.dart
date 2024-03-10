import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wakeup_web/res/comman/app_colors.dart';
import 'package:wakeup_web/res/comman/app_images.dart';
import 'package:wakeup_web/res/comman/app_text.dart';

import '../../../res/my_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(width, 80),
        child: const HomeAppBar(),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.18),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: height * 1,
                width: width,
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: height * 0.01),
                child: Column(
                  children: [
                    // Text
                    MyTextPoppines(
                      text: AppText.innovateWithUs,
                      color: AppColors.orange,
                      fontWeight: FontWeight.w600,
                      fontSize: width * 0.008,
                    ),
                    SizedBox(height: height * 0.01),
                    // Banner
                    SizedBox(
                      child: CustomPaint(
                        painter: MyRectanglePainter(),
                        size: Size(width, height * 0.3),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: height * 0.05,
                            left: width * 0.1,
                            right: width * 0.1,
                            bottom: height * 0.03,
                          ),
                          child: MyTextPoppines(
                            text: AppText.webMobileAI,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.04,
                            height: 1,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: height * 0.015),
                    SizedBox(
                      width: width * 0.3,
                      child: MyTextPoppines(
                        text: AppText.homesubHeadline,
                        color: AppColors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: width * 0.008,
                        maxLines: 5,
                        height: 1.6,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: height * 0.04),
                    //Lets talk business
                    const LetsTalk(),
                    SizedBox(height: height * 0.03),
                    Container(
                      margin: EdgeInsets.only(right: width * 0.01),
                      width: width * 0.001,
                      height: height * 0.3,
                      color: AppColors.lightGreen,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.black,
              child: SizedBox(
                height: height * .9,
                width: width,
              ),
            ),
            Stack(
              children: [
                Container(
                  color: Colors.red,
                  child: SizedBox(
                    height: height * .9,
                    width: width,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyRectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final Paint paint = Paint()
      ..color = AppColors.orange
      ..style = PaintingStyle.fill;

    final Path path = Path()
      ..moveTo(0, height * 0.08) // point A
      ..lineTo(width, height * 0.01) // point B
      ..lineTo(width, height) // point C
      ..lineTo(0, height) // point D
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class LetsTalk extends StatefulWidget {
  const LetsTalk({super.key});

  @override
  State<LetsTalk> createState() => _LetsTalkState();
}

class _LetsTalkState extends State<LetsTalk> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onHover: (value) {
            setState(() {
              value ? isHover = true : isHover = false;
            });
          },
          onTap: () {},
          child: Column(
            children: [
              MyTextPoppines(
                text: AppText.talkBusiness,
                color: isHover ? AppColors.orange : AppColors.lightGreen,
                fontWeight: FontWeight.w700,
                fontSize: width * 0.009,
                textAlign: TextAlign.center,
              ),
              // SizedBox(height: height * 0.002),
              Visibility(
                //  visible: !isHover,
                child: Container(
                  width: width * 0.092,
                  height: height * 0.0018,
                  color: isHover ? AppColors.orange : AppColors.lightGreen,
                ),
              )
            ],
          ),
        ),
        SizedBox(width: width * 0.006),
        Icon(
          Icons.arrow_outward,
          color: isHover ? AppColors.orange : AppColors.lightGreen,
          size: width * 0.015,
        ),
      ],
    );
  }
}

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  bool isDarkTheme = false;

  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    Color appBarBgColor = isDarkTheme ? AppColors.black : AppColors.white;
    Color textColor = isDarkTheme ? AppColors.white : AppColors.black;
    // Color textColoronHover =
    //     isDarkTheme ? AppColors.lightGreen : AppColors.lightGreen;

    return Container(
      color: appBarBgColor,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              isDarkTheme ? AppImg.logo : AppImg.darkLogo,
              width: width * 0.12,
            ),
            SizedBox(
              width: width * 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Portfolio
                  buildHeadings(
                    context: context,
                    text: AppText.portfolio,
                    isHovered: _isHovering[0],
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[0] = true : _isHovering[0] = false;
                      });
                    },
                    onTap: () {},
                  ),
                  // Services
                  buildHeadings(
                    context: context,
                    text: AppText.services,
                    isHovered: _isHovering[1],
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[1] = true : _isHovering[1] = false;
                      });
                    },
                    onTap: () {},
                  ),
                  // Solution
                  buildHeadings(
                    context: context,
                    text: AppText.solutions,
                    isHovered: _isHovering[2],
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[2] = true : _isHovering[2] = false;
                      });
                    },
                    onTap: () {},
                  ),
                  // Pricing
                  buildHeadings(
                    context: context,
                    text: AppText.pricing,
                    isHovered: _isHovering[3],
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[3] = true : _isHovering[3] = false;
                      });
                    },
                    onTap: () {},
                  ),
                  // Contact us
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[4] = true : _isHovering[4] = false;
                      });
                    },
                    onTap: () {},
                    child: MyTextPoppines(
                      text: AppText.contactUs,
                      color: _isHovering[4]
                          ? AppColors.lightGreen
                          : AppColors.orange,
                      fontWeight: FontWeight.w600,
                      fontSize: width * 0.008,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: width * 0.08)
          ],
        ),
      ),
    );
  }

  Widget buildHeadings({
    required BuildContext context,
    required String text,
    required bool isHovered,
    required void Function(bool)? onHover,
    required VoidCallback onTap,
  }) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return InkWell(
      onHover: onHover,
      onTap: onTap,
      child: Row(
        children: [
          MyTextPoppines(
            text: text,
            color: isHovered ? AppColors.lightGreen : AppColors.black,
            fontWeight: FontWeight.normal,
            fontSize: width * 0.008,
          ),
          SizedBox(width: width * 0.002),
          Visibility(
            visible: isHovered,
            child: Icon(
              Icons.arrow_outward,
              color: AppColors.lightGreen,
              size: width * 0.01,
            ),
          ),
        ],
      ),
    );
  }
}
