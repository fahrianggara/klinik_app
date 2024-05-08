import 'package:fahrianggara_10220009/model/pasien.dart';
import 'package:fahrianggara_10220009/ui/pasien/pasien_detail.dart';
import 'package:fahrianggara_10220009/components/card_item.dart';
import 'package:flutter/material.dart';

class PasienItem extends StatelessWidget {
  final Pasien pasien;
  const PasienItem({
    super.key, 
    required this.pasien
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CardItem(title: "Pasien", subtitle: pasien.nama),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => PasienDetail(pasien: pasien)));
      },
    );
  }
}
