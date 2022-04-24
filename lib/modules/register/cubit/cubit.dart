import 'package:azhar/modules/register/cubit/states.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/user_model.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);

  late UserModel model;

  Future<void> userCreate({
    required String name,
    required String email,
    required String phone,
    required String university,
  }) async {
    UserModel model = UserModel(
      name: name,
      email: email,
      phone: phone,
      university: university,
    );
    FirebaseFirestore.instance
        .collection('users')
        .add(model.toMap())
        .then((value) {
      emit(CreateUserSuccessState());
    }).catchError((error) {
      emit(CreateUserErrorState(error.toString()));
    });
  }
}
