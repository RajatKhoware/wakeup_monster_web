import 'package:flutter/material.dart';
import 'package:wakeup_web/features/home/widgets/scrolling_brands.dart';
import 'package:wakeup_web/utils/constant/app_sizer.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/my_text.dart';

class WhatMakesUsSection extends StatelessWidget {
  const WhatMakesUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width <= 600;
    bool isTab = width > 600 || width < 1271;
    bool isWeb = width > 1270;
    return LayoutBuilder(builder: (context, constraints) {
      final spacing = constraints.maxWidth * 0.07;
      final spacing2 = constraints.maxWidth * 0.1;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ScrollingBrandsWidget(),
          SizedBox(height: spacing),
          MyTextPoppines(
            text: "What makes us more than just an agency?",
            fontSize: AppSizer.font15,
            //  fontSize: constraints.maxWidth * 0.008,
            fontWeight: FontWeight.w500,
            color: AppColors.orange,
            height: !isWeb ? 2 : 0,
          ),
          MyText(
            text: "Awaken, Elevate, and Evolve.",
            fontSize: isMobile
                ? AppSizer.font28
                : isTab
                    ? AppSizer.font40
                    : AppSizer.font48,
            //   fontSize: constraints.maxWidth * 0.03,
            fontWeight: FontWeight.bold,
            color: AppColors.white,
            googleFontFamily: "Plus Jakarta Sans",
            textAlign: TextAlign.center,
            height: 0,
          ),
          SizedBox(height: isMobile ? 60 : spacing2),
          isMobile
              ? Column(
                  children: [
                    const StatBox(
                      number: "4",
                      label: "Years",
                      color: AppColors.lightGreen,
                    ),
                    const SizedBox(height: 40),
                    const StatBox(
                      number: "84",
                      label: "Projects",
                      color: AppColors.lightGreen,
                    ),
                    const SizedBox(height: 40),
                    const StatBox(
                      number: "40",
                      label: "Experts",
                      color: AppColors.lightGreen,
                    ),
                    SizedBox(height: isMobile ? 60 : spacing2),
                    SizedBox(
                      width: width * 0.9,
                      child: MyTextPoppines(
                        text:
                            "We don't just code. We co-create, innovate, and ship software that means business.",
                        //   fontSize: width * 0.008,
                        fontSize: AppSizer.font15,
                        textAlign: TextAlign.start,
                        color: AppColors.white,
                        height: isMobile ? 1.6 : 1.4,
                        maxLines: 5,
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: width * 0.1),
                        child: !isWeb
                            ? Column(
                                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: width * 0.15,
                                    child: const StatBox(
                                      number: "4",
                                      label: "Years",
                                      color: AppColors.lightGreen,
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  SizedBox(
                                    width: width * 0.18,
                                    child: const StatBox(
                                      number: "84",
                                      label: "Projects",
                                      color: AppColors.lightGreen,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  SizedBox(
                                    width: width * 0.18,
                                    child: const StatBox(
                                      number: "40",
                                      label: "Experts",
                                      color: AppColors.lightGreen,
                                    ),
                                  ),
                                ],
                              )
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const StatBox(
                                    number: "9",
                                    label: "Years",
                                    color: AppColors.lightGreen,
                                  ),
                                  SizedBox(width: width * 0.02),
                                  const StatBox(
                                    number: "150",
                                    label: "Projects",
                                    color: AppColors.lightGreen,
                                  ),
                                  SizedBox(width: width * 0.02),
                                  const StatBox(
                                    number: "40",
                                    label: "Experts",
                                    color: AppColors.lightGreen,
                                  ),
                                ],
                              ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: width * 0.04),
                      child: SizedBox(
                        width: width * 0.24,
                        child: MyTextPoppines(
                          text:
                              "We're digital marketing scientists. Mixing metrics with memes & data with daring. The result? Pure magic!",
                          //   fontSize: width * 0.008,
                          fontSize: AppSizer.font15,
                          textAlign: TextAlign.start,
                          color: AppColors.white,
                          maxLines: 5,
                        ),
                      ),
                    ),
                  ],
                ),

          SizedBox(height: isMobile ? 80 : spacing2),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: MyText(
                text: "FAQ'S",
                fontSize: AppSizer.font28,
                //   fontSize: constraints.maxWidth * 0.03,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
                googleFontFamily: "Plus Jakarta Sans",
                textAlign: TextAlign.start,
                height: 0,
              ),
            ),
          ),
          SizedBox(height: 10),

          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: isWeb ? width * 0.6 : width,
              child: const Column(
                children: [
                  FAQItem(
                    question: "How do you approach a new project?",
                    answer:
                        "Our process kicks off with an in-depth discovery phase where we analyze your business needs and goals. This allows us to tailor our app, web, UI/UX, and AI solutions so that every step—from research to the final launch—aligns with your vision.",
                  ),
                  FAQItem(
                    question: "What types of projects do you specialize in?",
                    answer:
                        "We specialize in developing mobile apps, web platforms, and cutting-edge AI integrations, along with comprehensive UI/UX design. Whether you’re launching a new product or refining an existing service, we deliver solutions built to scale.",
                  ),
                  FAQItem(
                    question:
                        "How do you manage project timelines and quality?",
                    answer:
                        "We follow agile methodologies with regular sprints, reviews, and client feedback loops. This iterative process ensures projects meet deadlines while upholding strict quality standards at every development phase.",
                  ),

                  FAQItem(
                    question: "How do you price your projects?",
                    answer:
                        "Each project is unique, so we start with a detailed consultation to understand your requirements. From there, we offer a transparent pricing model that fits your budget and provides you with a clear scope of deliverables.",
                  ),
                  FAQItem(
                    question:
                        "What makes Wake Up Monster different from other agencies?",
                    answer:
                        "We combine deep technical expertise in app, web, UI/UX, and AI development with a client-centric approach. Our specialized micro-teams ensure every project gets focused attention and innovative solutions that drive real business growth.",
                  ),
                  // FAQItem(
                  //   question:
                  //       "Can you integrate new features into our existing systems?",
                  //   answer:
                  //       "Absolutely. Our team has extensive expertise in integrating modern technologies, including AI, into legacy systems. We ensure smooth transitions without disrupting your ongoing operations.",
                  // ),
                  // FAQItem(
                  //   question:
                  //       "What support do you offer after the project is launched?",
                  //   answer:
                  //       "Our support doesn’t end at launch. We provide comprehensive post-launch services including ongoing maintenance, feature upgrades, technical support, and periodic consultations to keep your solution optimized and secure.",
                  // ),
                ],
              ),
            ),
          ),
          SizedBox(height: spacing),
          // Scrolling Brands
          const ScrollingBrandsWidget2(),
        ],
      );
    });
  }
}

