import 'package:flutter/material.dart';
import 'package:heath_plus/domain/services/health_service/health_service.dart';

class AppAuthorizationScreen extends StatelessWidget {
  const AppAuthorizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await HealthService().installHealthConnect();
          },
          child: Text('Скачать'),
        ),
      ),
    );
  }
}
