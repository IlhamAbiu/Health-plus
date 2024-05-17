import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:health_plus/router/user_input_form/user_input_cubit.dart';
import 'package:health_plus/ui/components/primary_button.dart';

import 'height_picker.dart';
import 'input_page.dart';
import 'weight_picker.dart';

class InputHeightAndWeight extends StatelessWidget implements InputPage {
  const InputHeightAndWeight({super.key, required this.onNext});
  @override
  final void Function({BuildContext? context}) onNext;

  @override
  Widget build(BuildContext context) {
    int weight = 60;
    int height = 170;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Text(
            S().height_and_weight,
            style: TextStyle(
              fontFamily: GoogleFonts.roboto().fontFamily,
              color: const Color(0xFF2B2B2B),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HeightPicker(
                  initialHeight: height,
                  onHeightChanged: (h) {
                    height = h;
                  },
                ),
                WeightPicker(
                  initialWeight: weight,
                  onWeightChanged: (w) {
                    weight = w;
                  },
                ),
              ],
            ),
          ),
          Center(
            child: PrimaryButton(
              text: S().done,
              onPressed: () {
                context.read<UserInputCubit>().weight = weight.toDouble();
                context.read<UserInputCubit>().height = height;
                onNext(context: context);
              },
            ),
          ),
          const SizedBox(height: 28),
        ],
      ),
    );
  }
}
