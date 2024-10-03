import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:rick_and_morty/gen/localization_keys.dart';
import 'package:rick_and_morty/gen/localization_overrides.dart';
import 'package:sprintf/sprintf.dart';

//============================================================//
//THIS FILE IS AUTO GENERATED. DO NOT EDIT//
//============================================================//

typedef LocaleFilter = bool Function(String languageCode);

class Localization {
  LocaleFilter? localeFilter;

  var _localisedValues = <String, dynamic>{};
  var _localisedOverrideValues = <String, dynamic>{};

  static Localization of(BuildContext context) => Localizations.of<Localization>(context, Localization)!;

  /// The locale is used to get the correct json locale.
  /// It can later be used to check what the locale is that was used to load this Localization instance.
  final Locale? locale;

  Localization({required this.locale});

  static Future<Localization> load({
    required Locale locale, 
    LocalizationOverrides? localizationOverrides,
    bool showLocalizationKeys = false,
    bool useCaching = true,
    AssetBundle? bundle,
    }) async {
    final localizations = Localization(locale: locale);
    if (showLocalizationKeys) {
      return localizations;
    }
    if (localizationOverrides != null) {
      final overrideLocalizations = await localizationOverrides.getOverriddenLocalizations(locale);
      localizations._localisedOverrideValues = overrideLocalizations;
    }
    final jsonContent = await (bundle ?? rootBundle).loadString('assets/translations/${locale.toLanguageTag()}.json', cache: useCaching);
    localizations._localisedValues = json.decode(jsonContent) as Map<String, dynamic>;
    return localizations;
  }

  String _t(String key, {List<dynamic>? args}) {
    try {
      final value = (_localisedOverrideValues[key] ?? _localisedValues[key]) as String?;
      if (value == null) return key;
      if (args == null || args.isEmpty) return value;
      return sprintf(value, args);
    } catch (e) {
      return '⚠$key⚠';
    }
  }

  /// Translations:
  ///
  /// en:  **'Search'**
  String get src => _t(LocalizationKeys.src);

  /// Translations:
  ///
  /// en:  **'Filter By Sort'**
  String get fltrbysort => _t(LocalizationKeys.fltrbysort);

  /// Translations:
  ///
  /// en:  **'Filter By Species'**
  String get fltrbyspc => _t(LocalizationKeys.fltrbyspc);

  /// Translations:
  ///
  /// en:  **'Filter By Sort'**
  String get fltrbygender => _t(LocalizationKeys.fltrbygender);

  /// Translations:
  ///
  /// en:  **'Locations'**
  String get lcs => _t(LocalizationKeys.lcs);

  /// Translations:
  ///
  /// en:  **'Filter By Type'**
  String get fltrbytype => _t(LocalizationKeys.fltrbytype);

  /// Translations:
  ///
  /// en:  **'Filter By Dimension'**
  String get fltrbydmsn => _t(LocalizationKeys.fltrbydmsn);

  /// Translations:
  ///
  /// en:  **'Settings'**
  String get sttngs => _t(LocalizationKeys.sttngs);

  /// Translations:
  ///
  /// en:  **'Characters'**
  String get charc => _t(LocalizationKeys.charc);

  /// Translations:
  ///
  /// en:  **'English'**
  String get en => _t(LocalizationKeys.en);

  /// Translations:
  ///
  /// en:  **'Russian'**
  String get ru => _t(LocalizationKeys.ru);

  /// Translations:
  ///
  /// en:  **'Uzbek'**
  String get uz => _t(LocalizationKeys.uz);

  /// Translations:
  ///
  /// en:  **'Language'**
  String get lng => _t(LocalizationKeys.lng);

  /// Translations:
  ///
  /// en:  **'Character Info'**
  String get charcinfo => _t(LocalizationKeys.charcinfo);

  /// Translations:
  ///
  /// en:  **'Gender'**
  String get gender => _t(LocalizationKeys.gender);

  /// Translations:
  ///
  /// en:  **'Species'**
  String get species => _t(LocalizationKeys.species);

  /// Translations:
  ///
  /// en:  **'Status'**
  String get status => _t(LocalizationKeys.status);

  /// Translations:
  ///
  /// en:  **'Episode'**
  String get episode => _t(LocalizationKeys.episode);

  /// Translations:
  ///
  /// en:  **'Location'**
  String get location => _t(LocalizationKeys.location);

  /// Translations:
  ///
  /// en:  **'Dimension'**
  String get dimension => _t(LocalizationKeys.dimension);

  /// Translations:
  ///
  /// en:  **'Name'**
  String get name => _t(LocalizationKeys.name);

  /// Translations:
  ///
  /// en:  **'Type'**
  String get type => _t(LocalizationKeys.type);

  /// Translations:
  ///
  /// en:  **'Date'**
  String get date => _t(LocalizationKeys.date);

  /// Translations:
  ///
  /// en:  **'Residents'**
  String get restd => _t(LocalizationKeys.restd);

  /// Translations:
  ///
  /// en:  **'Created'**
  String get created => _t(LocalizationKeys.created);

  /// Translations:
  ///
  /// en:  **'Air Date'**
  String get airDate => _t(LocalizationKeys.airDate);

  String getTranslation(String key, {List<dynamic>? args}) => _t(key, args: args ?? <dynamic>[]);

}
