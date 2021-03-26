import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud/models/user.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile(this.user);
  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? CircleAvatar(
            child: Icon(Icons.person),
          )
        : Neumorphic(
            style: NeumorphicStyle(
                shape: NeumorphicShape.convex,
                depth: 8,
                lightSource: LightSource.topLeft,
                color: Colors.grey),
            drawSurfaceAboveChild: true,
            child: Image(
              fit: BoxFit.scaleDown,
              width: 50,
              height: 50,
              image: NetworkImage(user.avatarUrl),
            ),
          );
    return ListTile(
        leading: avatar,
        title: Text(user.name),
        subtitle: Text(user.email),
        trailing: Container(
          width: 100,
          child: Row(
            children: [
              IconButton(
                  icon: Icon(Icons.edit), color: Colors.blue, onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.delete),
                  color: Colors.redAccent,
                  onPressed: () {}),
            ],
          ),
        ));
  }
}
