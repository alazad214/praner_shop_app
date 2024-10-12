import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

///successToast...
void successToast(String message) {
  toastification.show(
    title: const Text('Success'),
    description: Text(message),
    type: ToastificationType.success,
    icon: const Icon(Icons.check_circle),
    autoCloseDuration: const Duration(seconds: 3),
  );
}

///errorToast...
void errorToast(String message) {
  toastification.show(
    title: const Text('Error'),
    description: Text(message),
    type: ToastificationType.error,
    icon: const Icon(Icons.error),
    autoCloseDuration: const Duration(seconds: 3),
  );
}

///infoToast...
void infoToast(String message) {
  toastification.show(
    title: const Text('Info'),
    description: Text(message),
    type: ToastificationType.info,
    icon: const Icon(Icons.info),
    autoCloseDuration: const Duration(seconds: 3),
  );
}

///warningToast...
void warningToast(String message) {
  toastification.show(
    title: const Text('Warning'),
    description: Text(message),
    type: ToastificationType.warning,
    icon: const Icon(
      Icons.warning,
    ),
    autoCloseDuration: const Duration(seconds: 3),
  );
}
