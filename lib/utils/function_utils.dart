import 'dart:async';

///顶层防抖函数
typedef VoidCallback = void Function();
VoidCallback debounceCall(VoidCallback func, int milliseconds) {
  Timer? timer;
  return () {
    if (timer != null && timer!.isActive) timer!.cancel();
    timer = Timer(Duration(milliseconds: milliseconds), func);
  };
}

///节流函数
VoidCallback throttleCall(VoidCallback func, Duration delay) {
  Timer? timer;
  // 返回一个匿名函数，它包含了节流逻辑。
  return () {
    // 如果Timer已经激活了，我们不会再次调用函数。
    if (timer?.isActive ?? false) return;
    // 函数会立即被调用。
    func();
    // 再次调用前设置一个delay。
    timer = Timer(delay, () {
      // Timer完成后，允许再次调用函数。
      timer = null;
    });
  };
}
