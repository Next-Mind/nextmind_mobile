import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:logger/web.dart';
import 'package:nextmind_mobile/data/repositories/dynamic_box/dynamic_box_repository.dart';
import 'package:nextmind_mobile/domain/models/dynamic_box/dynamic_box.dart';
import 'package:result_dart/result_dart.dart';

class DynamicBoxRepositoryLocal extends GetxController
    implements DynamicBoxRepository {
  static final _logger = Logger();
  @override
  AsyncResult<DynamicBox> getDynamicBoxContent() async {
    _logger.d('Fetching dynamic box content from local repository');
    final json = {
      'dynamicBoxTitle': 'Como você está se sentindo hoje?',
      'dynamicBoxContent': 'feeling_content',
    };
    return Success(
      DynamicBox.fromJson(json),
    );
  }

  @override
  AsyncResult<int> onHappinessButtonPressed(int index) async {
    _logger.d(
      'Happiness button pressed with index: $index',
    );
    return Success(index);
  }
}
