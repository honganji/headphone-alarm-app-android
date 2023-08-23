import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:headphone_alarm_android_app/layout.dart';
import 'package:headphone_alarm_android_app/screens/error.dart';
import 'package:headphone_alarm_android_app/screens/stopwatch.dart';
import 'package:headphone_alarm_android_app/screens/timer.dart';

final GoRouter routes = GoRouter(
  initialLocation: "/stopwatch",
  errorBuilder: (context, state) => const Error(),
  routes: [
    ShellRoute(
      builder: (context, state, child) => Layout(child: child),
      routes: [
        GoRoute(
          path: "/stopwatch",
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const Stopwatch2(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: CurveTween(curve: Curves.easeInOutCirc)
                      .animate(animation),
                  child: child,
                );
              },
            );
          },
        ),
        GoRoute(
          path: "/timer",
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const Timer(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: CurveTween(curve: Curves.easeInOutCirc)
                      .animate(animation),
                  child: child,
                );
              },
            );
          },
        ),
      ],
    ),
  ],
);
