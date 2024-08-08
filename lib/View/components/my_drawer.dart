import 'package:flutter/material.dart';

import '../../Utils/colors.dart';
import 'topbar.dart';

class MyDrawer extends StatelessWidget {
  final ScrollController sc;
  const MyDrawer({super.key, required this.sc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: textColor,
          ),
        ),
      ),
      body: Center(child: TopBar(sc: sc)),
    );
  }
}
