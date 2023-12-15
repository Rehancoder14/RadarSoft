import 'package:flutter/material.dart';
import 'package:radarsoft/core/core/utils/image_constant.dart';
import 'package:radarsoft/core/core/utils/size_utils.dart';
import 'package:radarsoft/core/widgets/custom_icon_button.dart';
import 'package:radarsoft/core/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class TwentynineItemWidget extends StatelessWidget {
  const TwentynineItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 272.v,
      width: 358.h,
      margin: EdgeInsets.only(left: 6.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle336,
            height: 272.v,
            width: 358.h,
            radius: BorderRadius.circular(
              8.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 126.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    decoration: IconButtonStyleHelper.fillOnPrimary,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowLeftGray600,
                    ),
                  ),
                  CustomIconButton(
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    decoration: IconButtonStyleHelper.fillOnPrimary,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowLeftGray60020x20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
