import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/core/utils/app_context_sizer.dart';
import 'package:task/core/utils/strings_app.dart';
import 'package:task/features/auth/presentation/view_model/authentication_cubit/authentication_cubit.dart';
import 'package:task/features/auth/presentation/view_model/authentication_cubit/authentication_state.dart';
import 'package:task/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:task/features/auth/presentation/views/widgets/custom_text_field.dart';

import '../../../../../core/utils/helper.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  String ? email ;
  String ? password ;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit , AuthState>(
      listener: (context , state) {
        if (state is AuthLoginSuccess){
            showCustomDialog(
              context,
              title: StringsApp.successTitle,
              content: StringsApp.successContent,
            );
          }else if (state is AuthFailure){

            showCustomDialog(
              context,
              title: StringsApp.failureTitle,
              content: state.error,
            );

        }
      },
      builder: (context , state) {
         if (state is AuthLoading){
          return const CircularProgressIndicator();
        }
        return Form(
            key: formKey,
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text("Email" ,style: GoogleFonts.roboto(fontWeight: FontWeight.bold ,fontSize: 18),),
            CustomTextFromField(
              onChange: (data) {
                email = data;
              },
              hintText: " Your email",
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: context.height * 0.02,
            ),
            Text("Password" ,style: GoogleFonts.roboto(fontWeight: FontWeight.bold ,fontSize: 18),),
            CustomTextFromField(
              obscre: context.read<AuthCubit>().isHidden,
              onChange: (data) {
                password = data;
              },
              hintText: " password",
              suffIcon:IconButton(onPressed: (){
                setState(() {
                  context.read<AuthCubit>().togglePasswordVisibility();
                });}, icon: Icon(context.read<AuthCubit>().isHidden ? Icons.visibility_off_outlined : Icons.visibility_outlined )),
            ),
            SizedBox(
              height: context.height * 0.2,
            ),
          // you can use email : alshaimaa@gmail.com & password : 12345678
          CustomButton(text: "Sign in" , onTap: (){
        if (formKey.currentState!.validate()) {
        BlocProvider.of<AuthCubit>(context)
            .login(email: email!, password: password!);
        } else {}
        },),

          ],
        ));
      },
    );
  }
}
