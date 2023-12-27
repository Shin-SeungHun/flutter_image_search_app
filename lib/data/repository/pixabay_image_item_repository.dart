import 'package:image_search_app/data/mapper/image_mapper.dart';

import '../data_source/pixabay_api.dart';
import '../dto/pixabay_dto.dart';
import '../model/image_item.dart';
import 'interface/image_item_repository.dart';

class PixabayImageItemRepository implements ImageItemRepository {
  final PixabayApi _api = PixabayApi();

  @override
  Future<List<ImageItem>> getImageItems(String query) async {
    final PixabayDto dto = await _api.getImagesResult(query);

    if (dto.hits == null) {
      return [];
    }

    return dto.hits!.map((e) => e.toImageItem()).toList();
  }
}