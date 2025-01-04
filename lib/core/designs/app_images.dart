import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImages extends StatelessWidget {
  final String path;
  final double? height, width;
  final Color? color;
  final BoxFit fit;

  const AppImages(
      {super.key,
      required this.path,
      this.height,
      this.width,
      this.color,
      this.fit = BoxFit.scaleDown});

  @override
  Widget build(BuildContext context) {
    if (path.startsWith("http")) {
      return Image.network(path,
          height: height,
          width: width,
          color: color,
          fit: fit,
          errorBuilder: _errorWidget);
    } else if (path.endsWith("svg")) {
      return SvgPicture.asset(
        "asset/images/$path",
        height: height,
        width: width,
        fit: fit,
        colorFilter:
            ColorFilter.mode(color ?? Colors.transparent, BlendMode.srcIn),
      );
    }
    return Image.asset("asset/images/$path",
        height: height, color: color, fit: fit, errorBuilder: _errorWidget);
  }

  Widget _errorWidget(context, error, stacktrace) {
    return AppImages(
      path: "image_failed.png",
      height: 220,
    );
  }
}