class StatBox extends StatelessWidget {
  final String number;
  final String label;
  final Color color;

  const StatBox({
    required this.number,
    required this.label,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width <= 600;
    bool isTab = width > 600 || width < 1271;
    bool isWeb = width > 1270;
    return Column(
      crossAxisAlignment:
          isWeb ? CrossAxisAlignment.center : CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            MyText(
              text: number,
              fontSize: AppSizer.font60,
              // fontSize: width * 0.042,
              fontWeight: FontWeight.w800,
              color: AppColors.yellow,
              googleFontFamily: "Plus Jakarta Sans",
            ),
            SizedBox(width: width * 0.002),
            Align(
              alignment: Alignment.topCenter,
              child: MyTextPoppines(
                text: "+",
                fontSize: AppSizer.font40,
                //   fontSize: width * 0.028,
                fontWeight: FontWeight.w600,
                color: AppColors.yellow,
              ),
            ),
          ],
        ),
        MyTextPoppines(
          text: label,
          fontSize: AppSizer.font16,
          // fontSize: width * 0.009,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}

class FAQItem extends StatelessWidget {
  final String question;
  final String? answer;

  const FAQItem({
    required this.question,
    this.answer,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    bool isMobile = width <= 600;
    bool isTab = width > 600 || width < 1271;
    bool isWeb = width > 1270;
    return LayoutBuilder(builder: (context, constraints) {
      final spacing = constraints.maxWidth * 0.07;
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: isMobile ? width * 0.05 : width * 0.02,
          vertical: isMobile ? 6 : constraints.maxWidth * 0.006,
        ),
        decoration: const BoxDecoration(
          color: AppColors.black10,
          border: Border(
            bottom: BorderSide(color: Colors.white12),
          ),
        ),
        child: ExpansionTile(
          collapsedIconColor: Colors.red,
          iconColor: Colors.white,
          // childrenPadding: EdgeInsets.zero,
          // childrenPadding: EdgeInsets.symmetric(
          //   horizontal: width * 0.02,
          //    vertical: constraints.maxWidth * 0.006,
          // ),
          title: MyTextPoppines(
            text: question,
            fontSize: isMobile ? 13 : AppSizer.font15,
            //    fontSize: constraints.maxWidth * 0.014,
            color: Colors.white,
            maxLines: 4,
            height: isMobile ? 1.6 : 1.4,
          ),
          children: answer != null
              ? [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                    color: AppColors.white.withOpacity(0.14),
                    child: MyTextPoppines(
                      text: answer!,
                      fontSize: isMobile ? 13 : AppSizer.font15,
                      maxLines: 20,
                      // fontSize: constraints.maxWidth * 0.014,
                      color: Colors.white,
                      height: isMobile ? 1.6 : 1.4,
                    ),
                  ),
                ]
              : [],
        ),
      );
    });
  }
}
