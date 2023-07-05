part of 'toast.dart';

class ToastContent extends StatelessWidget {
  final ToastType type;
  final String message;
  const ToastContent(
      {Key? key, required this.message, this.type = ToastType.success})
      : super(key: key);

  Widget _getMessage(String message) {
    switch (type) {
      case ToastType.success:
        return Text(message).asBody().onSuccess();
      case ToastType.warning:
        return Text(message).asBody().onWarning();
      default:
        return Text(message).asBody().onError();
    }
  }

  Widget _getIcon(BuildContext context) {
    switch (type) {
      case ToastType.success:
        return Icon(
          Icons.check_circle_outline_rounded,
          color: context.actionColors.onSuccess,
        );
      case ToastType.warning:
        return Icon(
          Icons.warning_outlined,
          color: context.actionColors.onWarning,
        );
      default:
        return Icon(
          Icons.error_outline_rounded,
          color: context.actionColors.onError,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      visualDensity: const VisualDensity(vertical: -3),
      leading: _getIcon(context),
      title: _getMessage(message),
    );
  }
}
