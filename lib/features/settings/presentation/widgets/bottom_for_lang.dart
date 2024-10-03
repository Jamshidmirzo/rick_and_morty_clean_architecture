import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/extensions/extension.dart';
import 'package:rick_and_morty/features/settings/presentation/blocs/cubit/localization%20cubit/cubit/local_cubit.dart';
import 'package:rick_and_morty/features/settings/presentation/blocs/cubit/localization%20cubit/cubit/local_state.dart';
import 'package:rick_and_morty/features/settings/presentation/widgets/button_for_lang.dart';

class Bottomforlang extends StatefulWidget {
  const Bottomforlang({super.key});

  @override
  State<Bottomforlang> createState() => _BottomforlangState();
}

class _BottomforlangState extends State<Bottomforlang> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalCubit, LocalState>(
      builder: (context, locale) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.tr('lng'),
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            ButtonForLang(
                onTap: () {
                  context.read<LocalCubit>().changeLocale('uz');
                  context.setLocale(const Locale('uz'));

                  Navigator.pop(context);
                },
                isLang: Localizations.localeOf(context).languageCode == 'uz',
                text: context.tr('uz'),
                assetPath: 'assets/images/uz.png'),
            ButtonForLang(
                onTap: () {
                  context.read<LocalCubit>().changeLocale('ru');
                  context.setLocale(const Locale('ru'),);
                  Navigator.pop(context);
                },
                isLang: Localizations.localeOf(context).languageCode == 'ru',
                text: context.tr('ru'),
                assetPath: 'assets/images/rub.png'),
            ButtonForLang(
                onTap: () {
                  context.read<LocalCubit>().changeLocale('en');
                  context.setLocale(const Locale('en'));

                  Navigator.pop(context);
                },
                isLang: Localizations.localeOf(context).languageCode == 'en',
                text: context.tr('en'),
                assetPath: 'assets/images/gbp.png'),
            20.sH(),
          ],
        );
      },
    );
  }
}
