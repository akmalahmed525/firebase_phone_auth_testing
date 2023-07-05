part of 'toast.dart';

class ToastBar extends SnackBar {
  const ToastBar._({
    Key? key,
    required super.content,
    Duration duration = Durations.toastTimeInSec,
    Color? backgroundColor,
    SnackBarBehavior? behavior = SnackBarBehavior.floating,
  }) : super(
          key: key,
          duration: duration,
          backgroundColor: backgroundColor,
          behavior: behavior,
        );

  factory ToastBar.error({required String message}) {
    return ToastBar._(
      backgroundColor: AppColors.error,
      content: ToastContent(
        message: message,
        type: ToastType.error,
      ),
    );
  }

  factory ToastBar.success({required String message}) {
    return ToastBar._(
      backgroundColor: AppColors.success,
      content: ToastContent(
        message: message,
        type: ToastType.success,
      ),
    );
  }

  factory ToastBar.warning({required String message}) {
    return ToastBar._(
      backgroundColor: AppColors.warning,
      content: ToastContent(
        message: message,
        type: ToastType.warning,
      ),
    );
  }
}
