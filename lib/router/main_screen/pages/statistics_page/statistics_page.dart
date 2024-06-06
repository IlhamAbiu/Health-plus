import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/domain/providers/health_provider/health_cubit.dart';

import 'package:health_plus/generated/l10n.dart';
import 'package:health_plus/ui/components/loading_indicator.dart';

import 'blood_oxygen.dart';
import 'heart_rate.dart';
import 'steps.dart';
import 'weight.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return CustomMaterialIndicator(
      onRefresh: () async {
        await context.read<HealthCubit>().fetchData();
        setState(() {});
      },
      elevation: 0,
      displacement: 20,
      backgroundColor: Colors.transparent,
      autoRebuild: false,
      withRotation: false,
      indicatorBuilder: (context, __) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.shadow,
                offset: const Offset(0, 0),
                blurRadius: 5,
              ),
            ],
          ),
          child: const LoadingIndicator(),
        );
      },
      child: ListView(
        key: GlobalKey(),
        controller: scrollController,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        children: [
          Text(
            S().trends,
            style: TextStyle(
              fontFamily: GoogleFonts.roboto().fontFamily,
              color: const Color(0xFF0F2851),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 33),
          const Steps(),
          const SizedBox(height: 33),
          const Weight(),
          const SizedBox(height: 33),
          const BloodOxygen(),
          const SizedBox(height: 33),
          const HeartRate(),
        ],
      ),
    );
  }
}
