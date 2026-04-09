import "package:flutter/material.dart";

class ChipsWidget extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;
  final String value;
  final Color bg;


  const ChipsWidget({super.key, required this.color, required this.icon, required this.label, required this.value, required this.bg});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12), 
      decoration: BoxDecoration(
        color: bg.withAlpha(12),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.amber.withAlpha(64)),

      ),
      child: Row(
        children: [
          Icon(icon, size: 24, color: color,),
          SizedBox(width: 12,),
          Text(" $label : "),
          Text(" $value ", style: const TextStyle(fontWeight: .bold),),
        ],
      ),
    );
  }
}
