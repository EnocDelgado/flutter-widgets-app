
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>( ( ref ) => false );

// inmutable color list
final colorListProvider = Provider( ( ref ) => colorList );

// simple int
final selectedColorProvider = StateProvider( ( ref ) => 0 );