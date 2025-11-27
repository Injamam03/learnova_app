import 'package:flutter/material.dart';

class Dropdwonprimary extends StatefulWidget {
  const Dropdwonprimary({super.key});

  @override
  State<Dropdwonprimary> createState() => _DropdwonprimaryState();
}

class _DropdwonprimaryState extends State<Dropdwonprimary> {
  bool isOpen = false;
  String selectedValue = "primary 5";

  final List<String> items = [
    "primary 1",
    "primary 2",
    "primary 3",
    "primary 4",
    "primary 5",
    "primary 6",
    "From 1",
    "From 2",
    "From 3",
    "From 4",
    "From 5",
    "From 6",

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [

          GestureDetector(
            onTap: () {
              setState(() {
                isOpen = !isOpen;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedValue,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Icon(
                    isOpen ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                    size: 26,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 10),


          if (isOpen)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color:Colors.white70,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: Column(
                children: items.map((item) {
                  final bool isSelected = item == selectedValue;

                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedValue = item;
                            isOpen = false;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            item,
                            style: TextStyle(
                              fontSize: 16,
                              color: isSelected ? Colors.black12: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                      // Divider
                      if (item != items.last)
                        Divider(
                          thickness: 0.4,
                          color: Colors.grey.shade300,
                        ),
                    ],
                  );
                }).toList(),
              ),
            )
            ],
        );
    }
}