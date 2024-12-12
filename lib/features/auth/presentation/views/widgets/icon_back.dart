import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/utils/app_context_sizer.dart';

import '../../../../../core/utils/assets_app.dart';

class IconBack extends StatelessWidget {
  const IconBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset( AssetsApp.iconBack , width: context.width*0.1, height: context.height*0.05,color: Colors.black54,),
      ],
    );
  }
}
