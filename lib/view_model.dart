import 'package:flutter_riverpod/flutter_riverpod.dart';

//////////////////////////////////////////////////////////////////////

final areaOpenProvider =
    StateNotifierProvider.autoDispose<AreaOpenStateNotifier, bool>((ref) {
  return AreaOpenStateNotifier(false);
});

class AreaOpenStateNotifier extends StateNotifier<bool> {
  AreaOpenStateNotifier(bool state) : super(state);

  ///
  void toggleOpen() async {
    state = !state;
  }
}

//////////////////////////////////////////////////////////////////////
