import 'package:angular2/core.dart';

@Injectable()
class AppService {
  List<String> getMessages() => ["message01","message02","message03"];
}

class AppChildService {

}