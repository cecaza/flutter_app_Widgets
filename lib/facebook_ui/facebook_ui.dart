import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/facebook_ui/widgets/stories.dart';
import 'widgets/quick_actions.dart';
import 'package:flutter_app/facebook_ui/widgets/what_is_on_your_mind.dart';
import 'package:flutter_app/icons/custom_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets/circle_buttom.dart';

class FacebookUI extends StatelessWidget {
  const FacebookUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 150,
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          colorFilter: const ColorFilter.mode(
            Colors.blueAccent,
            BlendMode.srcIn,
          ),
          width: 150,
        ),
        actions: const [
          CircleButtom(
            color: Color(0xffB6B6B6),
            iconData: CustomIcons.search,
          ),
          SizedBox(
            width: 15,
          ),
          CircleButtom(
            color: Color(0xffF86A6E),
            iconData: CustomIcons.bell,
          ),
          SizedBox(
            width: 15,
          ),
          CircleButtom(
            color: Color(0xff81AFFD),
            iconData: CustomIcons.user_friends,
            showBadge: true,
          ),
          SizedBox(
            width: 15,
          ),
          CircleButtom(
            color: Color(0xff2878D4),
            iconData: CustomIcons.messenger,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: ListView(
        children: const [
          SizedBox(
            height: 10,
          ),
          WhatIsOnUrMind(),
          SizedBox(
            height: 30,
          ),
          QuickAction(),
          SizedBox(
            height: 30,
          ),
          Stories(),
        ],
      ),
    );
  }
}
