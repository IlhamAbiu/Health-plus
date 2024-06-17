import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/domain/services/generate_text/models/activity_response/activity_response.dart';
import 'package:health_plus/gen/assets.gen.dart';
import 'package:health_plus/generated/l10n.dart';
import 'package:health_plus/ui/components/loading_indicator.dart';

import 'activity_cubit.dart';

class ActivityBuilder extends StatefulWidget {
  const ActivityBuilder({super.key});

  @override
  State<ActivityBuilder> createState() => _ActivityBuilderState();
}

class _ActivityBuilderState extends State<ActivityBuilder> {
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => ActivityCubit(),
      child: BlocBuilder<ActivityCubit, ActivityResponse?>(
        builder: (context, state) {
          return Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadow,
                  offset: const Offset(0, 0),
                  blurRadius: 40,
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Assets.svg.activity.svg(),
                    const SizedBox(width: 10),
                    Text(
                      S().activity,
                      style: GoogleFonts.notoSans(
                        color: const Color(0xFF0F2851),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    state != null && !isCollapsed
                        ? GestureDetector(
                            onTap: () {
                              setState(() {
                                isCollapsed = true;
                              });
                              context.read<ActivityCubit>().updateData();
                            },
                            child: Container(
                              width: 32,
                              height: 32,
                              color: Colors.transparent,
                              child: const Icon(
                                Icons.refresh_outlined,
                                color: Color(0xFFB0B2C3),
                              ),
                            ),
                          )
                        : const SizedBox(),
                    state != null
                        ? isCollapsed
                            ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isCollapsed = !isCollapsed;
                                  });
                                },
                                child: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Color(0xFF0F2851),
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isCollapsed = !isCollapsed;
                                  });
                                },
                                child: const Icon(
                                  Icons.keyboard_arrow_up_rounded,
                                  color: Color(0xFF0F2851),
                                ),
                              )
                        : const LoadingIndicator(),
                  ],
                ),
                isCollapsed
                    ? const SizedBox()
                    : Column(
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            '${state!.response}',
                            style: GoogleFonts.notoSans(
                              color: const Color(0xFF0F2851),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}
