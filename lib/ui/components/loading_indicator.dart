import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoActivityIndicator(
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
