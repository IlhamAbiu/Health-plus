import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/health.dart';
import 'package:health_plus/generated/l10n.dart';

import '../../domain/services/health_service/health_service.dart';

class Weight extends StatefulWidget {
  const Weight({super.key});

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
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
                  S().body_weight,
                  style: GoogleFonts.notoSans(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              FutureBuilder(
                initialData: null,
                future: _weight(),
                builder: (context, snapshot) {
                  if (snapshot.data != null) {
                    return Text(
                      S().body_weight_value(
                        snapshot.data!.toStringAsFixed(1),
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
                      S().body_weight_description,
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

  Future<num?> _weight() async {
    final list = await HealthService().fetchDataAfter30days(
      types: [HealthDataType.WEIGHT],
    );

    if (list.isEmpty) {
      return null;
    }

    return (list.last.value as NumericHealthValue).numericValue;
  }
}
