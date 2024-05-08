import "package:flutter/material.dart";

class CardItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function()? onTap;
  final Function()? onEdit;
  final Function()? onDelete;

  const CardItem({
    super.key,
    required this.title,
    required this.subtitle,
    this.onTap,
    this.onEdit,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        title: Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[500])),
        subtitle: Text(subtitle, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
      ),
    );
  }
}