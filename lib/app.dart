// Copyright (c) 2022 Bluespada
// This software is under MIT License please read accompanying file
// COPY, or read online at https://opensource.org/licenses/MIT

import 'package:flutter_modular/flutter_modular.dart';

// import modules
import 'modules/modules.dart';

class AppModule extends Module {

  // initialize binder
  @override
  List<Bind> get binds => [
  
  ];

  // initialize module routes
  List<ModularRoute> get route => [
    // initialize home module route
    ModuleRoute("/", module: HomeModule())
  ];

}