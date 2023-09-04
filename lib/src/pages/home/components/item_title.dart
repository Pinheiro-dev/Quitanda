// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:quitanda/src/Config/custom_colors.dart';

import 'package:quitanda/src/models/item_model.dart';

class ItemTitle extends StatelessWidget {
  final ItemModel item;

  const ItemTitle({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shadowColor: Colors.grey.shade300,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // --- Image --
            Expanded(child: Image.asset(item.imgUrl)),

            // --- Product name ---
            Text(
              item.itemName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            // --- Price / Unit ---
            Row(
              children: [
                Text(
                  item.price.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: CustomColors.customSwatchColor,
                  ),
                ),
                Text(
                  "/${item.unit.toString()}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.grey.shade500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
