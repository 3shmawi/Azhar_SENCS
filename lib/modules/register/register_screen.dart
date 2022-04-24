import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../shared/components/components.dart';

import '../home/home_screen.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var universityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {
          if (state is CreateUserSuccessState) {
            Fluttertoast.showToast(
              msg: 'WELCOME',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0,
            ).then((value) {
              navigateAndFinish(context, const HomeScreen());
            });
          } else if (state is CreateUserErrorState) {
            for (int i = 0; i < state.error.length; i++) {
              if (state.error[i] == ']') {
                Fluttertoast.showToast(
                  msg: state.error.substring(i + 1, state.error.length),
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
                break;
              }
            }
          } else if (state is RegisterErrorState) {
            for (int i = 0; i < state.error.length; i++) {
              if (state.error[i] == ']') {
                Fluttertoast.showToast(
                  msg: state.error.substring(i + 1, state.error.length),
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
                break;
              }
            }
          }
        },
        builder: (context, state) {
          var cubit = RegisterCubit.get(context);
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  )),
              systemOverlayStyle: SystemUiOverlayStyle.dark,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: Stack(
              children: [
                const MyBackgroundColor(),
                Center(
                  child: Container(
                    width: size.width * .9,
                    height: size.width * 1.2,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 90,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(),
                        Text(
                          'Create User',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'MyFont',
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(.7),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        defaultFormField(
                          context,
                          controller: nameController,
                          icon: Icons.person,
                          hintText: 'User name...',
                          textInputType: TextInputType.name,
                        ),
                        defaultFormField(
                          context,
                          controller: emailController,
                          icon: Icons.email_outlined,
                          hintText: 'Email...',
                          textInputType: TextInputType.emailAddress,
                        ),
                        defaultFormField(
                          context,
                          controller: phoneController,
                          icon: Icons.phone,
                          hintText: 'Phone...',
                          textInputType: TextInputType.phone,
                        ),
                        defaultFormField(
                          context,
                          controller: universityController,
                          icon: Icons.home,
                          hintText: 'University...',
                          textInputType: TextInputType.name,
                        ),
                        state is! RegisterLoadingState
                            ? Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: SizedBox(
                                  height: 40,
                                  child: defaultOutLineButton(
                                    text: 'create',
                                    voidCallback: () {
                                      cubit.userCreate(
                                        name: nameController.text,
                                        email: emailController.text,
                                        phone: phoneController.text,
                                        university: universityController.text,
                                      );
                                    },
                                  ),
                                ),
                              )
                            : const Center(
                                child: CircularProgressIndicator(),
                              ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
