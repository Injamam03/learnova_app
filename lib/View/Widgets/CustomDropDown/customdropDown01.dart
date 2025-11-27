import 'package:flutter/material.dart';

import '../../../Utils/AppColors/app_colors.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({super.key});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  bool isOpen = false;
  String selectedValue = "Friends";

  final List<String> items = [
    "Instagram",
    "Medium",
    "Threads",
    "Friends",
    "School",
    "Teacher",
    "Others",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: [
            // ------------ Top Dropdown Field ------------
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
      
            // ------------ Dropdown List ------------
            if (isOpen)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.white200,
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
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            child: Text(
                              item,
                              style: TextStyle(
                                fontSize: 16,
                                color: isSelected ? AppColor.white200 : AppColor.black600,
                              ),
                            ),
                          ),
                        ),
                        // Divider
                        if (item != items.last)
                          Divider(
                            thickness: 0.4,
                            color: Colors.blue,
                          ),
                      ],
                    );
                  }).toList(),
                ),
              )
              ],
          ),
    );
    }
}