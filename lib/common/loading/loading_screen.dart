import 'dart:async';
import 'package:baked_bliss/common/loading/loading_screen_controller.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class LoadingScreen {
  LoadingScreen._();
  static final LoadingScreen _instance = LoadingScreen._();
  factory LoadingScreen() => _instance;
  static LoadingScreen instance = _instance;

  LoadingScreenController? _controller;
  String _title = 'Loading...';
  Widget? _centerWidget;

  void show({
    required BuildContext context,
    String title = 'Loading...',
    Widget? centerWidget,
  }) {
    _title = title;
    _centerWidget = centerWidget ?? const CircularProgressIndicator();

    if (_controller?.update(_title, _centerWidget) ?? false) {
      return;
    } else {
      _controller = showOverlay(
          context: context, title: _title, centerWidget: _centerWidget);
      return;
    }
  }

  void hide() {
    _controller?.close();
    _controller = null;
  }

  void update({String? title, Widget? centerWidget}) {
    if (title != null) {
      _title = title;
    }
    if (centerWidget != null) {
      _centerWidget = centerWidget;
    }
    _controller?.update(_title, _centerWidget);
  }

  LoadingScreenController? showOverlay({
    required BuildContext context,
    required String title,
    Widget? centerWidget,
  }) {
    final loadingController = StreamController<Widget?>();
    loadingController.add(centerWidget);

    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    final overlayEntry = OverlayEntry(
      builder: (context) {
        return SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              const ModalBarrier(dismissible: false),
              Material(
                child: Container(
                  // alignment: Alignment.center,
                  padding: const EdgeInsets.all(16),
                  constraints: BoxConstraints(
                    maxWidth: size.width * 0.8,
                    maxHeight: size.height * 0.4,
                    minWidth: size.width * 0.6,
                    minHeight: size.height * 0.2,
                  ),
                  decoration: const BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      StreamBuilder<Widget?>(
                        stream: loadingController.stream,
                        builder: (context, snapshot) {
                          if (snapshot.hasData && snapshot.data != null) {
                            return Center(child: snapshot.data!);
                          } else {
                            return const CircularProgressIndicator();
                          }
                        },
                      ),
                      const SizedBox(height: 10),
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );

    Overlay.of(context).insert(overlayEntry);

    return LoadingScreenController(
      close: () {
        loadingController.close();
        overlayEntry.remove();
        return true;
      },
      show: (title, centerWidget) {
        loadingController.add(centerWidget);
        return;
      },
      update: (title, centerWidget) {
        loadingController.add(centerWidget);
        return true;
      },
    );
  }
}
