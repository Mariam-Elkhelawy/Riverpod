import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_package/riverpod_model.dart';

final isLightTheme = StateProvider<bool>((ref) => true);

final isLightTheme0 = ChangeNotifierProvider<RiverpodModel>((ref)=>RiverpodModel(isLight: true));


