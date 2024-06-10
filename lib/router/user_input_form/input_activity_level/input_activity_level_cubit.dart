import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_plus/domain/user/user.dart';

class InputActivityLevelCubit extends Cubit<ActivityLevel?> {
  InputActivityLevelCubit() : super(null);

  void setActivityLevel(ActivityLevel? value) => emit(value);
}
