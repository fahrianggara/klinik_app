import 'package:flutter/material.dart';

class Header extends StatefulWidget implements PreferredSizeWidget {
  const Header({
    super.key,
    required this.title,
    this.actions,
  });

  final String title;
  final List<Widget>? actions;

  @override
  State<StatefulWidget> createState() => _HeaderState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
      title: Text(
        widget.title, 
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 19)
      ),
      actions: widget.actions,
    );
  }
}
