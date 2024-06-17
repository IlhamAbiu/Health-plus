// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_plus/domain/providers/health_provider/health_cubit.dart';
import 'package:health_plus/router/router.dart';
import 'package:health_plus/ui/components/loading_indicator.dart';

import 'input_activity_level/input_activity_level.dart';
import 'input_birthday.dart';
import 'input_gender/input_gender.dart';
import 'input_height_and_weight.dart';
import 'input_name.dart';
import 'user_input_cubit.dart';

class UserInputForm extends StatefulWidget {
  const UserInputForm({super.key});

  @override
  State<UserInputForm> createState() => _UserInputFormState();
}

class _UserInputFormState extends State<UserInputForm> {
  final controller = PageController();
  int currnetPage = 0;

  List<Widget> get pages => [
        InputName(onNext: nextPage),
        InputGender(onNext: nextPage),
        InputBirthday(onNext: nextPage),
        InputHeightAndWeight(onNext: nextPage),
        InputActivityLevel(onNext: done)
      ];

  void nextPage({BuildContext? context}) {
    controller.nextPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  void done({BuildContext? context}) {
    context?.read<UserInputCubit>().createUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => UserInputCubit(),
        child: SafeArea(
          child: BlocConsumer<UserInputCubit, UserInputState>(
            builder: (context, state) {
              if (state == UserInputState.initial) {
                return Column(
                  children: [
                    SizedBox(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(pages.length, (index) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            width: index == currnetPage ? 50 : 20,
                            height: 4,
                            decoration: BoxDecoration(
                              color: currnetPage == index
                                  ? const Color(0xFF0066FF)
                                  : const Color(0xFFBBD5FF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          );
                        }),
                      ),
                    ),
                    Expanded(
                      child: PageView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: controller,
                        itemCount: pages.length,
                        onPageChanged: (value) {
                          setState(() {
                            currnetPage = value;
                          });
                        },
                        itemBuilder: (context, index) {
                          return pages[index];
                        },
                      ),
                    ),
                  ],
                );
              } else {
                return const Center(
                  child: LoadingIndicator(),
                );
              }
            },
            listener: (context, state) async {
              if (state == UserInputState.success) {
                await context.read<HealthCubit>().fetchData();
                HomeRoute().go(context);
              }
            },
          ),
        ),
      ),
    );
  }
}
