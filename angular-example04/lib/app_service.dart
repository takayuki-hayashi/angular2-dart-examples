import 'package:angular2/core.dart';
import 'dart:async';

@Injectable()
class SimpleAppService {
  Future<List<String>> getMessages() async => ["message01","message02","message03"];
}

@Injectable()
class NestedAppService {

  RequestService _requestService;

  NestedAppService(this._requestService);

  Future<List<String>> getMessages() async => _requestService.getStrings();
}


@Injectable()
class RequestService {
  Future<List<String>> getStrings() async => ["data01","data02"];
}