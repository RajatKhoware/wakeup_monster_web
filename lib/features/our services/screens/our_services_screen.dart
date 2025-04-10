import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wakeup_web/my%20web/controller/my_web_controller.dart';
import 'package:wakeup_web/utils/componets/buttons/stack_buttomn.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:get/get.dart';

import '../../../utils/res/my_text.dart';
import '../../we help/screen/we_help_section.dart';
import '../controllers/hover_controller.dart';

// class ServiceModel {
//   final String title;
//   final List<String> subPoints;
//   final Function onTap;

//   ServiceModel(
//       {required this.title, required this.subPoints, required this.onTap});
// }

// class OurServices extends StatelessWidget {
//   const OurServices({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.sizeOf(context).height;
//     final width = MediaQuery.sizeOf(context).width;

//     final services = [
//       ServiceModel(
//         title: "Design & Creative.",
//         subPoints: [
//           "UI/UX Design",
//           "Web Design",
//           "Print Design",
//           "Digital Design",
//         ],
//         onTap: () {},
//       ),
//       ServiceModel(
//         title: "Branding.",
//         subPoints: [
//           "Logo",
//           "Brand Guide",
//           "Memorable Brand Design Strategy",
//           "Social Identity",
//         ],
//         onTap: () {},
//       ),
//       ServiceModel(
//         title: "Web Development.",
//         subPoints: [
//           "Frontend Development",
//           "Backend Development",
//           "API Integration",
//           "Responsive Design",
//         ],
//         onTap: () {},
//       ),
//       ServiceModel(
//         title: "App Development.",
//         subPoints: [
//           "iOS App Development",
//           "Android App Development",
//           "Cross-Platform Solutions",
//           "App Store Deployment",
//         ],
//         onTap: () {},
//       ),
//       ServiceModel(
//         title: "Growth Marketing.",
//         subPoints: [
//           "Content Marketing",
//           "Email Marketing",
//           "Search Engine Optimization",
//           "Pay-Per-Click",
//         ],
//         onTap: () {},
//       ),
//       ServiceModel(
//         title: "Social Marketing.",
//         subPoints: [
//           "Social Media Strategy",
//           "Social Media Advertising",
//           "Social Media Management",
//           "Influencer Marketing",
//         ],
//         onTap: () {},
//       ),
//       ServiceModel(
//         title: "Performance Marketing.",
//         subPoints: [
//           "Conversion Rate Optimization",
//           "Affiliate Marketing",
//           "Search Engine Marketing",
//           "Retargeting",
//         ],
//         onTap: () {},
//       ),
//       ServiceModel(
//         title: "Photography & Videography.",
//         subPoints: [
//           "Product Photography",
//           "Portrait Photography",
//           "Wedding Photography",
//           "Event Photography",
//         ],
//         onTap: () {},
//       ),
//     ];

//     final hoverControllers =
//         List.generate(services.length, (index) => OurServicesController()).obs;

