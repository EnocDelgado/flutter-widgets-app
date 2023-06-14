import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreem extends ConsumerWidget {

  static const name = 'counter_screen';

  const CounterScreem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref ) {

    final clickCouter = ref.watch( counterProvider );
    final isDarkMode = ref.watch( isDarkModeProvider );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            icon: Icon( isDarkMode ? Icons.light_mode_outlined : Icons.dark_mode_outlined  ),
            onPressed: (){

              ref.read( isDarkModeProvider.notifier ).update(
                ( state ) => !state
              );
            }, 
          )
        ],
      ),
      body: Center(
        
        child: Text('Value $clickCouter', style: Theme.of( context ).textTheme.titleLarge ),
      ),
       floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.add ),
        onPressed: (){
          // ref.read( counterProvider.notifier ).state++;
          ref.read( counterProvider.notifier ).update(
            ( counter ) => counter + 1
          );
        }, 
      ),
    );
  }
}