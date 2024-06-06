import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/health.dart';

import 'package:health_plus/domain/providers/health_provider/health_cubit.dart';
import 'package:health_plus/domain/services/health_service/health_service.dart';
import 'package:health_plus/gen/assets.gen.dart';
import 'package:health_plus/generated/l10n.dart';

class BloodOxygen extends StatelessWidget {
  const BloodOxygen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 9,
          horizontal: 20,
        ),
        constraints: const BoxConstraints(maxWidth: 330),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow,
              offset: const Offset(0, 0),
              blurRadius: 40,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<HealthCubit, HealthState>(
              builder: (context, _) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Assets.svg.bloodOxygen.svg(),
                    const SizedBox(width: 18.3),
                    FutureBuilder(
                      future: _fetchDataToDay(),
                      builder: (context, snapshot) => Text(
                        _text(snapshot.data),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 10),
            Text(
              S().blood_oxygen_description,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: GoogleFonts.roboto().fontFamily,
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF88888A),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _text(NumericHealthValue? value) {
    if (value == null) {
      return S().no_data;
    } else {
      return S().blood_oxygen_value(value.numericValue.toInt());
    }
  }

  Future<NumericHealthValue?> _fetchDataToDay() async {
    final list = await HealthService()
        .fetchDataAfterToDay(types: [HealthDataType.BLOOD_OXYGEN]);
    return list.isEmpty ? null : list.last.value as NumericHealthValue;
  }
}
