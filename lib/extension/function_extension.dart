// 扩展Function，添加防抖功能
import 'dart:async';

//Function 类型可以是任何函数，并不一定保证传给扩展方法的函数没有参数或者没有返回值
extension DebounceExtension on Function() {
  void Function() debounceFun([int milliseconds = 500]) {
    Timer? debounceTimer;
    return () {
      if (debounceTimer?.isActive ?? false) debounceTimer?.cancel();
      debounceTimer = Timer(Duration(milliseconds: milliseconds), ()=>this);
    };
  }
}

// 扩展Function，添加节流功能
extension ThrottleExtension on Function() {
  void Function() throttleFun([int milliseconds = 500]) {
    bool isAllowed = true;
    Timer? throttleTimer;
    return () {
      if (!isAllowed) return;
      isAllowed = false;
      this();
      throttleTimer?.cancel();
      throttleTimer = Timer(Duration(milliseconds: milliseconds), () {
        isAllowed = true;
      });
    };
  }
}
