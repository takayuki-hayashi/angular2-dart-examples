// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular_example04/app_service.dart';
import 'dart:async';
import 'package:angular_example04/app_sub1.dart';
import 'package:angular_example04/app_sub2.dart';

@Component(
    selector: 'app',
    templateUrl: 'app.html',
    directives: const[AppSub1,AppSub2])
class App {}