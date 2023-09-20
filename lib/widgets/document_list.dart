import 'package:flutter/material.dart';
import 'package:fx_transfer/document_data.dart';
import 'package:fx_transfer/models/document.dart';
import 'package:fx_transfer/widgets/document_item.dart';

class DocumentList extends StatelessWidget {
  const DocumentList({super.key});
  @override
  Widget build(BuildContext context) {
    // return const Expanded(
    //   child: Column(
    //     children: [
    //       DocumentItem(
    //           icon: Icons.file_open,
    //           title: "Valid Polaris Form M",
    //           color: Color.fromARGB(255, 255, 219, 59)),
    //       DocumentItem(
    //           icon: Icons.edit_document,
    //           title: "Invoice for importation of physical goods",
    //           color: Color.fromARGB(255, 255, 219, 59)),
    //       DocumentItem(
    //           icon: Icons.file_copy_outlined,
    //           title: 'Duly filled Form A',
    //           color: Color.fromARGB(255, 255, 219, 59)),
    //       DocumentItem(
    //           icon: Icons.file_copy_outlined,
    //           title:
    //               'Duly filled Form A only for living expenses (Family upkeep)',
    //           color: Color.fromARGB(255, 255, 219, 59)),
    //       DocumentItem(
    //           icon: Icons.file_copy_outlined,
    //           title:
    //               'Invoice/service agreement for payment of services rendered',
    //           color: Color.fromARGB(255, 255, 219, 59))
    //     ],
    //   ),
    // );
    List<Document> documents = dummyData;

    return Column(
      children: [
        ListView(
          shrinkWrap: true,
          children: [
            for (final document in documents)
              DocumentItem(icon: document.icon, title: document.title, color: document.color)
          ],
        ),
      ],
    );
  }
}
