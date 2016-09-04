// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular_example04/app_service.dart';
import 'dart:async';

@Component(
    selector: 'app-sub3',
    templateUrl: 'app_sub3.html'
)
class AppSub3 implements OnInit{

  List<String> messages;

  final NestedAppService _appService;

  AppSub3(this._appService);

  Future<Null> initMessages() async {
    messages = await _appService.getMessages();
//    print(_appService.hashCode);
  }

  @override
  void ngOnInit() {
    initMessages();
  }
}