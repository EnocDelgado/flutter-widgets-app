
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>( ( ref ) => false );

// inmutable color list
final colorListProvider = Provider( ( ref ) => colorList );

// simple int
final selectedColorProvider = StateProvider( ( ref ) => 0 );





// Apptheme Custom Object
final themeNotifierProvider = StateNotifierProvider<ThemeController, AppTheme>( 
  // Initialize an instance
  ( ref ) => ThemeController(),
);


// Controller or nOTIFIER
class ThemeController extends StateNotifier<AppTheme> {

  ThemeController(): super( AppTheme() );

  void toggleDarkMode() {
    state = state.copyWith( isDarkmode: !state.isDarkMode );
  }

  void changeColorIndex( int colorIndex ) {
    state = state.copyWith( selectedColor: colorIndex );
  }

}