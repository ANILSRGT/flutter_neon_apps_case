import 'package:neon_apps_case/app/domain/models/department_model.dart';
import 'package:neon_apps_case/app/domain/models/met_object_model.dart';
import 'package:neon_apps_case/objectbox.g.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'met_artwork_object_box_mixin.dart';

final class ObjectBox with MetArtworkObjectBoxMixin {
  ObjectBox._init();
  static final ObjectBox _instance = ObjectBox._init();
  static ObjectBox get I => _instance;

  late final Store _store;

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    final path = p.join(dir.path, 'objectbox');
    _store = await openStore(directory: path);
    await _initMetArtworkBox(_store);
  }

  void close() {
    _store.close();
  }
}
