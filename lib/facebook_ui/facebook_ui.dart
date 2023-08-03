import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:faker/faker.dart';
import 'package:flutter_app/facebook_ui/widgets/publication_item.dart';
import 'package:flutter_app/facebook_ui/widgets/stories.dart';
import 'package:flutter_app/models/publication.dart';
import 'widgets/quick_actions.dart';
import 'package:flutter_app/facebook_ui/widgets/what_is_on_your_mind.dart';
import 'package:flutter_app/icons/custom_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets/circle_buttom.dart';

class FacebookUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final publications = <Publication>[];
    for (int i = 0; i < 50; i++) {
      final random = faker.randomGenerator;
      final publication = Publication(
        user: User(
          avatar: faker.image.image(),
          userName: faker.person.name(),
        ),
        title: faker.lorem.sentence(),
        createdAt: faker.date.dateTime(),
        imageUrl: faker.image.image(),
        commentsCount: random.integer(50000),
        shareCount: random.integer(50000),
        curentUserReaction:
            Reaction.values[random.integer(Reaction.values.length - 1)],
      );
      publications.add(publication);
    }
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
        children: [
          const SizedBox(height: 10),
          const WhatIsOnUrMind(),
          const SizedBox(height: 30),
          const QuickAction(),
          const SizedBox(height: 30),
          const Stories(),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) => PublicationItem(
              publication: publications[index],
            ),
            itemCount: publications.length,
          ),
        ],
      ),
    );
  }
}
