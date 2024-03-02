import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/options/options.dart';

part 'options_page_provider.g.dart';

@riverpod
class OptionsPage extends _$OptionsPage {
  @override
  Future<Options> build() async {
    return Options.defaultOptions();
  }

  Future<void> updateOptions(Options newOptions) async {
    state = AsyncData(newOptions);
  }
}
