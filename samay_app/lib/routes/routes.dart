import 'package:flutter/material.dart';
import 'package:samay_app/pages/chat_page.dart';
import 'package:samay_app/pages/home_page.dart';
import 'package:samay_app/pages/loading_page.dart';
import 'package:samay_app/pages/login_page.dart';
import 'package:samay_app/pages/register_page.dart';
import 'package:samay_app/pages/info_page.dart';
import 'package:samay_app/widgets/inputs_screen.dart';

import '../pages/usuarios_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  'usuario': (_) => UsuariosPage(),
  'chat': (_) => ChatPage(),
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'loading': (_) => LoadingPage(),
  'home': (_) => HomePage(),
  'input': (_) => InputScreen(),
  'info': (_) => InfoPage(),
};
