import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/core/routers/go_router_constant.dart';
import 'package:task/core/utils/strings_app.dart';

class LastSentence extends StatelessWidget {
  const LastSentence({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
          StringsApp.lastSentence,
           style: GoogleFonts.roboto(fontSize: 20,color: Colors.grey),
        ),
        GestureDetector(
            onTap: () {
              context.go(registerScreen);
            },
            child:  Text(
              ' Register',
              style:GoogleFonts.roboto(fontSize: 20),
            )),
      ],
    );
  }
}