//     return Container(
//       width: width,
//       padding: EdgeInsets.symmetric(vertical: height * 0.06),
//       color: AppColors.white,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SizedBox(height: height * 0.03),
//           SizedBox(
//             width: width * 0.4,
//             child: MyTextPoppines(
//               text: "OUR PRODUCT DEVELOPMENT SERVICES",
//               fontSize: width * 0.03,
//               color: AppColors.lightGreen,
//               letterSpacing: -2,
//               fontWeight: FontWeight.bold,
//               maxLines: 3,
//               height: 1.1,
//               textAlign: TextAlign.center,
//             ),
//           ),
//           SizedBox(height: height * 0.014),
//           SizedBox(
//             width: width * 0.6,
//             child: MyTextPoppines(
//               text:
//                   "We can provide just one service or make a combination of the best-fitting expertise required for your project.",
//               fontSize: width * 0.008,
//               color: AppColors.blackBg.withOpacity(0.6),
//               fontWeight: FontWeight.w500,
//               textAlign: TextAlign.center,
//               maxLines: 3,
//               height: 1.4,
//             ),
//           ),
//           SizedBox(height: height * 0.1),
//           SizedBox(
//             height: height * 1.4,
//             child: ListView.builder(
//               itemCount: services.length,
//               shrinkWrap: true,
//               padding: EdgeInsets.zero,
//               itemBuilder: (context, index) {
//                 final service = services[index];
//                 final cardHoverController = hoverControllers[index];
//                 return Column(
//                   children: [
//                     MouseRegion(
//                       onEnter: (_) => cardHoverController.onHover(true),
//                       onExit: (_) => cardHoverController.onHover(false),
//                       child: Obx(() => Container(
//                             padding: EdgeInsets.symmetric(
//                               horizontal: width * 0.01,
//                               vertical: height * 0.04,
//                             ),
//                             color: cardHoverController.isHovered.value
//                                 ? Colors.grey.shade100.withOpacity(0.4)
//                                 : Colors.white,
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 SizedBox(
//                                     width: width * 0.32,
//                                     child: Text(
//                                       service.title,
//                                       style: cardHoverController.isHovered.value
//                                           ? GoogleFonts.poppins(
//                                               fontSize: 32,
//                                               fontWeight: FontWeight.bold,
//                                               foreground: Paint()
//                                                 ..style = PaintingStyle.stroke
//                                                 ..strokeWidth = 1.2
//                                                 ..color = AppColors.orange,
//                                             )
//                                           : GoogleFonts.poppins(
//                                               fontSize: width * 0.016,
//                                               color: AppColors.blackBg,
//                                               fontWeight: FontWeight.bold,
//                                             ),
//                                     )
//                                     //     MyTextPoppines(
//                                     //   text: service.title,
//                                     //   fontSize: width * 0.016,
//                                     //   color: AppColors.blackBg,
//                                     //   fontWeight: FontWeight.bold,
//                                     // ),
//                                     ),
//                                 Expanded(
//                                   child: Row(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       SizedBox(
//                                         width: width * 0.6,
//                                         child: Wrap(
//                                           alignment: WrapAlignment.start,
//                                           spacing: width * 0.015,
//                                           runSpacing: height * 0.015,
//                                           children: service.subPoints
//                                               .map((subPoint) => buildText(
//                                                   context,
//                                                   subPoint,
//                                                   cardHoverController
//                                                       .isHovered.value))
//                                               .toList(),
//                                         ),
//                                       ),
//                                       GestureDetector(
//                                         onTap: () => service.onTap,
//                                         child: Obx(() => Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.center,
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.center,
//                                               children: [
//                                                 SizedBox(height: height * 0.02),
//                                                 Container(
//                                                   width: width * 0.02,
//                                                   height: width * 0.02,
//                                                   decoration: BoxDecoration(
//                                                     color: cardHoverController
//                                                             .isHovered.value
//                                                         ? AppColors.orange
//                                                         : Colors.grey.shade300,
//                                                     shape: BoxShape.circle,
//                                                   ),
//                                                   child: Icon(
//                                                     Icons
//                                                         .arrow_forward_outlined,
//                                                     color: AppColors.white,
//                                                     size: width * 0.01,
//                                                   ),
//                                                 ),
//                                                 SizedBox(
//                                                     height: height * 0.006),
//                                                 MyTextPoppines(
//                                                   text: "View More",
//                                                   fontSize: width * 0.0065,
//                                                   color: cardHoverController
//                                                           .isHovered.value
//                                                       ? AppColors.orange
//                                                       : Colors.transparent,
//                                                   fontWeight: FontWeight.w500,
//                                                 ),
//                                               ],
//                                             )),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )),
//                     ),
//                     Visibility(
//                       visible: index != services.length - 1,
//                       child: Divider(
//                         thickness: width * 0.0006,
//                         height: 0,
//                         color: AppColors.blackBg.withOpacity(0.2),
//                       ),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//           SizedBox(height: height * 0.2),
//           const WeHelpSection(),
//         ],
//       ),
//     );
//   }

//   Widget buildText(BuildContext context, String text, bool isHovered) {
//     final height = MediaQuery.sizeOf(context).height;
//     final width = MediaQuery.sizeOf(context).width;
//     return SizedBox(
//       width: width * 0.22,
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Container(
//             width: width * 0.0018,
//             height: height * 0.02,
//             color: isHovered ? AppColors.orange : Colors.orangeAccent,
//           ),
//           SizedBox(width: width * 0.004),
//           MyTextPoppines(
//             text: text,
//             fontSize: width * 0.0085,
//             fontWeight: FontWeight.w600,
//             color: AppColors.blackBg.withOpacity(0.5),
//           ),
//         ],
//       ),
//     );
//   }
// }

class ServiceModel {
  final String title;
  final List<String> subPoints;
  final Function onTap;

  ServiceModel(
      {required this.title, required this.subPoints, required this.onTap});
}

class OurServices extends StatelessWidget {
  const OurServices({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    // final webController = Get.find<MyWebController>();

    final services = [
      ServiceModel(
        title: "App Development.",
        subPoints: [
          "iOS App Development",
          "Android App Development",
          "Cross-Platform Solutions",
          "App Store Deployment",
        ],
        onTap: () {},
      ),
      ServiceModel(
        title: "Web Development.",
        subPoints: [
          "Frontend Development",
          "Backend Development",
          "Responsive Design",
          "CMS Development (WordPress, Headless CMS)",
        ],
        onTap: () {},
      ),
      ServiceModel(
        title: "AI & Automation.",
        subPoints: [
          "Chatbot & Virtual Assistants",
          "AI-powered Recommendation Systems",
          "Data Analysis & Prediction",
          "Custom AI Model Integration",
        ],
        onTap: () {},
      ),
      ServiceModel(
        title: "UI/UX Design.",
        subPoints: [
          "Wireframing & Prototyping",
          "User Research & Journey Mapping",
          "Mobile App UI Design",
          "Web UI Design",
        ],
        onTap: () {},
      ),
      ServiceModel(
        title: "Branding.",
        subPoints: [
          "Logo Design",
          "Brand Identity & Strategy",
          "Brand Guidelines",
          "Social Identity Design",
        ],
        onTap: () {},
      ),
      ServiceModel(
        title: "Digital Marketing.",
        subPoints: [
          "SEO (Search Engine Optimization)",
          "Performance Marketing (Google & Meta Ads)",
          "Email Marketing",
          "Social Media Advertising",
        ],
        onTap: () {},
      ),
      ServiceModel(
        title: "Growth Marketing.",
        subPoints: [
          "Content Marketing",
          "Email Marketing",
          "Search Engine Optimization",
          "Pay-Per-Click",
        ],
        onTap: () {},
      ),
      ServiceModel(
        title: "Social Marketing.",
        subPoints: [
          "Social Media Strategy",
          "Social Media Advertising",
          "Social Media Management",
          "Influencer Marketing",
        ],
        onTap: () {},
      ),
    ];

    final hoverControllers =
        List.generate(services.length, (index) => OurServicesController()).obs;
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(vertical: height * 0.06),
      color: AppColors.blackBg,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.07),
          SizedBox(
            width: width * 0.4,
            child: MyTextPoppines(
              text: "OUR PRODUCT DEVELOPMENT SERVICES",
              fontSize: width * 0.03,
              color: AppColors.lightGreen,
              letterSpacing: -2,
              fontWeight: FontWeight.bold,
              maxLines: 3,
              height: 1.1,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: height * 0.014),
          SizedBox(
            width: width * 0.6,
            child: MyTextPoppines(
              text:
                  "We can provide just one service or make a combination of the best-fitting expertise required for your project.",
              fontSize: width * 0.008,
              color: AppColors.white.withOpacity(0.6),
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
              maxLines: 3,
              height: 1.4,
            ),
          ),
          SizedBox(height: height * 0.08),
          SizedBox(
            //      height: height * 1.2,
            child: ListView.builder(
              itemCount: services.length,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                final service = services[index];
                final cardHoverController = hoverControllers[index];
                return Column(
                  children: [
                    MouseRegion(
                      onEnter: (_) => cardHoverController.onHover(true),
                      onExit: (_) => cardHoverController.onHover(false),
                      child: Obx(() => Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.01,
                              vertical: height * 0.04,
                            ),
                            color: cardHoverController.isHovered.value
                                ? AppColors.black10
                                : AppColors.blackBg,
                            // ? Colors.grey.shade100.withOpacity(0.4)
                            // : Colors.white,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                    width: width * 0.32,
                                    child: Text(
                                      service.title,
                                      style: cardHoverController.isHovered.value
                                          ? GoogleFonts.syne(
                                              fontSize: 32,
                                              fontWeight: FontWeight.bold,
                                              foreground: Paint()
                                                ..style = PaintingStyle.stroke
                                                ..strokeWidth = 1.2
                                                ..color = AppColors.orange,
                                            )
                                          : GoogleFonts.syne(
                                              fontSize: width * 0.016,
                                              color: AppColors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                    )
                                    //     MyTextPoppines(
                                    //   text: service.title,
                                    //   fontSize: width * 0.016,
                                    //   color: AppColors.blackBg,
                                    //   fontWeight: FontWeight.bold,
                                    // ),
                                    ),
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: width * 0.6,
                                        child: Wrap(
                                          alignment: WrapAlignment.start,
                                          spacing: width * 0.015,
                                          runSpacing: height * 0.015,
                                          children: service.subPoints
                                              .map((subPoint) => buildText(
                                                  context,
                                                  subPoint,
                                                  cardHoverController
                                                      .isHovered.value))
                                              .toList(),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () => service.onTap,
                                        child: Obx(() => Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(height: height * 0.02),
                                                !cardHoverController
                                                        .isHovered.value
                                                    ? Container(
                                                        width: width * 0.02,
                                                        height: width * 0.02,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white
                                                              .withOpacity(0.7),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Icon(
                                                          Icons
                                                              .arrow_forward_outlined,
                                                          color:
                                                              cardHoverController
                                                                      .isHovered
                                                                      .value
                                                                  ? AppColors
                                                                      .orange
                                                                  : AppColors
                                                                      .blackBg,
                                                          size: width * 0.01,
                                                        ),
                                                      )
                                                    : MyTextSyne(
                                                        text: "View More",
                                                        fontSize:
                                                            width * 0.0065,
                                                        color: AppColors.orange,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                // SizedBox(
                                                //     height: height * 0.006),
                                                // MyTextPoppines(
                                                //   text: "View More",
                                                //   fontSize: width * 0.0065,
                                                //   color: cardHoverController
                                                //           .isHovered.value
                                                //       ? AppColors.orange
                                                //       : Colors.white
                                                //           .withOpacity(0.6),
                                                //   fontWeight: FontWeight.w500,
                                                // ),
                                              ],
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Visibility(
                      visible: index != services.length - 1,
                      child: Divider(
                        thickness: width * 0.001,
                        height: 0,
                        color: AppColors.white.withOpacity(0.2),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: height * 0.04),
          StackButton(
            text: "CONTACT US",
            onTap: () => MyWebController.instance.scrollToBottom(),
          ),
          SizedBox(height: height * 0.06),
          const WeHelpSection(),
        ],
      ),
    );
  }

  Widget buildText(BuildContext context, String text, bool isHovered) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: width * 0.22,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: width * 0.0018,
            height: height * 0.02,
            color: isHovered ? AppColors.orange : AppColors.yellow,
          ),
          SizedBox(width: width * 0.004),
          MyTextSyne(
            text: text,
            fontSize: width * 0.0085,
            fontWeight: FontWeight.w600,
            color: AppColors.white.withOpacity(0.8),
            // color: AppColors.blackBg.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
