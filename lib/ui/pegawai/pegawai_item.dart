import 'package:fahrianggara_10220009/model/pegawai.dart';
import 'package:fahrianggara_10220009/ui/pegawai/pegawai_detail.dart';
import 'package:fahrianggara_10220009/components/card_item.dart';
import 'package:flutter/material.dart';

class PegawaiItem extends StatelessWidget {
  final Pegawai pegawai;
  const PegawaiItem({
    super.key, 
    required this.pegawai
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CardItem(title: "Pegawai", subtitle: pegawai.nama),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => PegawaiDetail(pegawai: pegawai)));
      },
    );
  }
}
