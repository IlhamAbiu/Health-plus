import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_plus/domain/user/user.dart';
import 'package:health_plus/domain/user/user_repository.dart';

class InputActivityLevelCubit extends Cubit<ActivityLevel?> {
  InputActivityLevelCubit() : super(UserRepository().user?.activityLevel);

  void setActivityLevel(ActivityLevel? value) => emit(value);
}
