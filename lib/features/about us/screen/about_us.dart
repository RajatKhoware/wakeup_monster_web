import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
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

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.16),
      child: Column(
        children: [
          // Divider
          const Divider(thickness: 0.2),
          // Other
          SizedBox(height: height * 0.03),
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
                      width: width * 0.07,
                    ),
                    SizedBox(height: height * 0.02),
                    SizedBox(
                      width: width * 0.22,
                      child: MyTextPoppines(
                        text: AppText.aboutCompany,
                        fontSize: width * 0.0066,
                        fontWeight: FontWeight.w300,
                        color: AppColors.white.withOpacity(0.6),
                        maxLines: 10,
                      ),
                    ),

                    SizedBox(height: height * 0.05),
                    // Contacts
                    MyTextPoppines(
                      text: "Contacts",
                      fontSize: width * 0.009,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                    SizedBox(height: height * 0.01),
                    SizedBox(
                      width: width * 0.22,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyTextPoppines(
                            text: AppText.aboutcontacts,
                            fontSize: width * 0.007,
                            fontWeight: FontWeight.w300,
                            color: AppColors.white.withOpacity(0.6),
                            maxLines: 3,
                          ),
                          MyTextPoppines(
                            text: "MORE CONTACTS",
                            fontSize: width * 0.0065,
                            fontWeight: FontWeight.w600,
                            color: AppColors.orange,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(width: width * 0.01),
              // Services
              AboutUsCategories(list: services, heading: AppText.services),

              SizedBox(width: width * 0.06),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyTextPoppines(
                text: AppText.copyright,
                fontSize: width * 0.007,
                fontWeight: FontWeight.w300,
                color: AppColors.white.withOpacity(0.6),
              ),
              MyTextPoppines(
                text: AppText.privacyPolicy,
                fontSize: width * 0.007,
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

class AboutUsSocialMediaSection extends StatefulWidget {
  const AboutUsSocialMediaSection({super.key});

  @override
  State<AboutUsSocialMediaSection> createState() =>
      _AboutUsSocialMediaSectionState();
}

class _AboutUsSocialMediaSectionState extends State<AboutUsSocialMediaSection> {
  // Keeping Track of hovered value
  List<bool> isHovered = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTextPoppines(
          text: AppText.socialMedia,
          fontSize: width * 0.009,
          fontWeight: FontWeight.w600,
          color: AppColors.white,
        ),
        SizedBox(height: height * 0.005),
        Row(
          children: [
            buildIcon(
              context: context,
              icon: FontAwesomeIcons.linkedin,
              onTap: () {},
              index: 0,
            ),
            buildIcon(
                context: context,
                icon: FontAwesomeIcons.facebook,
                onTap: () {},
                index: 1),
            buildIcon(
              context: context,
              icon: FontAwesomeIcons.instagram,
              onTap: () {},
              index: 2,
            ),
          ],
        ),
        Row(
          children: [
            buildIcon(
              context: context,
              icon: FontAwesomeIcons.youtube,
              onTap: () {},
              index: 3,
            ),
            buildIcon(
              context: context,
              icon: FontAwesomeIcons.behance,
              onTap: () {},
              index: 4,
            ),
            buildIcon(
              context: context,
              icon: FontAwesomeIcons.dribbble,
              onTap: () {},
              index: 5,
            ),
          ],
        ),
      ],
    );
  }

  Widget buildIcon({
    required BuildContext context,
    required IconData icon,
    required VoidCallback onTap,
    required int index,
  }) {
    final width = MediaQuery.sizeOf(context).width;

    return InkWell(
      onTap: onTap,
      onHover: (value) {
        setState(() {
          value ? isHovered[index] = true : isHovered[index] = false;
        });
      },
      child: Container(
        color: !isHovered[index] ? const Color(0xFF3C3B42) : AppColors.orange,
        padding: EdgeInsets.all(width * 0.006),
        margin: EdgeInsets.all(width * 0.002),
        child: Icon(
          icon,
          color: AppColors.white,
          size: width * 0.012,
        ),
      ),
    );
  }
}

class AboutUsCategories extends StatelessWidget {
  final List list;
  final String heading;
  const AboutUsCategories({
    super.key,
    required this.list,
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTextPoppines(
          text: heading,
          fontSize: width * 0.009,
          fontWeight: FontWeight.w600,
          color: AppColors.white,
        ),
        SizedBox(height: height * 0.01),
        SizedBox(
          width: width * 0.1,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: height * 0.004,
                ),
                child: MyTextPoppines(
                  text: list[index],
                  fontSize: width * 0.007,
                  fontWeight: FontWeight.w300,
                  color: AppColors.white,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
