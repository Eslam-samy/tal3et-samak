import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:talet_samak/config/theme/app_theme.dart';
import 'package:talet_samak/core/constants/app_constants.dart';
import 'package:talet_samak/core/my_log.dart';
import 'package:talet_samak/features/auth/forget_password/presentation/forget_password_screen.dart';
import 'package:talet_samak/features/auth/login/demain/entities/login_entity.dart';
import 'package:talet_samak/features/auth/login/demain/repository/login_repository.dart';
import 'package:talet_samak/features/auth/login/presentation/bloc/login_bloc.dart';
import 'package:talet_samak/features/auth/login/presentation/widgets/login_app_bar.dart';
import 'package:talet_samak/features/auth/login/presentation/widgets/login_button.dart';
import 'package:talet_samak/features/auth/login/presentation/widgets/main_app_edittext.dart';
import 'package:talet_samak/features/auth/signup/signup_screen.dart';
import 'package:talet_samak/features/home/home_screen/presentation/screens/home_screen.dart';
import 'package:talet_samak/injection_container.dart';
import 'package:talet_samak/utils/localization/app_localizations.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    var phoneController = TextEditingController();
    var passwordController = TextEditingController();

    void onBackPressed() {
      Navigator.of(context).pop();
    }

    void _login(BuildContext context) {
      BlocProvider.of<LoginBloc>(context).add(PostLoginEvent(
        phoneController.value.text,
        passwordController.value.text,
        "122485",
        "35452",
        DeviceType.android,
      ));
    }

    return BlocProvider<LoginBloc>(
      create: (context) => sl(),
      child: Scaffold(
        key: _scaffoldMessengerKey,
        backgroundColor: secondaryBackground,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(main_app_padding),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                LoginAppBar(onButtonClicked: onBackPressed),
                const SizedBox(
                  height: 10,
                ),
                SvgPicture.asset('assets/icons/logo.svg'),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'welcome'.tr(context),
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'please_login'.tr(context),
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 24,
                ),
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    ConsoleLogger.info(state.toString());
                    return CustomTextInput(
                      hintText: "phone_number".tr(context),
                      controller: phoneController,
                      errorText: _checkPhoneError(state, context),
                    );
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    return CustomTextInput(
                      isPassword: true,
                      hintText: "password".tr(context),
                      controller: passwordController,
                      errorText: _checkPasswordError(state, context),
                    );
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    //navigato to forget passworrd Screen
                    _navigateToForgetPasswordScreen(context);
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'forget_pssword'.tr(context),
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).primaryColor,
                          ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 42,
                ),
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    if (state is ErrorLoginState) {
                      _showSnackBar(state, context);
                    }
                    if (state is LoadedLoginState) {
                      _saveUserData(state.login, context);
                    }
                    return LoginButton(
                        text: 'login'.tr(context),
                        isLoading: state is LoginLoading,
                        onPressed: () {
                          _login(context);
                        });
                  },
                ),
                const SizedBox(
                  height: 48,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'dont_have_account'.tr(context),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        _navigateToSignupScreen(context);
                      },
                      child: Text(
                        'sign_up'.tr(context),
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }

  String? _checkPhoneError(LoginState state, BuildContext context) {
    if (state is ErrorValidationState) {
      if (state.validationErrors.contains(ValidationErrorType.invalidPhone)) {
        return 'please_enter_a_valid_phone'.tr(context);
      }
      return null;
    }
    return null;
  }

  String? _checkPasswordError(LoginState state, BuildContext context) {
    if (state is ErrorValidationState) {
      if (state.validationErrors
          .contains(ValidationErrorType.invalidPassword)) {
        return 'please_enter_a_valid_password'.tr(context);
      }
      return null;
    }
    return null;
  }

  void _showSnackBar(ErrorLoginState state, BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(state.messaage == null
              ? state.dioException.response.toString()
              : state.messaage!),
          backgroundColor: Colors.red,
        ),
      );
    });
  }

  void _saveUserData(LoginEntity login, BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (ctx) => const HomeScreen()),
    );
  }

  void _navigateToForgetPasswordScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (ctx) => const ForgetPasswordScreen()),
    );
  }

  void _navigateToSignupScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (ctx) => const SignupScreen()),
    );
  }
}
