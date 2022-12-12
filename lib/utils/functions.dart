
import 'package:flutter/scheduler.dart';

void nextTick(Function callback, [int milliseconds = 0]) {
  SchedulerBinding.instance.addPostFrameCallback((_) {
    callback();
  });
}