import 'package:flutter/material.dart';
import 'package:task/core/utils/app_context_sizer.dart';
import 'package:task/features/auth/presentation/views/widgets/custom_form.dart';
import 'package:task/features/auth/presentation/views/widgets/icon_back.dart';
import 'package:task/features/auth/presentation/views/widgets/last_sentence.dart';
import 'package:task/features/auth/presentation/views/widgets/login_header.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: ListView(

            children: [
              const IconBack(),
              SizedBox(
                height: context.height * 0.02,
              ),
              const LoginHeader(),
              SizedBox(
                height: context.height * 0.05,
              ),
             const CustomForm(),
              SizedBox(
                height: context.height * 0.01,
              ),
              const LastSentence()
            ],
          ),
        ),
      ),
    );
  }
}
