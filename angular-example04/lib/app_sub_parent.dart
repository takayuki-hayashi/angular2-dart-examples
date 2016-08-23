// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular_example04/app_service.dart';
import 'dart:async';
import 'package:angular_example04/app_sub3.dart';
import 'package:angular_example04/app_sub4.dart';

@Component(
    selector: 'app-sub-parent',
    templateUrl: 'app_sub_parent.html',
    providers: const[NestedAppService, RequestService],
    directives: const [AppSub3,AppSub4]
)
class AppSubParent {
}