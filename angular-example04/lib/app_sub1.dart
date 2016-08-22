// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular_example04/app_service.dart';
import 'dart:async';

@Component(
    selector: 'app-sub1',
    templateUrl: 'app_sub1.html',
    providers: const[SimpleAppService])
class AppSub1 implements OnInit{

  List<String> messages;

  final SimpleAppService _appService;

  AppSub1(this._appService);

  Future<Null> initMessages() async {
    messages = await _appService.getMessages();
  }

  @override
  void ngOnInit() {
    initMessages();
  }
}