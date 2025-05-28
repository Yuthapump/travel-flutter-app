import 'package:flutter/material.dart';

class FilterChipsRow extends StatefulWidget {
  const FilterChipsRow({super.key});

  @override
  State<FilterChipsRow> createState() => _FilterChipsRowState();
}

class _FilterChipsRowState extends State<FilterChipsRow> {
  String selectedFilter = "Asia"; // ค่าเริ่มต้น

  final List<String> filters = [
    "Asia",
    "Europe",
    "South America",
    "South Asia",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            filters.map((filter) {
              final isSelected = selectedFilter == filter;
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: ActionChip(
                  label: Text(
                    filter,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                  backgroundColor: isSelected ? Colors.black : Colors.grey[200],
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  onPressed: () {
                    setState(() {
                      selectedFilter = filter;
                    });
                  },
                ),
              );
            }).toList(),
      ),
    );
  }
}
