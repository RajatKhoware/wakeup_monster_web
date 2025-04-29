import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:wakeup_web/features/contactus%20form/controller/contact_us_controller.dart';
import 'package:wakeup_web/features/contactus%20form/widget/my_drop_down.dart';
import 'package:wakeup_web/utils/componets/buttons/stack_buttomn.dart';
import 'package:wakeup_web/utils/constant/app_sizer.dart';
import 'package:wakeup_web/utils/res/comman/app_colors.dart';
import 'package:wakeup_web/utils/res/comman/my_textfield.dart';
import 'package:wakeup_web/utils/res/validators/validators.dart';

import '../../../utils/res/comman/app_text.dart';
import '../../../utils/res/helper/my_custom_painter.dart';
import '../../../utils/res/my_text.dart';

class ContactUsSection extends StatelessWidget {
  const ContactUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;
    return Align(
      alignment: Alignment.center,
      child: Container(
        color: AppColors.blackBg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: isMobile
                    ? 120
                    : isTab
                        ? 160
                        : 200),
            // Text
            const MyTextPoppines(
              text: "YOU HAVE A VISION",
              color: AppColors.orange,
              fontWeight: FontWeight.w600,
              fontSize: AppSizer.font15,
              //   fontSize: width * 0.009,
            ),

            const ContactUsBanner(),
            const ContactUsContainer(),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //    // Contact us
            //     ContactUsContainer(),
            //     SizedBox(width: width * 0.012),
            //     // What's Next
            //     const ContactUsInfoContainer(),
            //   ],
            // ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}

class ContactUsBanner extends StatelessWidget {
  const ContactUsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;
    return SizedBox(
      child: CustomPaint(
        painter: MyRectanglePainter(),
        size: Size(width, height * 0.35),
        child: SizedBox(
          width: isWeb ? width * 0.8 : width,
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: height * 0.05,
                left: width * 0.1,
                right: width * 0.1,
                bottom: height * 0.03,
                // top: height * 0.06,
                // left: width * 0.08,
                // right: width * 0.08,
                // bottom: height * 0.04,
              ),
              child: MyTextPoppines(
                text: "WE HAVE THE MEANS TO GET \nYOU THERE!",
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: isMobile
                    ? width * 0.07
                    : isTab
                        ? width * 0.05
                        : AppSizer.font60,
                height: isMobile ? 1.2 : 1,
                // fontSize: width * 0.04,
                // height: 1.2,
                textAlign: TextAlign.center,
              ),
            ),
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

    final controller = Get.put(ContactUsController());
    bool isMobile = width < 600;
    bool isTab = width >= 600 && width < 1271;
    bool isWeb = width >= 1270;

    return Container(
      width: isWeb ? width * 0.7 : width * 0.95,
      color: AppColors.black10,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? width * 0.04 : width * 0.02,
        vertical: 30,
      ),
      child: Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyTextPoppines(
              text: AppText.onceYourEmailGetsToOurInbox,
              fontSize: AppSizer.font15,
              //  fontSize: width * 0.0085,
              color: AppColors.white,
              fontWeight: FontWeight.w300,
              height: 1.6,
              maxLines: 10,
            ),
            SizedBox(height: height * 0.04),

            if (isMobile) ...[
              MyTextFeild(
                controller: controller.nameController,
                lableText: "Full Name",
                validator: Validator.validateName,
              ),
              SizedBox(height: height * 0.02),
              MyTextFeild(
                controller: controller.emailController,
                lableText: "Email Address",
                validator: Validator.validateEmail,
              ),
              SizedBox(height: height * 0.02),
              MyTextFeild(
                controller: controller.phoneController,
                lableText: "Mobile Number",
                isPhoneField: true,
                validator: Validator.validateContactNo,
              ),
              SizedBox(height: height * 0.02),
              MyTextFeild(
                controller: controller.websiteController,
                lableText: "Website",
                //   validator: Validator.validateUrl,
              ),
              // Phone & Website
              SizedBox(height: height * 0.02),
              SizedBox(
                width: width,
                child: Obx(() => MyDropdownField(
                      labelText: "How did you get to know about us?",
                      items: controller.sourceOptions,
                      initialValue: controller.selectedSource.value,
                      onChanged: (value) {
                        controller.selectedSource.value = value;
                      },
                    )),
              ),
              SizedBox(height: height * 0.02),
              MyTextFeild(
                controller: controller.designationController,
                lableText: "Designation/Profile",
                validator: Validator.validateName,
              ),
              // Dropdown & Designation
              SizedBox(height: height * 0.02),
              // Address & Budget
              MyTextFeild(
                controller: controller.addressController,
                lableText: "City",
                validator: Validator.nullValidator,
              ),
              SizedBox(height: height * 0.02),

              MyTextFeild(
                controller: controller.budgetController,
                lableText: "Budget",
                validator: Validator.nullValidator,
              ),

              SizedBox(height: height * 0.02),
              // Message Field
              MyTextFeild(
                controller: controller.messageController,
                lableText: "Your Vision for Your Brand",
                maxlines: 5,
                validator: Validator.nullValidator,
              ),
              // SizedBox(height: height * 0.04),
            ] else

              // Full Name & Email
              ...[
              Row(
                children: [
                  Expanded(
                    child: MyTextFeild(
                      controller: controller.nameController,
                      lableText: "Full Name",
                      validator: Validator.validateName,
                    ),
                  ),
                  SizedBox(width: width * 0.01),
                  Expanded(
                    child: MyTextFeild(
                      controller: controller.emailController,
                      lableText: "Email Address",
                      validator: Validator.validateEmail,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              // Phone & Website
              Row(
                children: [
                  Expanded(
                    child: MyTextFeild(
                      controller: controller.phoneController,
                      lableText: "Mobile Number",
                      isPhoneField: true,
                      validator: Validator.validateContactNo,
                    ),
                  ),
                  SizedBox(width: width * 0.01),
                  Expanded(
                    child: MyTextFeild(
                      controller: controller.websiteController,
                      lableText: "Website",
                      //   validator: Validator.validateUrl,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              // Dropdown & Designation
              Row(
                children: [
                  Expanded(
                    child: Obx(() => MyDropdownField(
                          labelText: "How did you get to know about us?",
                          items: controller.sourceOptions,
                          initialValue: controller.selectedSource.value,
                          onChanged: (value) {
                            controller.selectedSource.value = value;
                          },
                        )),
                  ),
                  SizedBox(width: width * 0.01),
                  Expanded(
                    child: MyTextFeild(
                      controller: controller.designationController,
                      lableText: "Designation/Profile",
                      validator: Validator.validateName,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              // Address & Budget
              Row(
                children: [
                  Expanded(
                    child: MyTextFeild(
                      controller: controller.addressController,
                      lableText: "City",
                      validator: Validator.nullValidator,
                    ),
                  ),
                  SizedBox(width: width * 0.01),
                  Expanded(
                    child: MyTextFeild(
                      controller: controller.budgetController,
                      lableText: "Budget",
                      validator: Validator.nullValidator,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              // Message Field
              MyTextFeild(
                controller: controller.messageController,
                lableText: "Your Vision for Your Brand",
                maxlines: 5,
                validator: Validator.nullValidator,
              ),
              //   SizedBox(height: height * 0.04),
            ],

            // Error Message
            Obx(
              () => Column(
                children: [
                  Text(
                    controller.error.value,
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: height * 0.02),
                ],
              ),
            ),
            // Submit Button
            Obx(
              () {
                if (controller.isLoading.value) {
                  return const Center(
                    child: CircularProgressIndicator(color: AppColors.orange),
                  );
                } else {
                  return Align(
                    alignment: Alignment.center,
                    child: StackButton(
                        text: "SUBMIT",
                        onTap: () => controller.submitForm(context)),
                  );
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: GestureDetector(
                  //     onTap: () => controller.submitForm(context),
                  //     child: Container(
                  //       padding: EdgeInsets.symmetric(
                  //         horizontal: width * 0.02,
                  //         vertical: height * 0.01,
                  //       ),
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(5),
                  //         border: Border.all(
                  //           color: AppColors.orange,
                  //         ),
                  //       ),
                  //       child: MyTextPoppines(
                  //         text: "SUBMIT",
                  //         fontSize: width * 0.008,
                  //         color: AppColors.orange,
                  //         fontWeight: FontWeight.w600,
                  //       ),
                  //     ),
                  //   ),
                  // );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

// class ContactUsContainer extends StatelessWidget {
//   const ContactUsContainer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.sizeOf(context).height;
//     final width = MediaQuery.sizeOf(context).width;

//     TextEditingController nameController = TextEditingController();
//     TextEditingController emailController = TextEditingController();
//     TextEditingController phoneController = TextEditingController();
//     TextEditingController websiteController = TextEditingController();
//     TextEditingController designationController = TextEditingController();
//     TextEditingController addressController = TextEditingController();
//     TextEditingController budgetController = TextEditingController();
//     TextEditingController messageController = TextEditingController();

//     String selectedSource = "How did you get to know about us?";
//     List<String> sourceOptions = [
//       "How did you get to know about us?",
//       "Google",
//       "Social Media",
//       "Referral"
//     ];

//     return Container(
//       width: width * 0.7,
//       // height: height * 0.9,
//       color: AppColors.black10,
//       padding: EdgeInsets.symmetric(
//         horizontal: width * 0.02,
//         vertical: height * 0.03,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // SizedBox(height: height * 0.02),
//           // MyTextPoppines(
//           //   text: AppText.contactUs,
//           //   fontSize: width * 0.011,
//           //   color: AppColors.white,
//           //   fontWeight: FontWeight.w600,
//           // ),
//           SizedBox(height: height * 0.02),
//           MyTextPoppines(
//             text: AppText.onceYourEmailGetsToOurInbox,
//             fontSize: width * 0.0085,
//             color: AppColors.white,
//             fontWeight: FontWeight.w300,
//             height: 1.6,
//             maxLines: 10,
//           ),
//           SizedBox(height: height * 0.04),
//           Row(
//             children: [
//               Expanded(
//                 child: MyTextFeild(
//                   controller: nameController,
//                   lableText: "Full Name",
//                 ),
//               ),
//               SizedBox(width: width * 0.01),
//               Expanded(
//                 child: MyTextFeild(
//                   controller: emailController,
//                   lableText: "Email Address",
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: height * 0.02),
//           Row(
//             children: [
//               Expanded(
//                 child: MyTextFeild(
//                   controller: phoneController,
//                   lableText: "Mobile Number",
//                   isPhoneField: true,
//                 ),
//               ),
//               SizedBox(width: width * 0.01),
//               Expanded(
//                 child: MyTextFeild(
//                   controller: websiteController,
//                   lableText: "Website",
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: height * 0.02),
//           Row(
//             children: [
//               Expanded(
//                 child: MyDropdownField(
//                   labelText: "How did you get to know about us?",
//                   items: const [
//                     "How did you get to know about us?",
//                     "Google",
//                     "Social Media",
//                     "Referral"
//                   ],
//                   initialValue: "How did you get to know about us?",
//                   onChanged: (value) {
//                     print("Selected: $value");
//                   },
//                 ),
//               ),
//               SizedBox(width: width * 0.01),
//               Expanded(
//                 child: MyTextFeild(
//                   controller: designationController,
//                   lableText: "Designation/Profile",
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: height * 0.02),
//           Row(
//             children: [
//               Expanded(
//                 child: MyTextFeild(
//                   controller: addressController,
//                   lableText: "Address",
//                 ),
//               ),
//               SizedBox(width: width * 0.01),
//               Expanded(
//                 child: MyTextFeild(
//                   controller: budgetController,
//                   lableText: "Budget",
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: height * 0.02),
//           MyTextFeild(
//             controller: messageController,
//             lableText: "Your Vision for Your Brand",
//             maxlines: 5,
//           ),
//           SizedBox(height: height * 0.04),
//           Align(
//             alignment: Alignment.center,
//             child: MyTextPoppines(
//               text: "SUBMIT",
//               fontSize: width * 0.008,
//               color: AppColors.orange,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
