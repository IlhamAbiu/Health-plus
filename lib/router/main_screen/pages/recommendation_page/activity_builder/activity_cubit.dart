import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_plus/domain/services/generate_text/models/activity_response/activity_response.dart';
import 'package:health_plus/features/activity/activity.dart';

class ActivityCubit extends Cubit<ActivityResponse?> {
  ActivityCubit() : super(Activity().activityText) {
    _subscription = Activity().stream.listen((event) {
      emit(event);
    });
  }

  StreamSubscription? _subscription;

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
