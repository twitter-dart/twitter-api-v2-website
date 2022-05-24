// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:flutter/material.dart';

import 'common/bars.dart';
import 'common/common.dart';

class LandingView extends StatefulWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: BackgroundStuff(
          stackableChildren: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lp.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                child: Text(
                  'Twitter',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            const TopBar(),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 200, 0, 0),
              child: Column(
                children: [
                  const SizedBox(
                    width: 800,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'This library provides\n',
                            style: TextStyle(fontSize: 50),
                          ),
                          TextSpan(
                            text: 'the easiest way to using\n',
                            style: TextStyle(fontSize: 50),
                          ),
                          TextSpan(
                            text: 'Twitter API v2.0\n',
                            style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(228, 42, 112, 1),
                            ),
                          ),
                          TextSpan(
                            text: 'in ',
                            style: TextStyle(fontSize: 50),
                          ),
                          TextSpan(
                            text: 'Dart & Flutter',
                            style: TextStyle(
                              fontSize: 70,
                              color: Color.fromRGBO(98, 185, 244, 1),
                            ),
                          ),
                          TextSpan(
                            text: '.',
                            style: TextStyle(fontSize: 50),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 100, 250, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(98, 185, 244, 1),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 20,
                        ),
                        elevation: 5,
                      ),
                      onPressed: () => LinkAction.opensNewTab
                          .action('https://pub.dev/packages/twitter_api_v2')
                          .call(),
                      child: const Text(
                        'Getting Started',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(),
          ),
        ),
      );
}
