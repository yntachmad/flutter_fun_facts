import 'package:flutter/material.dart';
import 'package:fun_facts/screens/providers/theme_provider.dart';
import 'package:fun_facts/widgets/theme_switcher.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings Text"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ThemeSwitcher(),
          ElevatedButton(
            onPressed: () {
              themeProvider.updateStringData(data: "Hallo From Global State");
            },
            child: Text("Update Global Stae Value"),
          ),
          Text(themeProvider.dataToUpdate)
        ],
      ),
    );
  }
}
