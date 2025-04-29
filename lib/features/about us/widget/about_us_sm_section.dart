import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wakeup_web/utils/constant/app_sizer.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/comman/app_text.dart';
import 'package:wakeup_web/utils/res/my_text.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsSocialMediaSection extends StatefulWidget {
  const AboutUsSocialMediaSection({super.key});

  @override
  State<AboutUsSocialMediaSection> createState() =>
      _AboutUsSocialMediaSectionState();
}

class _AboutUsSocialMediaSectionState extends State<AboutUsSocialMediaSection> {
  // Keeping track of hovered state for each social icon.
  List<bool> isHovered = [false, false, false, false, false, false];

  // A helper method that launches a URL.
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    // Attempt to open the URL externally (i.e. via browser or app)
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  // URLs for your social media pages (adjust these to your actual social profiles)
  final Map<IconData, String> socialUrls = {
    FontAwesomeIcons.linkedin:
        'https://www.linkedin.com/company/wakeup-monsters/posts/?feedView=all',
    FontAwesomeIcons.facebook: 'https://www.facebook.com/yourprofile',
    FontAwesomeIcons.instagram:
        'https://www.instagram.com/wakeupmonster.agency/',
    FontAwesomeIcons.youtube: 'https://www.youtube.com/yourchannel',
    FontAwesomeIcons.behance: 'https://www.behance.net/yourprofile',
    FontAwesomeIcons.dribbble: 'https://www.dribbble.com/yourprofile',
  };

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MyTextPoppines(
          text: AppText.socialMedia,
          fontSize: AppSizer.font16,
          // fontSize: width * 0.009,
          fontWeight: FontWeight.w600,
          color: AppColors.white,
        ),
        SizedBox(height: isMobile ? 12 : height * 0.005),
        Row(
          children: [
            buildIcon(
              context: context,
              icon: FontAwesomeIcons.linkedin,
              index: 0,
            ),
            buildIcon(
              context: context,
              icon: FontAwesomeIcons.facebook,
              index: 1,
            ),
            buildIcon(
              context: context,
              icon: FontAwesomeIcons.instagram,
              index: 2,
            ),
          ],
        ),
        // Row(
        //   children: [
        //     buildIcon(
        //       context: context,
        //       icon: FontAwesomeIcons.youtube,
        //       index: 3,
        //     ),
        //     buildIcon(
        //       context: context,
        //       icon: FontAwesomeIcons.behance,
        //       index: 4,
        //     ),
        //     buildIcon(
        //       context: context,
        //       icon: FontAwesomeIcons.dribbble,
        //       index: 5,
        //     ),
        //   ],
        // ),
      ],
    );
  }

  Widget buildIcon({
    required BuildContext context,
    required IconData icon,
    required int index,
  }) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;

    return InkWell(
      onTap: () {
        // Check if the social URL exists for the provided icon.
        if (socialUrls.containsKey(icon)) {
          _launchUrl(socialUrls[icon]!);
        }
      },
      onHover: (value) {
        setState(() {
          isHovered[index] = value;
        });
      },
      child: Container(
        color: !isHovered[index] ? const Color(0xFF3C3B42) : AppColors.orange,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(4),
        child: Icon(
          icon,
          color: AppColors.white,
          size: 24,
          //   size: width * 0.012,
        ),
      ),
    );
  }
}
