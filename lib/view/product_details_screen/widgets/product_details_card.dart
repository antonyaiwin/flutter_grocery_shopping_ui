import 'package:flutter/material.dart';
import 'package:flutter_ui_task_20_march/model/product_model.dart';

import 'elevated_card.dart';

class ProductDetailsCard extends StatelessWidget {
  const ProductDetailsCard({super.key, required this.item});
  final ProductModel item;
  @override
  Widget build(BuildContext context) {
    return ElevatedCard(
      padding: EdgeInsets.zero,
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15).copyWith(bottom: 0),
            child:
                Text('Details', style: Theme.of(context).textTheme.titleMedium),
          ),
          const Divider(
            color: Colors.black12,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Table(
              children: [
                getTableRow(
                  context: context,
                  columnText1: 'Brand',
                  columnText2: item.brandName,
                ),
                getTableRow(
                  context: context,
                  columnText1: 'Type',
                  columnText2: item.type,
                ),
                getTableRow(
                  context: context,
                  columnText1: 'Quantity',
                  columnText2: item.quantity,
                ),
                getTableRow(
                  context: context,
                  columnText1: 'Shelf Life',
                  columnText2: item.shelfLife,
                ),
                getTableRow(
                  context: context,
                  columnText1: 'Organic',
                  columnText2: item.organic ? 'Yes' : 'No',
                ),
                getTableRow(
                  context: context,
                  columnText1: 'Flavor',
                  columnText2: item.flavor,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
              right: 20,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'More Details',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.green.shade700,
                        fontWeight: FontWeight.w900,
                      ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  TableRow getTableRow({
    required BuildContext context,
    required String columnText1,
    required String columnText2,
  }) {
    return TableRow(
      children: [
        TableCell(
          child: Text(
            columnText1,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Colors.black45,
                ),
          ),
        ),
        TableCell(
          child: Text(
            columnText2,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
