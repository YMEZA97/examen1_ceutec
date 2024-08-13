import 'package:examen1/pages/currency/currency_ui.dart';
import 'package:examen1/pages/home/home_page.dart';
import 'package:examen1/pages/news/new_ui.dart';
import 'package:examen1/pages/podcast/podcast_ui.dart';
import 'package:examen1/pages/task/task_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
        path: '/', // landing or initial page declare
        builder: (BuildContext context, GoRouterState state) {
          return const homepage();
        },
        routes: [
          GoRoute(
            name: "News",
            path: "news",
            builder: (BuildContext context, GoRouterState state) {
              return const NewUi();
            },
          ),
          GoRoute(
            name: "Task",
            path: 'task',
            builder: (BuildContext context, GoRouterState state) {
              return const TaskUi();
            },
          ),
          GoRoute(
            name: "Currency",
            path: 'currency',
            builder: (BuildContext context, GoRouterState state) {
              return const CurrencyUi();
            },
          ),
          GoRoute(
            name: "Podcast",
            path: 'podcast',
            builder: (BuildContext context, GoRouterState state) {
              return const PodcastUi();
            },
          ),
        ]),
  ],
);
