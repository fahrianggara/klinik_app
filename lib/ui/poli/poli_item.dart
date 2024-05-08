import 'package:fahrianggara_10220009/model/poli.dart';
import 'package:fahrianggara_10220009/ui/poli/poli_detail.dart';
import 'package:fahrianggara_10220009/components/card_item.dart';
import 'package:flutter/material.dart';

class PoliItem extends StatelessWidget {
  final Poli poli;
  const PoliItem({super.key, required this.poli});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CardItem(title: "Poli", subtitle: poli.nama),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
      },
    );
  }
}
