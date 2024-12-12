import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/core/utils/app_context_sizer.dart';

import '../../../../../core/utils/strings_app.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ Text(StringsApp.signIn ,style: GoogleFonts.roboto(fontWeight: FontWeight.bold , fontSize: 45),),
        SizedBox(height: context.height*0.02,),
        Text(StringsApp.signInWelcome ,style: GoogleFonts.roboto( fontSize: 40),),
        Text(StringsApp.signInMissed ,style: GoogleFonts.roboto( fontSize: 40),),],
    );
  }
}
