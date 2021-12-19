import 'package:flutter/widgets.dart';

import 'package:answers/src/pages/start_page.dart';
import 'package:answers/src/pages/home_page.dart';

Map<String, WidgetBuilder> getAplicationsRoutes() => <String, WidgetBuilder>{
      '/': (BuildContext context) => HomePage(),
      'startPage': (BuildContext context) => StartPage(),
    };
