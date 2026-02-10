// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'إيفنتلي';

  @override
  String get personalizeTitle => 'خصّص تجربتك';

  @override
  String get personalizeDescription =>
      'اختر المظهر واللغة المفضلين لديك لبدء تجربة مريحة ومخصصة تناسب أسلوبك.';

  @override
  String get language => 'اللغة';

  @override
  String get theme => 'المظهر';

  @override
  String get letsStart => 'ابدأ الآن';
}
