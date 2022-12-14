typedef CloseLoadingScreen = bool Function();
typedef UpdateLoadngScreen = bool Function(String text);

class LoadingScreenController {
  final CloseLoadingScreen close;
  final UpdateLoadngScreen update;

  const LoadingScreenController({
    required this.close,
    required this.update,
  });
}
