// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class TwitterTheme {
  const TwitterTheme({
    required this.background,
    required this.backgroundSurface,
    required this.primaryAccent,
    required this.secondaryAccent,
    required this.textColor,
  });

  final Color background;
  final Color backgroundSurface;
  final Color primaryAccent;
  final Color secondaryAccent;
  final Color textColor;

  static const theme = TwitterTheme(
    background: Color(0xFF000000),
    backgroundSurface: Color(0xFF272727),
    primaryAccent: Color(0xFFEB1930),
    secondaryAccent: Color(0xFFF44C32),
    textColor: Color(0xFF000000),
  );
}

extension ThemeOnContext on BuildContext {
  TwitterTheme get twitterTheme {
    return watch<TwitterTheme>();
  }
}
