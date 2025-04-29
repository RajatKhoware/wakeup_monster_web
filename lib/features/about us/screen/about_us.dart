import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wakeup_web/features/about%20us/widget/about_hover_text.dart';
import 'package:wakeup_web/features/about%20us/widget/about_us_categories_section.dart';
import 'package:wakeup_web/features/about%20us/widget/about_us_sm_section.dart';
import 'package:wakeup_web/utils/constant/app_sizer.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/comman/app_text.dart';
import 'package:wakeup_web/utils/res/my_text.dart';

import '../../../utils/res/comman/app_images.dart';

class AboutUsSection extends StatelessWidget {
  const AboutUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    // ALL SERVICES
    List<String> services = [
      "Mobile App Development",
      "Web Development",
      "MVP Development",
      "AI & Automation Solutions",
      "Custom Software Development",
      "UI/UX Design",
      "Product Discovery & Strategy",
      "Design & Creative",
      "Branding",
      "Marketing"
    ];
    // SOLUTIONS FOR
    List<String> solutionsFor = [
      "SMBs",
      "Startups",
      "CTOs",
      "Non-tech leaders",
    ];

    // COMPANY
    List<String> company = [
      "Case studies",
      "Pricing",
      "About us",
      "Insights",
      // "Partnership",
    ];

    // Industries
    List<String> industries = [
      "eLearning",
      "HR tech",
      "Fintech",
      "Engineering",
    ];

    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: isMobile
              ? width * 0.03
              : isTab
                  ? width * 0.03
                  : width * 0.16),
      child: Column(
        children: [
          // Divider
          const Divider(thickness: 0.2),
          // Other
          const SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // About company contacts and social Media
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      AppImg.logo,
                      width: isMobile
                          ? width * 0.5
                          : isTab
                              ? width * 0.35
                              : width * 0.21,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: isMobile ? 10 : height * 0.005),
                    SizedBox(
                      width: isMobile
                          ? width
                          : isTab
                              ? width * 0.8
                              : width * 0.22,
                      child: MyTextPoppines(
                        text: AppText.aboutCompany,
                        fontSize: 13,
                        // fontSize: width * 0.0066,
                        fontWeight: FontWeight.w300,
                        color: AppColors.white.withOpacity(0.6),
                        maxLines: 10,
                        height: isMobile ? 1.6 : 1.4,
                      ),
                    ),
                    SizedBox(height: isMobile ? 30 : height * 0.03),
                    const AboutUsContactUs(),
                    if (isMobile) ...[
                      SizedBox(height: 40),
                      AboutUsCategories(
                          list: services, heading: AppText.services),
                      SizedBox(height: 40),
                      AboutUsCategories(
                        list: solutionsFor,
                        heading: AppText.solutionsFor,
                      ),
                      SizedBox(height: 40),
                      AboutUsCategories(
                        list: company,
                        heading: AppText.company,
                      ),
                      SizedBox(height: 40),
                      const AboutUsSocialMediaSection(),
                    ],
                    if (isTab) ...[
                      SizedBox(height: 40),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AboutUsCategories(
                            list: services,
                            heading: AppText.services,
                          ),
                          Spacer(),
                          Column(
                            children: [
                              AboutUsCategories(
                                list: solutionsFor,
                                heading: AppText.solutionsFor,
                              ),
                              SizedBox(height: 40),
                              AboutUsCategories(
                                list: company,
                                heading: AppText.company,
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 40),
                      const AboutUsSocialMediaSection(),
                    ],
                  ],
                ),
              ),

              const SizedBox(width: 40),
              // Services
              //   AboutUsCategories(list: services, heading: AppText.services),

              SizedBox(width: width * 0.06),
              if (isWeb)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AboutUsCategories(
                            list: solutionsFor,
                            heading: AppText.solutionsFor,
                          ),
                          SizedBox(width: width * 0.03),
                          // Social Media
                          const AboutUsSocialMediaSection(),
                        ],
                      ),
                      SizedBox(height: height * 0.04),
                      // Company
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AboutUsCategories(
                            list: company,
                            heading: AppText.company,
                          ),
                          // SizedBox(width: width * 0.03),
                          // AboutUsCategories(
                          //   list: industries,
                          //   heading: AppText.industries,
                          // ),
                        ],
                      )
                    ],
                  ),
                )
            ],
          ),
          SizedBox(height: height * 0.03),
          // Divider
          const Divider(thickness: 0.2),
          // Copyright and privacy policy
          SizedBox(height: height * 0.01),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.6,
                child: MyTextPoppines(
                  text: AppText.copyright,
                  fontSize: AppSizer.font13,
                  //   fontSize: width * 0.007,
                  height: isMobile ? 1.6 : 1.4,
                  fontWeight: FontWeight.w300,
                  color: AppColors.white.withOpacity(0.6),
                ),
              ),
              MyTextPoppines(
                text: AppText.privacyPolicy,
                fontSize: AppSizer.font13,
                fontWeight: FontWeight.w300,
                color: AppColors.white.withOpacity(0.6),
              ),
            ],
          ),
          SizedBox(height: height * 0.03),
        ],
      ),
    );
  }
}

class AboutUsContactUs extends StatelessWidget {
  const AboutUsContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    // ALL SERVICES
    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;

    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    void launchEmail() async {
      final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: 'wakeup.mosters@gmail.com',
        query: encodeQueryParameters(<String, String>{
          'subject': 'Hello WakeUpMonster!',
        }),
      );

      if (await canLaunchUrl(emailLaunchUri)) {
        await launchUrl(emailLaunchUri);
      } else {
        throw 'Could not launch $emailLaunchUri';
      }
    }

    void launchWebsite(String url) async {
      final Uri uri = Uri.parse(url);

      if (await canLaunchUrl(uri)) {
        await launchUrl(uri,
            mode: LaunchMode.externalApplication); // opens in browser
      } else {
        throw 'Could not launch $uri';
      }
    }

    void launchPhoneNumber(String phoneNumber) async {
      final Uri phoneUri = Uri(scheme: 'tel', path: phoneNumber);

      if (await canLaunchUrl(phoneUri)) {
        await launchUrl(phoneUri);
      } else {
        throw 'Could not launch $phoneUri';
      }
    }

    return Container(
      //  color: AppColors.lightGreen,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Contacts
          const MyTextPoppines(
            text: "Contacts",
            fontSize: AppSizer.font16,
            // fontSize: width * 0.009,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
          ),
          SizedBox(height: isMobile ? 12 : height * 0.01),
          SizedBox(
            width: isMobile
                ? width * 0.7
                : isTab
                    ? width * 0.4
                    : width * 0.22,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AboutUsHoverText(
                      text: "+91 77249-86116",
                      // fontSize: width * 0.007,
                      // fontWeight: FontWeight.w300,
                      color: AppColors.white.withOpacity(0.6),
                      onTap: () => launchPhoneNumber("+917724986116"),
                    ),
                    AboutUsHoverText(
                      text: "wakeup.mosters@gmail.com",
                      color: AppColors.white.withOpacity(0.6),
                      onTap: () => launchEmail(),
                    ),
                    AboutUsHoverText(
                      text: "www.wakeupmoster.com",
                      color: AppColors.white.withOpacity(0.6),
                      onTap: () => launchWebsite("www.wakeupmoster.com"),
                    ),
                  ],
                ),
                // MyTextPoppines(
                //   text: "MORE CONTACTS",
                //   fontSize: width * 0.0065,
                //   fontWeight: FontWeight.w600,
                //   color: AppColors.orange,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
