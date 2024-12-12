import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});
  final Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: const Alignment(0, 0.75),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.deepPurpleAccent,
          ),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 160),
          child: Text(
            text,
            style: GoogleFonts.roboto( fontSize: 22, color: Colors.white,),
          ),
        ),
      ),
    );
  }
}