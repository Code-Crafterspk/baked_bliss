import 'package:flutter/material.dart';

typedef CloseLoadingScreen = bool Function();
typedef ShowLoadingScreen = void Function(String? title, Widget loadingWidget);
typedef UpdateLoadingScreen = bool Function(
    String? title, Widget? loadingWidget);

@immutable
class LoadingScreenController {
  final CloseLoadingScreen close;
  final ShowLoadingScreen show;
  final UpdateLoadingScreen update;

  const LoadingScreenController({
    required this.close,
    required this.show,
    required this.update,
  });
}
