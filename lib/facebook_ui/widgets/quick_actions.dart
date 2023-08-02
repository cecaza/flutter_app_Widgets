import 'package:flutter/cupertino.dart';
import '../../icons/custom_icons.dart';
import 'circle_buttom.dart';

class QuickAction extends StatelessWidget {
  const QuickAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: FittedBox(
        fit: BoxFit.contain,
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            _QuickButton(
              color: Color(0xff5B8650),
              iconData: CustomIcons.photos,
              label: "Galerry",
            ),
            SizedBox(
              width: 15,
            ),
            _QuickButton(
              color: Color(0xff1D88E9),
              iconData: CustomIcons.user_friends,
              label: 'Tag Friends',
            ),
            SizedBox(
              width: 15,
            ),
            _QuickButton(
              color: Color(0xffFB7271),
              iconData: CustomIcons.video_camera,
              label: 'Live',
            ),
          ],
        ),
      ),
    );
  }
}

class _QuickButton extends StatelessWidget {
  const _QuickButton({
    required this.iconData,
    required this.color,
    required this.label,
  });
  final IconData iconData;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 15,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleButtom(
            color: color.withOpacity(0.6),
            iconData: iconData,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            label,
            style: TextStyle(color: color),
          )
        ],
      ),
    );
  }
}
