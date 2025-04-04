import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';
import 'package:wakeup_web/utils/res/snackbar/app_snackbar.dart';
import 'package:http/http.dart' as http;

class ContactUsController extends GetxController {
  final formKey = GlobalKey<FormState>();

  // Text Editing Controllers
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final websiteController = TextEditingController();
  final designationController = TextEditingController();
  final addressController = TextEditingController();
  final budgetController = TextEditingController();
  final messageController = TextEditingController();
  RxBool isLoading = false.obs;
  RxString error = "".obs;

  // Dropdown
  final RxString selectedSource = "How did you get to know about us?".obs;
  final List<String> sourceOptions = [
    "How did you get to know about us?",
    "Google",
    "Social Media",
    "Referral"
  ];

  // -- Helper function
  void clearState() {
    nameController.clear();
    emailController.clear();
    phoneController.clear();
    websiteController.clear();
    designationController.clear();
    addressController.clear();
    budgetController.clear();
    messageController.clear();
    selectedSource.value = "How did you get to know about us?";
    error.value = "";
  }

  // Form Submission Logic
  Future<void> submitForm(BuildContext context) async {
    try {
      error.value = "";
      if (!formKey.currentState!.validate() ||
          selectedSource.value == "How did you get to know about us?") {
        if (selectedSource.value == "How did you get to know about us?") {
          error.value =
              "Please select a source from where you got to know about us";
        }
        return;
      }

      isLoading.value = true;

      final body = {
        "fullName": nameController.text,
        "emailAddress": emailController.text,
        "mobileNumber": phoneController.text,
        "website": websiteController.text,
        "knowAboutUs": selectedSource.value,
        "designation": designationController.text,
        "address": addressController.text,
        "budget": budgetController.text,
        "vision": messageController.text,
        "isConnected": "No",
      };

      // calling the api function

      const String apiUrl =
          "https://script.google.com/macros/s/AKfycbxVymyX2LiIdizltnKnDI7VtRQAt7R10oL0W5D5G2OOF1Gzw4dUf9wZvtMer6CEI5U0YQ/exec";

      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {"Content-Type": "text/plain;charset=utf-8"},
        body: jsonEncode(body),
      );

      if (response.statusCode == 200 || response.statusCode == 302) {
        // -- replace with dialog
        toastification.show(
          context: context,
          type: ToastificationType.success,
          style: ToastificationStyle.flatColored,
          autoCloseDuration: const Duration(seconds: 5),
          title: const Text('Congratulations'),
          description:
              const Text('Your Query has been submitted successfully.'),
          icon: const Icon(Icons.check),
          showIcon: true,
          primaryColor: Colors.green,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          borderRadius: BorderRadius.circular(12),
          showProgressBar: true,
          pauseOnHover: true,
          dragToClose: true,
          applyBlurEffect: true,
        );
        clearState();
      } else {
        error.value = "Error: ${response.body}";
      }
    } catch (e, s) {
      print("$e\n$s");
      error.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    websiteController.dispose();
    designationController.dispose();
    addressController.dispose();
    budgetController.dispose();
    messageController.dispose();
    super.onClose();
  }
}
