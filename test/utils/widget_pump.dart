import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:memo/application/theme/theme_controller.dart';

/// Wraps the [widget] in a [Scaffold] and [MaterialApp]
Future<void> pumpMaterialScoped(WidgetTester tester, Widget widget) => tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: widget,
        ),
      ),
    );

/// Wraps a [pumpMaterialScoped] with a [ProviderScope] that overrides [themeController].
Future<void> pumpMaterialScopedWithTheme(WidgetTester tester, Widget widget) => tester.pumpWidget(
      ProviderScope(
        overrides: [themeController.overrideWithValue(ThemeController())],
        child: MaterialApp(
          home: Scaffold(
            body: widget,
          ),
        ),
      ),
    );
