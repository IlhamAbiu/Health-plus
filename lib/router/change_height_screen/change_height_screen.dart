import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/domain/user/user_repository.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:health_plus/router/router.dart';
import 'package:health_plus/router/user_input_form/height_picker.dart';
import 'package:health_plus/ui/components/primary_button.dart';

class ChangeHeightScreen extends StatelessWidget {
  const ChangeHeightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int height = UserRepository().user?.height ?? 170;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          S().change_height,
          style: TextStyle(
            fontFamily: GoogleFonts.roboto().fontFamily,
            color: const Color(0xFF2B2B2B),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            router.pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xFF2B2B2B),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            children: [
              Text(
                S().height_and_weight_description,
                style: TextStyle(
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  color: const Color(0xFF2B2B2B),
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: HeightPicker(
                  initialHeight: height,
                  onHeightChanged: (h) {
                    height = h;
                  },
                ),
              ),
              Center(
                child: PrimaryButton(
                  text: S().apply,
                  onPressed: () {
                    UserRepository().user?.height = height;
                    UserRepository().saveUser(UserRepository().user!);
                    router.pop();
                  },
                ),
              ),
              const SizedBox(height: 28),
            ],
          ),
        ),
      ),
    );
  }
}
