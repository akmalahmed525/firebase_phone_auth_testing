import 'package:flutter/material.dart';
import 'package:firebase_phone_auth_testing/extensions/extensions.dart';

part 'base_circular_progress.dart';

class AppCircularProgress extends BaseCircularProgress {
  const AppCircularProgress._({super.inverted});

  @override
  Widget body(BuildContext context) {
    final colorScheme = context.colorScheme;

    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(
          inverted == true ? colorScheme.onPrimary : colorScheme.primary),
    );
  }

  const factory AppCircularProgress() = _AppCircularProgress;
  const factory AppCircularProgress.inverted() = _AppInvertedCircularProgress;
}

class _AppCircularProgress extends AppCircularProgress {
  const _AppCircularProgress() : super._(inverted: false);
}

class _AppInvertedCircularProgress extends AppCircularProgress {
  const _AppInvertedCircularProgress() : super._(inverted: true);
}
