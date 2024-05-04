import 'package:package_info_plus/package_info_plus.dart';

class AppInfo {
  AppInfo._();
  static AppInfo? _instance;
  static AppInfo get instance => _instance ??= AppInfo._();

  String? _appName;
  String get appName => _appName ?? 'Unknown';
  String? _packageName;
  String get packageName => _packageName ?? 'Unknown';
  String? _version;
  String get version => _version ?? 'Unknown';
  String? _buildNumber;
  String get buildNumber => _buildNumber ?? 'Unknown';
  String? _buildSignature;
  String get buildSignature => _buildSignature ?? 'Unknown';
  String? _installerStore;
  String get installerStore => _installerStore ?? 'Unknown';

  static Future<void> initialize() async {
    final info = await PackageInfo.fromPlatform();
    instance._appName = info.appName;
    instance._packageName = info.packageName;
    instance._version = info.version;
    instance._buildNumber = info.buildNumber;
    instance._buildSignature = info.buildSignature;
    instance._installerStore = info.installerStore;
  }
}
