import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_vyapar/Components/Label.dart';
import 'package:flutter_vyapar/Components/kCard.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  spacing: 10,
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        Expanded(
                          child: KCard(
                            child: Column(
                              spacing: 10,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Label("Rs. 1000", fontWeight: 700).title,
                                Label("Total Payable", fontWeight: 500).regular,
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: KCard(
                            child: Column(
                              spacing: 10,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Label("Rs. 1000", fontWeight: 700).title,
                                Label("Total Payable", fontWeight: 500).regular,
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            KCard(
              width: 300,
              height: double.maxFinite,
              child: Column(
                spacing: 15,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Label("Low Stock Items", fontSize: 17, fontWeight: 700).title,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
