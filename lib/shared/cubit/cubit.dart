import 'package:azhar/shared/cubit/states.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/user_model.dart';

class MasterCubit extends Cubit<MasterStates> {
  MasterCubit() : super(MasterInitialState());

  static MasterCubit get(context) => BlocProvider.of(context);

  //*//User Data

  List<UserModel>? user;

  Future<void> getUserData() async {
    emit(GetUsersDataLoadingState());

    await FirebaseFirestore.instance.collection('users').get().then((value) {
      for (var element in value.docs) {
        user!.add(UserModel.fromJson(element.data()));
      }

      emit(GetUsersDataSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(GetUsersDataErrorState());
    });
  }
}
