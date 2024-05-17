import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/domain/user/user.dart';
import 'package:health_plus/gen/assets.gen.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:health_plus/router/user_input_form/input_page.dart';
import 'package:health_plus/router/user_input_form/user_input_cubit.dart';
import 'package:health_plus/ui/components/primary_button.dart';

import 'input_gender_cubit.dart';

class InputGender extends StatelessWidget implements InputPage {
  const InputGender({super.key, required this.onNext});

  @override
  final void Function({BuildContext? context}) onNext;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => InputGenderCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<InputGenderCubit, Gender?>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),
                Text(
                  S().set_your_gender,
                  style: TextStyle(
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    color: const Color(0xFF2B2B2B),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => context
                          .read<InputGenderCubit>()
                          .setGender(Gender.female),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: const Color(0xFF0066FF)
                              .withOpacity(state == Gender.female ? 1 : 0),
                          border: Border.all(
                            color: const Color(0xFF79747E),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Assets.svg.female.svg(
                              colorFilter: ColorFilter.mode(
                                state == Gender.female
                                    ? Colors.white
                                    : const Color(0xFF2B2B2B),
                                BlendMode.srcIn,
                              ),
                            ),
                            Text(
                              S().female,
                              style: TextStyle(
                                fontFamily: GoogleFonts.roboto().fontFamily,
                                color: state == Gender.female
                                    ? Colors.white
                                    : const Color(0xFF2B2B2B),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => context
                          .read<InputGenderCubit>()
                          .setGender(Gender.male),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: const Color(0xFF0066FF)
                              .withOpacity(state == Gender.male ? 1 : 0),
                          border: Border.all(
                            color: const Color(0xFF79747E),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              S().male,
                              style: TextStyle(
                                fontFamily: GoogleFonts.roboto().fontFamily,
                                color: state == Gender.male
                                    ? Colors.white
                                    : const Color(0xFF2B2B2B),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Assets.svg.male.svg(
                              colorFilter: ColorFilter.mode(
                                state == Gender.male
                                    ? Colors.white
                                    : const Color(0xFF2B2B2B),
                                BlendMode.srcIn,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                Center(
                  child: PrimaryButton(
                    isDisabled: state == null,
                    text: S().next,
                    onPressed: () {
                      if (context.read<InputGenderCubit>().state != null) {
                        context.read<UserInputCubit>().gender = state;
                        onNext();
                      }
                    },
                  ),
                ),
                const SizedBox(height: 28),
              ],
            );
          },
        ),
      ),
    );
  }
}
