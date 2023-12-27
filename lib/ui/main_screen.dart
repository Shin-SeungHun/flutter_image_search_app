import 'package:flutter/material.dart';
import 'package:image_search_app/ui/widget/image_item_widget.dart';

import '../data/model/image_item.dart';
import '../data/repository/image_item_repository.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController searchTextEditingController =
      TextEditingController();
  List<ImageItem> imageItems = [];
  final PixabayImageItemRepository repository = PixabayImageItemRepository();

  @override
  void dispose() {
    searchTextEditingController.dispose();
    super.dispose();
  }

  Future<void> searchImage(String query) async {
    imageItems = await repository.getImageItems(query);
    setState(() {});
    print(imageItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              TextField(
                controller: searchTextEditingController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.green,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(width: 2, color: Colors.green),
                  ),
                  labelText: '검색',
                  suffixIcon: IconButton(
                    onPressed: () =>
                        searchImage(searchTextEditingController.text),
                    icon: const Icon(
                      Icons.search,
                      color: Colors.cyan,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
