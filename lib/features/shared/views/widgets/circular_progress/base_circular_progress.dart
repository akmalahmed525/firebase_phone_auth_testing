part of 'circular_progress.dart';

abstract class BaseCircularProgress extends StatelessWidget {
  final bool? inverted;
  const BaseCircularProgress({super.key, this.inverted});

  Widget body(BuildContext context);

  @override
  Widget build(BuildContext context) => body(context);
}
