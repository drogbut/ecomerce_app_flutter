import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../core/constants/sizes.dart';
import '../../locator.dart';
import '../../utilities/device/platform.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackIcon;
  final IconData? leadingIcon;
  final VoidCallback? leadingOnPressed;

  final Widget? title;
  final List<Widget>? actions;

  const TAppBar({
    this.showBackIcon = false,
    this.leadingIcon,
    this.title,
    this.actions,
    this.leadingOnPressed,
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(TSizes.appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: showBackIcon
          ? IconButton(icon: getIcon(), onPressed: () => Get.back())
          : leadingIcon != null
              ? IconButton(icon: Icon(leadingIcon), onPressed: leadingOnPressed)
              : null,
      title: title,
      actions: actions,
    );
  }

  Widget getIcon() {
    UtilityPlatform platformUtil = sl.get<UtilityPlatform>();
    if (!platformUtil.isIOS) {
      return const FaIcon(Iconsax.arrow_left);
    }

    return const FaIcon(CupertinoIcons.arrow_left);
  }
}
