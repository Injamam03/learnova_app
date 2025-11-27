import 'package:flutter/material.dart';

class CustomTabHeader extends StatefulWidget {
  const CustomTabHeader({super.key});

  @override
  State<CustomTabHeader> createState() => _CustomTabHeaderState();
}

class _CustomTabHeaderState extends State<CustomTabHeader> {
  int selectedIndex = 0;


  final List<String> tabs = ["Trending", "New", "Following"];

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(tabs.length, (index) {
          bool isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Column(
              children: [
                Text(
                  tabs[index],
                  style: TextStyle(
                    fontSize: 18,
                    color: isSelected ? Colors.blue : Colors.grey,
                  ),
                ),
                SizedBox(height: 3),
                // underline for selected tab
                Container(
                  height: 3,
                  width: 80,
                  color: isSelected ? Colors.blue : Colors.transparent,
                )
              ],
            ),
          );
        }),
        );
    }
}