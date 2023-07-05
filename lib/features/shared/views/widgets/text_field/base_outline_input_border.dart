part of 'text_field.dart';

class BaseOutlineInputBorder extends InputBorder {
  final BorderRadius borderRadius;

  const BaseOutlineInputBorder({
    BorderSide borderSide = BorderSide.none,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
  }) : super(borderSide: borderSide);

  @override
  InputBorder copyWith({BorderSide? borderSide, BorderRadius? borderRadius}) {
    return BaseOutlineInputBorder(
      borderSide: borderSide ?? this.borderSide,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  @override
  EdgeInsetsGeometry get dimensions =>
      EdgeInsets.only(bottom: borderSide.width);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..addRect(Rect.fromLTWH(rect.left, rect.top, rect.width,
          math.max(0.0, rect.height - borderSide.width)));
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()..addRRect(borderRadius.resolve(textDirection).toRRect(rect));
  }

  @override
  bool get isOutline => false;

  @override
  void paint(Canvas canvas, Rect rect,
      {double? gapStart,
      double gapExtent = 0.0,
      double gapPercentage = 0.0,
      TextDirection? textDirection}) {
    final Paint paint = borderSide.toPaint();
    final RRect outer = borderRadius.toRRect(rect);
    final RRect center = outer.deflate(borderSide.width / 2.0);
    canvas.drawRRect(center, paint);
  }

  @override
  ShapeBorder scale(double t) {
    return BaseOutlineInputBorder(borderSide: borderSide.scale(t));
  }

  @override
  ShapeBorder? lerpFrom(ShapeBorder? a, double t) {
    if (a is BaseOutlineInputBorder) {
      return BaseOutlineInputBorder(
        borderSide: BorderSide.lerp(a.borderSide, borderSide, t),
        borderRadius: BorderRadius.lerp(a.borderRadius, borderRadius, t)!,
      );
    }
    return super.lerpFrom(a, t);
  }

  @override
  ShapeBorder? lerpTo(ShapeBorder? b, double t) {
    if (b is BaseOutlineInputBorder) {
      return BaseOutlineInputBorder(
        borderSide: BorderSide.lerp(borderSide, b.borderSide, t),
        borderRadius: BorderRadius.lerp(borderRadius, b.borderRadius, t)!,
      );
    }
    return super.lerpTo(b, t);
  }
}
