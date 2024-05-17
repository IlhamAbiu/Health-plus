import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:health_plus/router/user_input_form/user_input_cubit.dart';
import 'package:health_plus/ui/components/primary_button.dart';

import 'input_page.dart';

class InputBirthday extends StatelessWidget implements InputPage {
  const InputBirthday({super.key, required this.onNext});

  @override
  final void Function({BuildContext? context}) onNext;

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Text(
            S().set_your_birthday,
            style: TextStyle(
              fontFamily: GoogleFonts.roboto().fontFamily,
              color: const Color(0xFF2B2B2B),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Center(
              child: CupertinoTheme(
                data: CupertinoThemeData(
                  primaryColor: const Color(0xFF0066FF),
                  barBackgroundColor: const Color(0xFFE6F0FB),
                  textTheme: CupertinoTextThemeData(
                    dateTimePickerTextStyle: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      color: const Color(0xFF2B2B2B),
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: DateTime.now(),
                  minimumDate: DateTime(1900, 1, 1),
                  maximumDate: DateTime.now(),
                  onDateTimeChanged: (date) {
                    dateTime = date;
                  },
                ),
              ),
            ),
          ),
          Center(
            child: PrimaryButton(
              text: S().next,
              onPressed: () {
                context.read<UserInputCubit>().birthday = dateTime;
                onNext();
              },
            ),
          ),
          const SizedBox(height: 28),
        ],
      ),
    );
  }
}
