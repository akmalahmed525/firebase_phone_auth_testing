String formattedTime(int seconds) {
  final timeArray = '${(Duration(seconds: seconds))}'.split('.')[0].split(':');
  return '${timeArray[1]}:${timeArray[2]}';
}
