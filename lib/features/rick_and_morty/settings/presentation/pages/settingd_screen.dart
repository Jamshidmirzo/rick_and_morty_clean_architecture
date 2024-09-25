import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/features/rick_and_morty/settings/presentation/pages/blocs/cubit/theme_cubit.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: BlocBuilder<ThemeCubit, bool>(
        builder: (context, isDarkTheme) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(
                    Icons.dark_mode,
                    size: 40,
                  ),
                  trailing: Switch(
                    value: isDarkTheme,  
                    onChanged: (value) {
                      context.read<ThemeCubit>().changeTheme(value);  
                      if (value) {
                        AdaptiveTheme.of(context).setDark();  
                      } else {
                        AdaptiveTheme.of(context).setLight();  
                      }
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
