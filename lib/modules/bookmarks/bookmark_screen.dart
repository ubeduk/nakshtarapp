import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bookmark_controller.dart';

class BookmarkScreen
    extends GetView<BookmarkController> {

  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title:
        const Text("Bookmarks"),
      ),

      body: Obx(
            () => ListView.builder(
          itemCount:
          controller.bookmarks.length,

          itemBuilder: (_, index) {

            return ListTile(
              leading:
              const Icon(Icons.bookmark),
              title: Text(
                controller.bookmarks[index],
              ),
            );
          },
        ),
      ),
    );
  }
}