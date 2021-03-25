import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_crud/data/dummy_users.dart';
import 'package:flutter_crud/models/user.dart';

class Users with ChangeNotifier {
  Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  User byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(User user) {
    if (user == null) {
      return;
    }
    if (_items.containsKey(user.id)) {
      _items.update(user.id, (_) => null);
    }
    //adicionar
    final id = Random().nextDouble().toString();
    _items.putIfAbsent(
      '1000',
      () => User(
        id: id,
        name: user.name,
        email: user.email,
        avatarUrl: user.avatarUrl,
      ),
    );
    //alterar

    //notifica alteracoes e implementa!
    notifyListeners();
  }
}
