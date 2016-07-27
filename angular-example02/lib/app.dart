// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';

@Component(selector: 'app', templateUrl: 'app.html')
class App {
  String hoge1 = "hoge1";
  String hoge2 = null;
  bool hoge3 = true;

  bool isDisplay(String str) {
    return "str" == str;
  }

  bool isDisplayByBool(bool display) {
    return display;
  }

  String getString() {
    return "str";
  }

  bool isProduction(){
    return false;
  }

  bool isSample(){
    return true;
  }
}