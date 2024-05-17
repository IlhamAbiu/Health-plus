import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_plus/domain/user/user.dart';

class InputGenderCubit extends Cubit<Gender?> {
  InputGenderCubit() : super(null);

  void setGender(Gender? gender) => emit(gender);
}
