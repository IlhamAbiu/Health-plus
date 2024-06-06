import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_plus/ui/components/loading_indicator.dart';

import 'cubit/sleep_metrics_cubit.dart';

class SleepMetricsBuilder extends StatefulWidget {
  const SleepMetricsBuilder({super.key});

  @override
  State<SleepMetricsBuilder> createState() => _SleepMetricsBuilderState();
}

class _SleepMetricsBuilderState extends State<SleepMetricsBuilder> {
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (_) => SleepMetricsCubit(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: double.infinity,
        height: isCollapsed ? 25 : 150,
        child: BlocBuilder<SleepMetricsCubit, SleepMetricsState>(
          builder: (context, state) {
            if (state.result == null) {
              if (state is SleepMetricsError) {
                return const Center(child: Text('Что то пошло не так'));
              } else if (state is SleepMetricsSuccess) {
                return const Center(child: Text('Нет данных'));
              } else {
                return const Center(child: LoadingIndicator());
              }
            } else {
              return isCollapsed
                  ? Column(
                      children: [
                        GestureDetector(
                          onTap: changeState,
                          child: Container(
                            width: double.infinity,
                            color: Colors.transparent,
                            child: const Center(
                              child: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF202020),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        GestureDetector(
                          onTap: changeState,
                          child: Container(
                            width: double.infinity,
                            color: Colors.transparent,
                            child: const Center(
                              child: Icon(
                                Icons.keyboard_arrow_up_rounded,
                                color: Color(0xFF202020),
                              ),
                            ),
                          ),
                        ),
                        FutureBuilder(
                            future: showing(),
                            initialData: false,
                            builder: (context, snapshot) {
                              if (snapshot.data == true) {
                                return Column(
                                  children: [
                                    Text(
                                        'sleep score: ${state.result?.sleep_score.round()}'),
                                    Text(
                                        'sleep efficiency: ${state.result?.sleep_efficiency.round()}%'),
                                    Text(
                                        'sleep latency: ${state.result?.sleep_latency} мин'),
                                    Text(
                                        'deep sleep: ${state.result?.deep_sleep_percent}%'),
                                    Text(
                                        'rem sleep: ${state.result?.rem_sleep_percent}%'),
                                    Text(
                                        'light sleep: ${state.result?.light_sleep_percent}%'),
                                  ],
                                );
                              } else {
                                return const SizedBox();
                              }
                            }),
                      ],
                    );
            }
          },
        ),
      ),
    );
  }

  void changeState() {
    setState(() {
      isCollapsed = !isCollapsed;
    });
  }

  Future<bool> showing() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return true;
  }
}
