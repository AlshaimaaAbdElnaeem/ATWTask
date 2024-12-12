import 'package:flutter/material.dart';

class CustomTextFromField extends StatefulWidget {
  CustomTextFromField(
      {this.hintText,
      this.keyboardType,
      this.onChange,
      this.obscre = false,
      this.preIcone,
      this.suffIcon});
  final String? hintText;
  Function(String)? onChange;
  bool obscre;
  IconButton? suffIcon;
  Icon? preIcone;
  TextInputType? keyboardType;

  @override
  State<CustomTextFromField> createState() => _CustomTextFromFieldState();
}


class _CustomTextFromFieldState extends State<CustomTextFromField> {
  final FocusNode _focusNode = FocusNode();
  Color ? _fillColor = Colors.grey[90];
  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _fillColor = _focusNode.hasFocus ? Colors.white : Colors.grey[200]!;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNode,
      cursorColor: Colors.deepPurpleAccent,
      obscureText: widget.obscre,
      validator: (data) {
        if (data!.isEmpty) {
          return 'Field is required 🧐';
        }
      },
      keyboardType: widget.keyboardType,
      onChanged: widget.onChange,
      decoration: InputDecoration(
       contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 18.0),
        filled: true,
        fillColor: _fillColor,
          suffixIcon: widget.suffIcon,
          prefixIcon: widget.preIcone,
          hintText: widget.hintText,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:const BorderSide(
              color: Colors.red,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:const BorderSide(
              color: Colors.black54,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:const BorderSide(
              color: Colors.grey,
            ),
          )),
    );
  }
}
