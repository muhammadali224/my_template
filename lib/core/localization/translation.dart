import 'package:get/get.dart';

import 'language/ar.dart';
import 'language/en.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': arTranslate,
        'en': enTranslate,
      };
}
