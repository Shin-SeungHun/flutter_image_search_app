import 'package:image_search_app/data/data_source/pixabay_api.dart';
import '../model/image_item.dart';

abstract interface class ImageItemRepository {
  Future<List<ImageItem>> getImageItem(String query);
}

class PixabayImageItemRepository implements ImageItemRepository {
  final PixabayApi _api = PixabayApi();

  @override
  Future<List<ImageItem>> getImageItem(String query) {
    // TODO: implement getImageItem
    throw UnimplementedError();
  }


}
