import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakeup_web/features/home/widgets/scrolling_brands.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/my_text.dart';

class WhatMakesUsSection extends StatelessWidget {
  const WhatMakesUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ScrollingBrandsWidget(),
        SizedBox(height: height * 0.08),
        MyTextPoppines(
          text: "What makes us more than just an agency?",
          fontSize: width * 0.008,
          fontWeight: FontWeight.w500,
          color: AppColors.orange,
          height: 0,
        ),
        MyText(
          text: "Awaken, Elevate, and Evolve.",
          fontSize: width * 0.03,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
          googleFontFamily: "Plus Jakarta Sans",
          height: 0,
        ),
        SizedBox(height: height * 0.12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const StatBox(
                        number: "9",
                        label: "Years",
                        color: AppColors.lightGreen),
                    SizedBox(width: width * 0.02),
                    const StatBox(
                        number: "150",
                        label: "Projects",
                        color: AppColors.lightGreen),
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
                  fontSize: width * 0.008,
                  textAlign: TextAlign.start,
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: height * 0.12),
        Align(
          alignment: Alignment.topLeft,
          child: SizedBox(
            width: width * 0.6,
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
                  question: "How do you manage project timelines and quality?",
                  answer:
                      "We follow agile methodologies with regular sprints, reviews, and client feedback loops. This iterative process ensures projects meet deadlines while upholding strict quality standards at every development phase.",
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
              ],
            ),
          ),
        ),
        SizedBox(height: height * 0.08),
        // Scrolling Brands
        const ScrollingBrandsWidget2(),
      ],
    );
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: number,
              fontSize: width * 0.042,
              fontWeight: FontWeight.w800,
              color: AppColors.orange,
              googleFontFamily: "Plus Jakarta Sans",
            ),
            SizedBox(width: width * 0.002),
            Align(
              alignment: Alignment.topCenter,
              child: MyTextPoppines(
                text: "+",
                fontSize: width * 0.028,
                fontWeight: FontWeight.w600,
                color: AppColors.orange,
              ),
            ),
          ],
        ),
        MyTextPoppines(
          text: label,
          fontSize: width * 0.009,
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
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: const BoxDecoration(
        color: AppColors.black10,
        border: Border(
          bottom: BorderSide(color: Colors.white12),
        ),
      ),
      child: ExpansionTile(
        collapsedIconColor: Colors.red,
        iconColor: Colors.white,
        title: MyTextPoppines(
          text: question,
          fontSize: 16,
          color: Colors.white,
        ),
        children: answer != null
            ? [
                Container(
                  padding: const EdgeInsets.all(16),
                  color: AppColors.white.withOpacity(0.14),
                  child: MyTextPoppines(
                    text: answer!,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ]
            : [],
      ),
    );
  }
}
