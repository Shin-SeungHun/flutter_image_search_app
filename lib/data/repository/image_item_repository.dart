import '../model/image_item.dart';

abstract interface class ImageItemRepository {
  Future<List<ImageItem>> getImageItem(String query);
}


