import 'package:flutter/material.dart';

SnackBar buildErrorWidget(String message) {
  return SnackBar(
    content: Text(
      message,
      style: const TextStyle(),
    ),
    duration: const Duration(seconds: 3),
  );
}
