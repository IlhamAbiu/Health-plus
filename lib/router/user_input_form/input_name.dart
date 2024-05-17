import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:health_plus/router/user_input_form/input_page.dart';
import 'package:health_plus/ui/components/primary_button.dart';

import 'user_input_cubit.dart';

class InputName extends StatelessWidget implements InputPage {
  InputName({
    super.key,
    required this.onNext,
  });

  @override
  final void Function({BuildContext? context}) onNext;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final inputController = TextEditingController(
      text: context.read<UserInputCubit>().name,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            Text(
              S().what_is_your_name,
              style: TextStyle(
                fontFamily: GoogleFonts.roboto().fontFamily,
                color: const Color(0xFF2B2B2B),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: inputController,
              decoration: InputDecoration(
                fillColor: const Color(0xFFBBD5FF).withOpacity(0.5),
                filled: true,
                hintText: S().name,
                hintStyle: TextStyle(
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  color: const Color(0xFF2B2B2B).withOpacity(0.5),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF0066FF),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                focusedErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF0066FF),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return S().required_field;
                }
                return null;
              },
            ),
            const Expanded(child: SizedBox()),
            Center(
              child: PrimaryButton(
                text: S().next,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context.read<UserInputCubit>().name = inputController.text;
                    onNext();
                  }
                },
              ),
            ),
            const SizedBox(height: 28),
          ],
        ),
      ),
    );
  }
}
