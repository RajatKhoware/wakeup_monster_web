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
        SizedBox(height: height * 0.0),
        const ScrollingBrandsWidget(),
        SizedBox(height: height * 0.08),
        MyTextPoppines(
          text: "What makes us more than just an agency?",
          fontSize: width * 0.015,
          fontWeight: FontWeight.w500,
          color: Colors.white,
          height: 0,
        ),
        MyTextPoppines(
          text: "We don’t just develop—we Awaken, Elevate, and Evolve.",
          fontSize: width * 0.028,
          fontWeight: FontWeight.bold,
          color: AppColors.orange,
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
                  color: Colors.white,
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
                  question:
                      "Want to create awareness about your brand and reach the right audience?",
                  answer:
                      "We’re the kind of digital marketing agency that doesn’t just chase eyeballs. We chase the right eyeballs. Our social media marketing team crafts narratives that turn scrollers into stoppers, while our content team ensures they stick around. Because awareness without engagement is just expensive silence.",
                ),
                FAQItem(
                  question:
                      "Everyone promises first-page rankings. What makes us different?",
                  answer:
                      "We’re the kind of digital marketing agency that doesn’t just chase eyeballs. We chase the right eyeballs. Our social media marketing team crafts narratives that turn scrollers into stoppers, while our content team ensures they stick around. Because awareness without engagement is just expensive silence.",
                ),
                FAQItem(
                  question:
                      "Five specialised teams sound expensive. How do we justify the investment?",
                  answer:
                      "We’re the kind of digital marketing agency that doesn’t just chase eyeballs. We chase the right eyeballs. Our social media marketing team crafts narratives that turn scrollers into stoppers, while our content team ensures they stick around. Because awareness without engagement is just expensive silence.",
                ),
                FAQItem(
                  question:
                      "What if you need just one of our specialised services?",
                  answer:
                      "We’re the kind of digital marketing agency that doesn’t just chase eyeballs. We chase the right eyeballs. Our social media marketing team crafts narratives that turn scrollers into stoppers, while our content team ensures they stick around. Because awareness without engagement is just expensive silence.",
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: height * 0.08),
        // Scrolling Brands
        const ScrollingBrandsWidget2(),
        SizedBox(height: height * 0.04),
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
            MyTextPoppines(
              text: number,
              fontSize: width * 0.042,
              fontWeight: FontWeight.bold,
              color: color,
            ),
            SizedBox(width: width * 0.002),
            Align(
              alignment: Alignment.topCenter,
              child: MyTextPoppines(
                text: "+",
                fontSize: width * 0.028,
                fontWeight: FontWeight.w600,
                color: color,
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
                  color: Colors.deepPurple,
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
