// Copyright (c) 2022 Bluespada
// This software is under MIT License please read accompanying file
// COPY, or read online at https://opensource.org/licenses/MIT

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
// import home controller, views, and model here
import './controller/home_controller.dart';
import './views/home_views.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
    // bind home controller
    Bind.factory((i) => HomeController()),
  ];

  @override
  List<ModularRoute> get routes => [
    // create home route /
    ChildRoute("/", child: (_, __) => const HomeViews()),
  ];
}