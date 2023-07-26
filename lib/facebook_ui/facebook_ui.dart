import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/icons/custom_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FacebookUI extends StatelessWidget {
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
        ),
        actions: [
          Container(
            width: 35,
            height: 35,
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              CustomIcons.search,
              color: Colors.white,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
