import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    List<String> services = [
      "Discovery phase",
      "Product design",
      "Product development",
      "Web development",
      "MVP development",
      "Technology consulting",
      "AI / ML development",
      "Mobile development",
      "Solution design",
      "Custom software development",
      "Blockchain / Web3.0 / NFT",
      "CTO Advisory",
    ];

    List<String> solutionsFor = [
      "SMBs",
      "Startups",
      "CTOs",
      "Non-tech leaders",
    ];

    List<String> company = [
      "Case studies",
      "Pricing",
      "About us",
      "Insights",
      "Partnership",
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
            children: [
              // About company contacts and social Media
              SizedBox(
                width: width * 0.22,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      AppImg.logo,
                      width: width * 0.07,
                    ),
                    SizedBox(height: height * 0.02),
                    MyTextPoppines(
                      text: AppText.aboutCompany,
                      fontSize: width * 0.0066,
                      fontWeight: FontWeight.w300,
                      color: AppColors.white.withOpacity(0.6),
                      maxLines: 10,
                    ),

                    SizedBox(height: height * 0.11),
                    // Social Media
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyTextPoppines(
                          text: AppText.socialMedia,
                          fontSize: width * 0.01,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                        ),
                        Row(
                          children: [
                            Container(
                              color: const Color(0xFF3C3B42),
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.only(right: 5),
                              child: const Icon(
                                Iconsax.instagram_copy,
                                color: AppColors.white,
                              ),
                            ),
                            Container(
                              color: const Color(0xFF3C3B42),
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(5),
                              child: const Icon(
                                Iconsax.facebook_copy,
                                color: AppColors.white,
                              ),
                            ),
                            Container(
                              color: const Color(0xFF3C3B42),
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(5),
                              child: const Icon(
                                Iconsax.youtube_copy,
                                color: AppColors.white,
                              ),
                            ),
                            Container(
                              color: const Color(0xFF3C3B42),
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(5),
                              child: const Icon(
                                Iconsax.dribbble_copy,
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(width: width * 0.05),
              // Services
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyTextPoppines(
                    text: AppText.services,
                    fontSize: width * 0.009,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                  SizedBox(height: height * 0.01),
                  SizedBox(
                    width: width * 0.15,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: services.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            bottom: height * 0.004,
                          ),
                          child: MyTextPoppines(
                            text: services[index],
                            fontSize: width * 0.007,
                            fontWeight: FontWeight.w300,
                            color: AppColors.white,
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
              SizedBox(width: width * 0.03),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyTextPoppines(
                              text: AppText.solutionsFor,
                              fontSize: width * 0.009,
                              fontWeight: FontWeight.w600,
                              color: AppColors.white,
                            ),
                            SizedBox(height: height * 0.01),
                            SizedBox(
                              width: width * 0.07,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: solutionsFor.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.only(bottom: height * 0.004),
                                    child: MyTextPoppines(
                                      text: solutionsFor[index],
                                      fontSize: width * 0.007,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.white,
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: width * 0.02),
                        // Company
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyTextPoppines(
                              text: AppText.company,
                              fontSize: width * 0.009,
                              fontWeight: FontWeight.w600,
                              color: AppColors.white,
                            ),
                            SizedBox(height: height * 0.01),
                            SizedBox(
                              width: width * 0.07,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: company.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                      bottom: height * 0.004,
                                    ),
                                    child: MyTextPoppines(
                                      text: company[index],
                                      fontSize: width * 0.007,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.white,
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.04),
                    // Contacts
                    MyTextPoppines(
                      text: "Contacts",
                      fontSize: width * 0.009,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                    SizedBox(height: height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyTextPoppines(
                          text: AppText.aboutcontacts,
                          fontSize: width * 0.0068,
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
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: height * 0.03),
          // Divider
          const Divider(thickness: 0.2),
          // Copyright and privacy policy
          SizedBox(height: height * 0.03),
        ],
      ),
    );
  }
}
