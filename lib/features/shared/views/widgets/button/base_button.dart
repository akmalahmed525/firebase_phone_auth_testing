part of 'button.dart';

abstract class BaseAppButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final bool? isInverted;
  final bool? isTextButton;

  const BaseAppButton(
      {super.key,
      required this.label,
      required this.onPressed,
      this.isInverted,
      this.isTextButton});

  Widget body(BuildContext context);

  @override
  Widget build(BuildContext context) => body(context);
}
