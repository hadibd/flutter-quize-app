import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.home),
      title: const Text('Person'),
      centerTitle: true,
    );
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
