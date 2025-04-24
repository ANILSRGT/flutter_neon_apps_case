import 'dart:math' as math;

import 'package:neon_apps_case/app/common/services/notification_service.dart';
import 'package:neon_apps_case/app/domain/repositories/met_museum_repo.dart';
import 'package:neon_apps_case/injection.dart';

final class DailyArtworkNotificationService {
  DailyArtworkNotificationService._init();
  static final DailyArtworkNotificationService _instance =
      DailyArtworkNotificationService._init();
  static DailyArtworkNotificationService get I => _instance;

  Future<void> showDailyArtworkNotification() async {
    final departmentRes =
        await Injection.I.read<MetMuseumRepo>().getDepartments();
    if (departmentRes.isFail) return;
    final departments = departmentRes.asSuccess.data;
    final random = math.Random();
    final randomDepartment =
        departments[random.nextInt(departments.length - 1)];
    await NotificationService.I.scheduleDailyNotification(
      title: randomDepartment.displayName,
      body: 'Explore the ${randomDepartment.displayName} department!',
      hour: 11,
      minute: 07,
    );
  }
}
