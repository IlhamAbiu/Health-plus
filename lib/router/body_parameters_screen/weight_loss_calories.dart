import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/features/health_metrics/health_metrics.dart';
import 'package:health_plus/generated/l10n.dart';

class WeightLossCalories extends StatefulWidget {
  const WeightLossCalories({super.key});

  @override
  State<WeightLossCalories> createState() => _WeightLossCaloriesState();
}

class _WeightLossCaloriesState extends State<WeightLossCalories> {
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
                  S().weight_loss_calories,
                  style: GoogleFonts.notoSans(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Text(
                S().weight_loss_calories_value(HealthMetrics()
                        .lastLifeMetrics
                        ?.weight_loss_calories
                        ?.round()
                        .toString() ??
                    ''),
                style: GoogleFonts.notoSans(
                  color: const Color(0xFFB1B3C4),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
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
                      S().weight_loss_calories_description,
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
}
