// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';

@Component(selector: 'app', templateUrl: 'app.html')
class App {
  final List<Language> languages = [new Language(1,"Dart"),
  new Language(2,"Java"),
  new Language(3,"Ruby"),
  new Language(4,"Scala"),
  new Language(5,"Groovy")];

  List<Language> simpleMethodCall() => languages;

  List<Language> filter(String str) => languages.where((e)=> e.name.contains(str)).toList();
}


class Language {
  num id;
  String name;
  Language(this.id,this.name);
}