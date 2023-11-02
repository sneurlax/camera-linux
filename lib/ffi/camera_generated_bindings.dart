// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

/// Holds bindings to camera_linux
class camera_linux {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  camera_linux(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  camera_linux.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void setFrameCallback(
    NewFrameCallbackNative callback,
  ) {
    return _setFrameCallback(
      callback,
    );
  }

  late final _setFrameCallbackPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(NewFrameCallbackNative)>>(
          'setFrameCallback');
  late final _setFrameCallback =
      _setFrameCallbackPtr.asFunction<void Function(NewFrameCallbackNative)>();

  void runVideoCapture() {
    return _runVideoCapture();
  }

  late final _runVideoCapturePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('runVideoCapture');
  late final _runVideoCapture =
      _runVideoCapturePtr.asFunction<void Function()>();

  void startVideoCaptureInThread() {
    return _startVideoCaptureInThread();
  }

  late final _startVideoCaptureInThreadPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>(
          'startVideoCaptureInThread');
  late final _startVideoCaptureInThread =
      _startVideoCaptureInThreadPtr.asFunction<void Function()>();

  void stopVideoCapture() {
    return _stopVideoCapture();
  }

  late final _stopVideoCapturePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('stopVideoCapture');
  late final _stopVideoCapture =
      _stopVideoCapturePtr.asFunction<void Function()>();

  ffi.Pointer<ffi.Uint8> getLatestFrameBytes(
    ffi.Pointer<ffi.Int> length,
  ) {
    return _getLatestFrameBytes(
      length,
    );
  }

  late final _getLatestFrameBytesPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Uint8> Function(
              ffi.Pointer<ffi.Int>)>>('getLatestFrameBytes');
  late final _getLatestFrameBytes = _getLatestFrameBytesPtr
      .asFunction<ffi.Pointer<ffi.Uint8> Function(ffi.Pointer<ffi.Int>)>();
}

typedef NewFrameCallbackNative = ffi.Pointer<
    ffi.NativeFunction<
        ffi.Void Function(ffi.Pointer<ffi.Uint8> data, ffi.Int length)>>;