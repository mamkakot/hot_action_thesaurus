import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.test);
  runApp(ProviderScope(child: AppWidget()));
}

// TODO добавить локализацию