import 'package:flutter/material.dart';

Widget PlaylistWiget() {
  return ListView.builder(
    itemCount: 5,
    itemBuilder: (context, index) {
      return ListTile(
        leading: CircleAvatar(
          child: Icon(
            Icons.play_circle_outline,
            color: Colors.white,
            weight: 12.0,
          ),
        ),
        title: Text('Muhib'),
        subtitle: Text('Do this'),
      );
    },
  );
}
