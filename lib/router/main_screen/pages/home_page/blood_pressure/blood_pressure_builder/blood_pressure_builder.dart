import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/blood_pressure_cubit.dart';

class BloodPressureBuilder extends StatefulWidget {
  const BloodPressureBuilder({super.key});

  @override
  State<BloodPressureBuilder> createState() => _BloodPressureBuilderState();
}

class _BloodPressureBuilderState extends State<BloodPressureBuilder> {
  bool isCollapsed = true;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (_) => BloodPressureCubit(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: double.infinity,
        height: isCollapsed ? 25 : 130,
        child: BlocBuilder<BloodPressureCubit, BloodPressureState>(
          builder: (context, state) {
            if (state.result == null) {
              return const SizedBox();
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
                                    Text('map: ${state.result?.map}'),
                                    Text('pp: ${state.result?.pp}'),
                                    Text(
                                        'recovery_heart_rate: ${state.result?.recovery_heart_rate}'),
                                    Text(
                                        'average_resting_oxygen_level: ${state.result?.average_resting_oxygen_level}'),
                                    Text(
                                        'average_active_oxygen_level: ${state.result?.average_active_oxygen_level}'),
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
