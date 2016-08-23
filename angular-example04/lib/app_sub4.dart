// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular_example04/app_service.dart';
import 'dart:async';

@Component(
    selector: 'app-sub4',
    templateUrl: 'app_sub4.html',
//    providers: const[NestedAppService, SimpleRequestService]
    providers: const[NestedAppService, const Provider(RequestService, useClass: SimpleRequestService)]
)
class AppSub4 implements OnInit{

  List<String> messages;

  final NestedAppService _appService;

  AppSub4(this._appService);

  Future<Null> initMessages() async {
    messages = await _appService.getMessages();
    messages.add("04data");
  }

  @override
  void ngOnInit() {
    initMessages();
  }
}