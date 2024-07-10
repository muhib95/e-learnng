import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar({required context,required title}) {
  return AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back)),
  title: Text(title),
    centerTitle: true,
  );
}
