import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/features/settings/presentation/blocs/cubit/theme_cubit.dart';

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
      body: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, isDarkTheme) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    ThemeData.dark() == isDarkTheme
                        ? Icons.dark_mode
                        : Icons.light_mode,
                    size: 40,
                  ),
                  trailing: Switch(
                    value: ThemeData.dark() == isDarkTheme,
                    onChanged: (value) {
                      if (value) {
                        context.read<ThemeCubit>().changeTheme(Brightness.dark);
                      } else {
                        context
                            .read<ThemeCubit>()
                            .changeTheme(Brightness.light);
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
