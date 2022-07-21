import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CampusEatsFirebaseUser {
  CampusEatsFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

CampusEatsFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CampusEatsFirebaseUser> campusEatsFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CampusEatsFirebaseUser>(
            (user) => currentUser = CampusEatsFirebaseUser(user));
