import 'package:flutter/material.dart';
import 'package:radarsoft/core/core/utils/image_constant.dart';
import 'package:radarsoft/core/core/utils/size_utils.dart';
import 'package:radarsoft/core/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class BannerimagegathrrItemWidget extends StatelessWidget {
  const BannerimagegathrrItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle331,
        height: 148.v,
        width: 390.h,
      ),
    );
  }
}
