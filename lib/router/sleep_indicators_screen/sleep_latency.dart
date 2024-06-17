import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/features/sleep_metrics/sleep_metrics.dart';
import 'package:health_plus/generated/l10n.dart';

class SleepLatency extends StatefulWidget {
  const SleepLatency({super.key});

  @override
  State<SleepLatency> createState() => _SleepLatencyState();
}

class _SleepLatencyState extends State<SleepLatency> {
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
                  S().sleep_latency,
                  style: GoogleFonts.notoSans(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Text(
                SleepMetrics()
                            .lastSleepMetrics
                            ?.sleep_latency
                            .round()
                            .toString() !=
                        null
                    ? S().sleep_efficiency_value(SleepMetrics()
                            .lastSleepMetrics
                            ?.sleep_latency
                            .round()
                            .toString() ??
                        '')
                    : '',
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
                      S().sleep_latency_description,
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
