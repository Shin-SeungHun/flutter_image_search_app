import 'package:flutter/material.dart';
import 'package:image_search_app/ui/widget/image_item_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.green,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(width: 2, color: Colors.green),
                  ),
                  labelText: '검색',
                  suffixIcon: IconButton(
                    onPressed: null,
                    icon: Icon(
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
