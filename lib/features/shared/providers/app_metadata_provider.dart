import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_metadata_provider.g.dart';

@riverpod
class AppMetadata extends _$AppMetadata {
  @override
  Future<PackageInfo> build() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo;
  }
}
