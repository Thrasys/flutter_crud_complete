import 'package:button_animations/button_animations.dart';
import 'package:button_animations/constants.dart';
import 'package:feature_discovery/feature_discovery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud/components/user_tile.dart';
import 'package:flutter_crud/provider/users.dart';
import 'package:flutter_crud/views/profile.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';

class FeatureDiscoveryDemo extends StatefulWidget {
  @override
  _FeatureDiscoveryDemoState createState() => _FeatureDiscoveryDemoState();
}

class _FeatureDiscoveryDemoState extends State<FeatureDiscoveryDemo> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      home: FeatureDiscovery(
        recordStepsInSharedPreferences: false,
        child: UserList(),
      ),
    );
  }
}

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      FeatureDiscovery.discoverFeatures(context, <String>[
        'feature1',
        'feature2',
        'feature3',
        'feature4',
      ]);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
        appBar: NeumorphicAppBar(
          title: Text("Lista de Usuarios"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: users.count,
          itemBuilder: (ctx, i) => UserTile(users.all.elementAt(i)),
        ),
        floatingActionButton: NeumorphicFloatingActionButton(
          onPressed: () => _openPage(),
          child: Icon(Icons.engineering_rounded),
        ));
  }

  void _openPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => Profile()));
  }
}
