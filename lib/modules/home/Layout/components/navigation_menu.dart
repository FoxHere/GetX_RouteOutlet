import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key, required this.delegate});
  final GetDelegate delegate;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 272,
      color: Colors.grey[100],
      child: ListView(
        children: [
          ListTile(
            leading: const Text('Page A'),
            onTap: () {
              delegate.toNamed('/home/page_a');
            },
          ),
          ListTile(
            leading: const Text('Page B'),
            onTap: () {
              delegate.toNamed('/home/page_b');
            },
          ),
          ListTile(
            leading: const Text('Page C'),
            onTap: () {
              delegate.toNamed('/home/page_c');
            },
          ),
          ListTile(
            leading: const Text('Logout'),
            onTap: () {
              delegate.toNamed('/splash');
            },
          ),
        ],
      ),
    );
  }
}
