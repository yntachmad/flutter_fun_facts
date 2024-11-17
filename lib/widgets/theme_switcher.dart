import 'package:flutter/material.dart';
import 'package:fun_facts/screens/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({super.key});

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Theme Mode",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Switch(
                value: themeProvider.isDarkModeChecked,
                onChanged: (value) {
                  themeProvider.updateBoolianData(dataBoolian: value);
                },
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                  themeProvider.isDarkModeChecked ? "Dark Mode" : "Light Mode"),
            ],
          )
        ],
      ),
    );
  }
}
