import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'utils.dart';

class FireBaseUtil {
  static Future initialize() async {
    var m = await Firebase.initializeApp();
    p('$FERN $FERN $FERN Firebase has been initialized: $PINK_FLOWER ${m.name} ${m.options.databaseURL}');
    return m;
  }
  static bool isUserLoggedIn()  {
    var auth = FirebaseAuth.instance;
    if (auth.currentUser != null) {
      p('$PEACH user is already logged in');
      return true;
    }
    p('$ERROR $ERROR user is already logged in');
    return false;
  }
}

