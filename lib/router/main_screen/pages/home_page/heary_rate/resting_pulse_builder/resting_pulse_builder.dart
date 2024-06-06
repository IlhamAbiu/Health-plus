import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_plus/ui/components/loading_indicator.dart';

import 'cubit/resting_pulse_cubit.dart';

class RestingPulseBuilder extends StatefulWidget {
  const RestingPulseBuilder({super.key});

  @override
  State<RestingPulseBuilder> createState() => _RestingPulseBuilderState();
}

class _RestingPulseBuilderState extends State<RestingPulseBuilder> {
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (_) => RestingPulseCubit(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: double.infinity,
        height: isCollapsed ? 25 : 90,
        child: BlocBuilder<RestingPulseCubit, RestingPulseState>(
          builder: (context, state) {
            if (state.result == null) {
              if (state is RestingPulseError) {
                return const Center(child: Text('Что то пошло не так'));
              } else if (state is RestingPulseSuccess) {
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
                                        'mean pulse: ${state.result?.mean_pulse}'),
                                    Text(
                                        'median pulse: ${state.result?.median_pulse}'),
                                    Text(
                                        'resting pulse: ${state.result?.resting_pulse}'),
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
