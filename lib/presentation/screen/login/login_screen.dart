import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project/config/app_text_style.dart';
import 'package:test_project/config/routing.dart';
import 'package:test_project/core/utils/ui_helpers.dart';
import 'package:test_project/data/bloc/login/login_bloc.dart';
import 'package:test_project/gen/colors.gen.dart';
import 'package:test_project/presentation/widget/custome_button.dart';
import 'package:test_project/presentation/widget/input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Add controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Add form key for validation
  final _formKey = GlobalKey<FormState>();

  // Add validation error states
  String? _emailError;
  String? _passwordError;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Validation methods
  void _validateEmail(String value) {
    setState(() {
      if (value.isEmpty) {
        _emailError = 'Email is required';
      } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
        _emailError = 'Please enter a valid email';
      } else {
        _emailError = null;
      }
    });
  }

  void _validatePassword(String value) {
    setState(() {
      if (value.isEmpty) {
        _passwordError = 'Password is required';
      } else if (value.length < 6) {
        _passwordError = 'Password must be at least 6 characters';
      } else {
        _passwordError = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: screenWidth(context),
            height: screenHeight(context),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  ColorName.backgroundColor,
                  ColorName.backgroundColor.withOpacity(0.8)
                ],
              ),
            ),
            child: Container(
              color: ColorName.grey.withOpacity(.5),
              child: Center(
                child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          verticalSpaceLarge,
                          Text(
                            'Welcome!',
                            style: AppTextStyle.withColor(
                              color: ColorName.white,
                              style: AppTextStyle.h2Bold,
                            ),
                          ),
                          verticalSpaceMedium,
                          Text(
                            'Sign in with your email',
                            style: AppTextStyle.withColor(
                              color: ColorName.white,
                              style: AppTextStyle.h2Bold,
                            ),
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                verticalSpaceLarge,
                                SizedBox(
                                  width:
                                      screenWidth(context) * customButtonWidth,
                                  child: InputField(
                                    controller: _emailController,
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: ColorName.white.withOpacity(.5),
                                    ),
                                    hint: 'Enter email address',
                                    stroke: true,
                                    onchange: (value) {
                                      _validateEmail(value);
                                    },
                                  ),
                                ),
                                verticalSpaceSmall,
                                Text(
                                  _emailError ?? '',
                                  style: AppTextStyle.withColor(
                                    color: ColorName.red,
                                    style: AppTextStyle.h4Bold,
                                  ),
                                ),
                                verticalSpaceMedium,
                                SizedBox(
                                  width:
                                      screenWidth(context) * customButtonWidth,
                                  child: InputField(
                                    controller: _passwordController,
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: ColorName.white.withOpacity(.5),
                                    ),
                                    hint: 'Enter password',
                                    stroke: true,
                                    onchange: (value) {
                                      _validatePassword(value);
                                    },
                                  ),
                                ),
                                verticalSpaceSmall,
                                Text(
                                  _passwordError ?? '',
                                  style: AppTextStyle.withColor(
                                    color: ColorName.red,
                                    style: AppTextStyle.h4Bold,
                                  ),
                                ),
                                verticalSpaceMedium,
                                BlocConsumer<LoginBloc, LoginState>(
                                  listener: (context, state) {
                                    if (state is LoginSuccess) {
                                      context
                                          .pushReplacementNamed(RouteName.home);
                                    }
                                  },
                                  builder: (context, state) {
                                    return CustomeButton(
                                      width: screenWidth(context) *
                                          customButtonWidth,
                                      text: 'Continue',
                                      onTap: () {
                                        _validateEmail(_emailController.text);
                                        _validatePassword(
                                            _passwordController.text);

                                        if (_emailError == null &&
                                            _passwordError == null) {
                                          context
                                              .read<LoginBloc>()
                                              .add(LoginSubmitted(
                                                email: _emailController.text,
                                                password:
                                                    _passwordController.text,
                                              ));
                                        }
                                      },
                                      loading: state is LoginLoading,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ])),
              ),
            )));
  }
}
