import 'package:flutter/material.dart';
import 'package:fx_transfer/widgets/ui/appbar.dart';
import 'package:fx_transfer/widgets/document_list.dart';
import 'package:fx_transfer/widgets/ui/button.dart';
import 'package:fx_transfer/widgets/upload_document.dart';

class FxTransfer extends StatelessWidget {
  const FxTransfer({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(
        bottom: 40,
      ),
      child: Column(
        children: [
          const MainAppBar(title: 'FX transfer-Document upload'),
          const UploadDocument(),
          const DocumentList(),
          Button(text: 'Proceed', onPress: () {})
        ],
      ),
    ));
  }
}
