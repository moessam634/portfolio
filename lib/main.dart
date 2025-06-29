import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/theme/theme_cubit/theme_cubit.dart';
import 'my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // debugPaintSizeEnabled = true;
  runApp(
    BlocProvider(
      create: (BuildContext context) => ThemeCubit(),
      child: const MyApp(),
    ),
  );
}
