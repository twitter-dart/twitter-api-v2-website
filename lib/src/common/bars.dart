// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:flutter/material.dart';

import 'common.dart';

const double topbarHeight = 100.0;
const double bottombarHeight = 60.0;
const double footerHeight = 80.0;

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConditionalRendering(
      (size) => size.width > 800,
      child: Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: CentralizedContainer(
          maxWidth: 2000,
          child: Container(
            color: Colors.white.withOpacity(0.8),
            height: topbarHeight,
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(70, 0, 50, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClickableRegion.button(
                    onPressed: LinkAction.opensSameTab.action("/"),
                    child: Image.asset('twitter-api-v2.png'),
                  ),
                  const HorizontalMenu(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HorizontalMenu extends StatelessWidget {
  const HorizontalMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Link(
          label: "GitHub",
          url: "https://github.com/twitter-dart/twitter-api-v2",
          linkAction: LinkAction.opensNewTab,
          first: true,
        ),
        Link(
          label: "Pub.dev",
          url: "https://pub.dev/packages/twitter_api_v2",
          linkAction: LinkAction.opensNewTab,
        ),
        Link(
          label: "Examples",
          url: "https://github.com/twitter-dart/twitter-api-v2-examples",
          linkAction: LinkAction.opensNewTab,
        ),
        Link(
          label: "Docs",
          url:
              "https://github.com/twitter-dart/twitter-api-v2/blob/main/README.md",
          linkAction: LinkAction.opensNewTab,
        ),
        Link(
          label: "Reference",
          url:
              "https://pub.dev/documentation/twitter_api_v2/latest/twitter_api_v2/twitter_api_v2-library.html",
          linkAction: LinkAction.opensNewTab,
        ),
        Link(
          label: "Issue",
          url: "https://github.com/twitter-dart/twitter-api-v2/issues",
          linkAction: LinkAction.opensNewTab,
          last: true,
        ),
      ],
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.normal,
        );

    return SizedBox(
      height: footerHeight,
      child: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 32),
          children: [
            Link(
              label: "MERCH",
              url: "https://flame-engine.org/merch",
              linkAction: LinkAction.opensNewTab,
              style: textStyle,
            ),
            Link(
              label: "AWESOME FLAME",
              url: "https://github.com/flame-engine/awesome-flame",
              linkAction: LinkAction.opensNewTab,
              style: textStyle,
            ),
            Link(
              label: "FIRESLIME",
              url: "https://fireslime.xyz/",
              linkAction: LinkAction.opensNewTab,
              style: textStyle,
            ),
            Link(
              label: "MEDIA",
              url: "https://github.com/flame-engine/brand",
              linkAction: LinkAction.opensNewTab,
              style: textStyle,
            ),
            Link(
              label: "CONTACT",
              url: "https://fireslime.xyz/about.html",
              linkAction: LinkAction.opensNewTab,
              style: textStyle,
              last: true,
            ),
          ],
        ),
      ),
    );
  }
}
