import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_vyapar/Components/Label.dart';
import 'package:flutter_vyapar/Components/kCard.dart';
import 'package:flutter_vyapar/Resources/colors.dart';

class ItemsUI extends StatefulWidget {
  const ItemsUI({super.key});

  @override
  State<ItemsUI> createState() => _ItemsUIState();
}

class _ItemsUIState extends State<ItemsUI> {
  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 20,
          children: [
            Row(
              spacing: 15,
              children: [
                Icon(
                  FluentIcons.product,
                  size: 30,
                ),
                Label("Items").title,
                Spacer(),
                FilledButton(
                  onPressed: () => debugPrint('pressed button'),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 10,
                    children: [
                      Icon(FluentIcons.add),
                      Label('New Item').regular,
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: KCard(
                width: double.maxFinite,
                color: Colors.transparent,
                borderColor: LColor.border,
                child: Row(
                  children: [
                    _itemsList(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemsList() {
    return KCard(
      width: 400,
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) => ListTile(
          title: Label("text").regular,
        ),
      ),
    );
  }
}
