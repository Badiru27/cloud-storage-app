import 'package:cloud_ui/cloud_ui.dart';
import 'package:flutter/material.dart';

class StackImages extends StatelessWidget {
  final List<String> urlImages;
  const StackImages({required this.urlImages, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    final items = urlImages.map((url) {
      return ClipOval(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ClipOval(
            child: url != ''? Image.asset(
              url,
              fit: BoxFit.cover,
            ): ClipOval(
              child: Container(
                height: 30,
                width: 30,
                color: kcWhiteColor,
                child: const Center(child: Text('+')),
              ),
            ),
          ),
        ),
      );
    }).take(4).toList();

    final allItems = items.asMap()
        .map((index, item) {
      final value =  Container(
        width: 30,
        height: 30,
        child: item,
        margin: EdgeInsets.only(left: 20 * index.toDouble()),
      );
      return MapEntry(index, value);
    }).values
        .toList();

    return Stack(
      children: allItems,
    );
  }
}