// Copyright (c) 2022 Bluespada
// This software is under MIT License please read accompanying file
// COPY, or read online at https://opensource.org/licenses/MIT

import 'package:flutter/material.dart';

class HomeViews extends StatefulWidget {

  const HomeViews({ Key? key }) : super(key: key);

  @override
  State<HomeViews> createState() => _HomeViews();
}

class _HomeViews extends State<HomeViews> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Text("Hello world"),
      ),
    );
  }
}