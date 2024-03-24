import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/comman/my_textfield.dart';

import '../../../utils/res/comman/app_text.dart';
import '../../../utils/res/helper/my_custom_painter.dart';
import '../../../utils/res/my_text.dart';

class ContactUsSection extends StatelessWidget {
  const ContactUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Align(
      alignment: Alignment.center,
      child: Container(
        color: AppColors.blackBg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.2),
            // Text
            MyTextPoppines(
              text: "YOU HAVE A VISION",
              color: AppColors.orange,
              fontWeight: FontWeight.w600,
              fontSize: width * 0.009,
            ),

            ContactUsBanner(width: width, height: height),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Contact us
                const ContactUsContainer(),
                SizedBox(width: width * 0.012),
                // What's Next
                const ContactUsInfoContainer(),
              ],
            ),
            SizedBox(height: height * 0.2),
          ],
        ),
      ),
    );
  }
}

class ContactUsInfoContainer extends StatelessWidget {
  const ContactUsInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final icon = Transform.rotate(
      angle: 45 * 3.141592653589793 / 180,
      child: Container(
        width: 8,
        height: 8,
        color: AppColors.orange,
        margin: const EdgeInsets.only(top: 2),
      ),
    );
    return Container(
      width: width * 0.34,
      height: height * 0.8,
      color: AppColors.black10,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
        vertical: height * 0.03,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.011),
          Row(
            children: [
              icon,
              SizedBox(width: width * 0.01),
              MyTextPoppines(
                text: AppText.whatsNext,
                fontSize: width * 0.011,
                color: AppColors.white,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          SizedBox(height: height * 0.02),
          MyTextPoppines(
            text: AppText.onceYourEmailGetsToOurInbox,
            fontSize: width * 0.0085,
            color: AppColors.white,
            fontWeight: FontWeight.w300,
            height: 1.6,
            maxLines: 10,
          ),
          SizedBox(height: height * 0.04),
          Row(
            children: [
              icon,
              SizedBox(width: width * 0.01),
              MyTextPoppines(
                text: AppText.theFirstPointOfContact,
                fontSize: width * 0.011,
                color: AppColors.white,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          SizedBox(height: height * 0.03),
          // Photo Name Designation Line
          buildProfile(
            context: context,
            image: "",
            name: "Rajat Khoware",
            post: "Founder",
            quote: AppText.founderQuote,
          ),
          SizedBox(height: height * 0.02),
          buildProfile(
            context: context,
            image: "",
            name: "Akshay Sen",
            post: "Co-Founder",
            quote: AppText.coFounderQuote,
          ),
          SizedBox(height: height * 0.05),
          Row(
            children: [
              icon,
              SizedBox(width: width * 0.01),
              MyTextPoppines(
                text: AppText.moreContacts,
                fontSize: width * 0.011,
                color: AppColors.white,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          SizedBox(height: height * 0.03),
          MyTextPoppines(
            text: AppText.contactEmail,
            fontSize: width * 0.008,
            color: AppColors.white,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(height: height * 0.01),
          MyTextPoppines(
            text: AppText.bookACall,
            fontSize: width * 0.008,
            color: AppColors.orange,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }

  Widget buildProfile({
    required BuildContext context,
    required String image,
    required String name,
    required String post,
    required String quote,
  }) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width * 0.06,
          height: height * 0.11,
          color: AppColors.lightGreen,
          // img
        ),
        SizedBox(width: width * 0.01),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTextPoppines(
              text: name,
              fontSize: width * 0.01,
              color: AppColors.orange,
              fontWeight: FontWeight.w600,
            ),
            MyTextPoppines(
              text: post,
              fontSize: width * 0.008,
              color: AppColors.white.withOpacity(0.6),
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: height * 0.012),
            SizedBox(
              width: width * 0.2,
              child: MyTextPoppines(
                text: quote,
                fontSize: width * 0.007,
                color: AppColors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class ContactUsBanner extends StatelessWidget {
  const ContactUsBanner({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CustomPaint(
        painter: MyRectanglePainter(),
        size: Size(width, height * 0.35),
        child: Padding(
          padding: EdgeInsets.only(
            top: height * 0.06,
            left: width * 0.08,
            right: width * 0.08,
            bottom: height * 0.04,
          ),
          child: MyTextPoppines(
            text: "WE HAVE THE MEANS TO GET \nYOU THERE!",
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: width * 0.04,
            height: 1.2,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class ContactUsContainer extends StatelessWidget {
  const ContactUsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController messageController = TextEditingController();

    return Container(
      width: width * 0.34,
      height: height * 0.8,
      color: AppColors.black10,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
        vertical: height * 0.03,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.02),
          Row(
            children: [
              Transform.rotate(
                angle: 45 * 3.141592653589793 / 180,
                child: Container(
                  width: 8,
                  height: 8,
                  color: AppColors.orange,
                  margin: const EdgeInsets.only(top: 2),
                ),
              ),
              SizedBox(width: width * 0.01),
              MyTextPoppines(
                text: AppText.contactUs,
                fontSize: width * 0.011,
                color: AppColors.white,
                fontWeight: FontWeight.w600,
                height: 1,
              ),
            ],
          ),
          SizedBox(height: height * 0.04),
          SizedBox(height: height * 0.02),
          MyTextPoppines(
            text: AppText.simplyShareYourProject,
            fontSize: width * 0.0085,
            color: AppColors.white,
            fontWeight: FontWeight.w300,
            height: 1.6,
            maxLines: 10,
          ),
          SizedBox(height: height * 0.04),
          Row(
            children: [
              Expanded(
                child: MyTextFeild(
                  controller: nameController,
                  lableText: "Name",
                ),
              ),
              SizedBox(width: width * 0.01),
              Expanded(
                child: MyTextFeild(
                  controller: emailController,
                  lableText: "Email",
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.02),
          MyTextFeild(
            controller: phoneController,
            lableText: "Phone",
            isPhoneField: true,
          ),
          SizedBox(height: height * 0.02),
          MyTextFeild(
            controller: messageController,
            lableText: "Message",
            maxlines: 5,
          ),
          SizedBox(height: height * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    activeColor: AppColors.orange,
                    value: true,
                    onChanged: (val) {},
                  ),
                  SizedBox(width: width * 0.005),
                  MyTextPoppines(
                    text: "Get an NDA",
                    fontSize: width * 0.008,
                    color: AppColors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Iconsax.paperclip_2_copy,
                  size: width * 0.01,
                  color: AppColors.orange,
                ),
                label: MyTextPoppines(
                  text: "Attach Files",
                  fontSize: width * 0.009,
                  color: AppColors.orange,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(height: height * 0.01),
          Row(
            children: [
              Checkbox(
                activeColor: AppColors.orange,
                value: true,
                onChanged: (val) {},
              ),
              SizedBox(width: width * 0.008),
              SizedBox(
                width: width * 0.27,
                child: MyTextPoppines(
                  text:
                      "I consent to UINNO to store my personal information according to the Privacy Policy",
                  fontSize: width * 0.0065,
                  color: AppColors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.04),
          Align(
            alignment: Alignment.center,
            child: MyTextPoppines(
              text: "GET STARTED",
              fontSize: width * 0.008,
              color: AppColors.orange,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
