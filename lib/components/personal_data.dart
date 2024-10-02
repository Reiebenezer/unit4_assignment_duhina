import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PersonalData extends StatelessWidget {
  const PersonalData({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FixedColumnWidth(24),
        1: IntrinsicColumnWidth(),
        2: IntrinsicColumnWidth()
      },
      children: [
        _buildRow(PhosphorIcons.cake(PhosphorIconsStyle.fill), 'Birthdate', 'March 27, 2004'),
        _buildRow(PhosphorIcons.paperclip(PhosphorIconsStyle.fill), 'Email',
            'reiebenezer.duhina@wvsu.edu.ph'),
        _buildRow(PhosphorIcons.graduationCap(PhosphorIconsStyle.fill), 'College',
            'West Visayas State University'),
        _buildRow(PhosphorIcons.notebook(PhosphorIconsStyle.fill), 'Program',
            'Bachelor of Science in Computer Science'),
        _buildRow(PhosphorIcons.houseLine(PhosphorIconsStyle.fill), 'Permanent Address',
            'Yapo, Barbaza, Antique'),
      ],
    );
  }

  TableRow _buildRow(IconData icon, String label, String content) {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        child: Icon(icon, size: 16),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        child: Text(content),
      )
    ]);
  }
}
