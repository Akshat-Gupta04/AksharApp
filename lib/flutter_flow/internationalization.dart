import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi', 'pa', 'te', 'ta', 'bn'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hiText = '',
    String? paText = '',
    String? teText = '',
    String? taText = '',
    String? bnText = '',
  }) =>
      [enText, hiText, paText, teText, taText, bnText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'd39snm5w': {
      'en': 'Search User',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'gx7n4ftx': {
      'en': 'Search for users',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'hxfi0o86': {
      'en': 'Recent Users',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'eys85ujb': {
      'en': 'see all',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '5ne9iog0': {
      'en': 'Group Chat',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '0tel0hed': {
      'en': 'Create',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'menzaya4': {
      'en': 'AksharAi',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'mj21k8ub': {
      'en': 'Home',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // RecentUser
  {
    't3hcw0fv': {
      'en': 'Active Users',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'n1mtegi6': {
      'en': 'Search User',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '0lrf4y1o': {
      'en': 'Search for users',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '66i48dy7': {
      'en': 'Mummy',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'qe73y15c': {
      'en': 'gritu444@gmail.com',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'ckuoepzx': {
      'en': 'Mummy',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'nqep19ix': {
      'en': 'gritu444@gmail.com',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '4wvsx5xm': {
      'en': 'Mummy',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'd2bh6q85': {
      'en': 'gritu444@gmail.com',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'pq2lzahf': {
      'en': 'Mummy',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '3cjcg1qt': {
      'en': 'gritu444@gmail.com',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'ur9kkeo2': {
      'en': 'Home',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // chats
  {
    '4oxft6j6': {
      'en': 'type somehing',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'd1db7t96': {
      'en': 'Home',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // Setting
  {
    '2o2ipr7a': {
      'en': 'Edit Profile Pic',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'tsp18p55': {
      'en': 'Account Settings',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'r21kj7q0': {
      'en': 'Language Options',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'cdpzidaz': {
      'en': 'Log Out',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'dnvi65as': {
      'en': 'Profile',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '2ovpt7o2': {
      'en': '__',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // animtion
  {
    'dc6r4ypt': {
      'en': 'Home',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // login
  {
    'bc10wynd': {
      'en': 'Sign In',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '9wlvoiqh': {
      'en': 'Use the account below to sign in.',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'ttivdagc': {
      'en': 'Email',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'oux716fq': {
      'en': 'Password',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'qnn324n0': {
      'en': 'Sign In',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '5tqpp815': {
      'en': 'Forgot Password',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '1lzjyzs2': {
      'en': 'Or sign up with',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'yy397bug': {
      'en': 'Register',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '3jqd9zpl': {
      'en': 'Home',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // Register
  {
    'me2l9tru': {
      'en': 'Register',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'i1swichr': {
      'en': 'Use the account below to register.',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'x3r7lno7': {
      'en': 'Name',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'x3kxbmui': {
      'en': 'Email',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'vdc3ur7c': {
      'en': 'Password',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'govqndhq': {
      'en': 'Register',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '0rrm51nx': {
      'en': 'Already a user?',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'lfm1pxbx': {
      'en': 'Home',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // start_Animation
  {
    'i7sb5v8c': {
      'en': 'Home',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // assistantAi
  {
    't47ot4zt': {
      'en': 'Label here...',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'kn73iodi': {
      'en': 'Button',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'h7re2vdy': {
      'en': 'Home',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // chat_interface
  {
    'i1pwcz61': {
      'en': 'Group Chat',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '8osvnun7': {
      'en': 'Home',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // chat_addUser
  {
    'tsllruh8': {
      'en': 'Invite Friends',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '5iasfji3': {
      'en': 'Selected',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'ukqk38do': {
      'en': 'Invite Friends',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'e97g2xum': {
      'en': 'Select users from below to start a chat.',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '2j3p4vac': {
      'en': 'Home',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // image_Details
  {
    'xj8lputg': {
      'en': 'Home',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // PrimaryLangSelect
  {
    'jhti67bi': {
      'en': 'Primary Language',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '5uo6ggaw': {
      'en': 'Home',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // SecondaryLangSelect
  {
    '8iv5lwgt': {
      'en': 'Secondary Language',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'pm2ss8aj': {
      'en': 'Home',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // Primary_Language
  {
    'l4o57wmo': {
      'en': 'Choose your first languge',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '0ck0cxdh': {
      'en': 'English',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'cfiwayms': {
      'en': 'हिंदी  (Hindi)',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'adxotwx9': {
      'en': 'English',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '12lqtcwq': {
      'en': 'ਪੰਜਾਬੀ  (Punjabi)',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '4nsvpwb5': {
      'en': 'తెలుగు  (Telugu)',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'y4jxiidi': {
      'en': 'বাংলা  (Bangla)',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'rpjuqw0j': {
      'en': 'தமிழ்  (Tamil)',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '823b9wm1': {
      'en': 'Next',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // chat_Setting
  {
    'txm40tis': {
      'en': 'View',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'fuv4rbpt': {
      'en': 'Translate',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'c7dhakjp': {
      'en': 'Search',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '7dpb27c9': {
      'en': 'Delete',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // Secondary_Language
  {
    'a05kb581': {
      'en': 'Choose your alternative languge',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'm0jntuhq': {
      'en': 'English',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'mse710rl': {
      'en': 'हिंदी  (Hindi)',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'xb8maa17': {
      'en': 'English',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'edbw7t5q': {
      'en': 'ਪੰਜਾਬੀ  (Punjabi)',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'tnof8tba': {
      'en': 'తెలుగు  (Telugu)',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'tzleoeeh': {
      'en': 'বাংলা  (Bangla)',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'c7ggfbez': {
      'en': 'தமிழ்  (Tamil)',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'ci1uki0i': {
      'en': 'Next',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // DarkLightSwitch
  {
    'hmx7dtwq': {
      'en': 'Light Mode',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'pr5wlia2': {
      'en': 'Dark Mode',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // Generate_Text
  {
    '00v2afo1': {
      'en': 'AksharAI',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'zba7f6wt': {
      'en': 'Text',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'v4pmvzvu': {
      'en': 'Text',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'u440vbyr': {
      'en': 'Image',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'nliy1c1p': {
      'en': 'Generate From',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'n2hoa59a': {
      'en': 'Label here...',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // aksharAi_INTRO
  {
    '64l1qrbi': {
      'en': 'AksharAI',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'upfqok40': {
      'en': 'Text',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'x5c85iko': {
      'en': 'Image',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '5cnuqcbi': {
      'en': 'Generate From',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'hwvso7vz': {
      'en':
          'AksharAI  is a powerfull AI assistant powered by Google\'s Gemini which can easily answer your question and generates images too ',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // Generate_Image
  {
    'fo442e95': {
      'en': 'AksharAI',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'pzucgr05': {
      'en': 'Image ',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '1b94bk81': {
      'en': 'Text',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'pz2bhgye': {
      'en': 'Image ',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '40k6sx06': {
      'en': 'Generate from',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'zm28n3rc': {
      'en': 'Label here...',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // chat_Setting_Overlay
  {
    'vu4b712a': {
      'en': 'Chat Details',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'jg9zqol6': {
      'en': 'Group Chat ID: ',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '851drton': {
      'en': 'In this chat',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'hyvnua8c': {
      'en': 'Close',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // chat_Component
  {
    'zljrmqlc': {
      'en': 'Start typing here...',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'nm6flly2': {
      'en': 'You must enter a message...',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'depzx262': {
      'en': 'Please choose an option from the dropdown',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // user_ListSmall
  {
    'xpittvnb': {
      'en': 'ME',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // deleteDialog
  {
    'p4e5a30u': {
      'en': 'Chat Settings',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'thqvsvt3': {
      'en': 'Language Setting',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'jo7lwk7j': {
      'en': 'Options',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'smy8hehj': {
      'en': 'Invite Users',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'mn7p878h': {
      'en': 'Delete Chat',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'sbj0gi2f': {
      'en': 'Confirm Delete',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'z4ta2494': {
      'en': 'You can\'t undo this action.',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '6464jnvw': {
      'en': 'Delete',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
  // Miscellaneous
  {
    'guy0hptf': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'ois8yn8h': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '5abnovat': {
      'en': 'Allow this app access to photp library to share media',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'ojb9z904': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'rp18nfyr': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'vg4gxtaf': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'ogsavz2g': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'n8cepfws': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'vehm6crc': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'orukk9p3': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'k6u1iwuz': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '4m0smhfy': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'zgbtblam': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '1zegld0s': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'fixl5up3': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '10312oal': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '7ikpv620': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '80dxzyrr': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'k8o2kmqa': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'yivrdz8l': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'l9cdep0v': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'uq9k0o2b': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '0isqevvq': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'j79i425h': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'kcpcdmd9': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'muyx4j24': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    '5qz6dmdb': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
    'jar3hggq': {
      'en': '',
      'bn': '',
      'hi': '',
      'pa': '',
      'ta': '',
      'te': '',
    },
  },
].reduce((a, b) => a..addAll(b));
