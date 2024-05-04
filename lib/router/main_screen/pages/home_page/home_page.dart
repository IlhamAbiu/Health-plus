import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:heath_plus/domain/services/health_service/health_service.dart';
import 'package:heath_plus/ui/components/loading_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomMaterialIndicator(
      onRefresh: HealthService().fetchData,
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
            color: Theme.of(context).colorScheme.surface,
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
        children: [
          Text(
            'Home Page',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          )
        ],
      ),
    );
  }
}
