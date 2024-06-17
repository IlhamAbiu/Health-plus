import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/health.dart';
import 'package:health_plus/generated/l10n.dart';

import '../../domain/services/health_service/health_service.dart';

class BasalMetabolism extends StatefulWidget {
  const BasalMetabolism({super.key});

  @override
  State<BasalMetabolism> createState() => _BasalMetabolismState();
}

class _BasalMetabolismState extends State<BasalMetabolism> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 18,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor,
            offset: const Offset(0, 15),
            blurRadius: 40,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  S().basal_metabolic,
                  style: GoogleFonts.notoSans(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              FutureBuilder(
                initialData: null,
                future: _basalMetabolism(),
                builder: (context, snapshot) {
                  if (snapshot.data != null) {
                    return Text(
                      S().basal_metabolic_value(
                        snapshot.data!.round().toString(),
                      ),
                      style: GoogleFonts.notoSans(
                        color: const Color(0xFFB1B3C4),
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
              isExpanded
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          isExpanded = false;
                        });
                      },
                      child: Icon(
                        Icons.keyboard_arrow_up_rounded,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          isExpanded = true;
                        });
                      },
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
            ],
          ),
          isExpanded
              ? Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      S().basal_metabolic_description,
                      style: GoogleFonts.notoSans(
                        color: const Color(0xFFB1B3C4),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  Future<num?> _basalMetabolism() async {
    final basalEnergyBurned = await HealthService().fetchDataAfter30days(
      types: [HealthDataType.BASAL_ENERGY_BURNED],
    );

    if (basalEnergyBurned.isNotEmpty) {
      return (basalEnergyBurned.last.value as NumericHealthValue).numericValue;
    } else {
      return null;
    }
  }
}
