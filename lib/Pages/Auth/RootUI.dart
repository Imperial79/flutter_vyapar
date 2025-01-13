import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_vyapar/Components/Label.dart';
import 'package:flutter_vyapar/Components/WindowButtons.dart';
import 'package:flutter_vyapar/Helper/data.dart';
import 'package:flutter_vyapar/Pages/Home/HomeUI.dart';
import 'package:window_manager/window_manager.dart';

class RootUI extends StatefulWidget {
  const RootUI({super.key});

  @override
  State<RootUI> createState() => _RootUIState();
}

class _RootUIState extends State<RootUI> {
  List<Map<String, dynamic>> screens = [
    {
      "name": "Home",
      "icon": FluentIcons.home,
      "screen": HomeUI(),
    },
    {
      "name": "Items",
      "icon": FluentIcons.product,
      "screen": SizedBox(),
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedScreen,
      builder: (context, selectedTab, child) => NavigationView(
        appBar: NavigationAppBar(
          automaticallyImplyLeading: false,
          // title: Label('Invoice system', fontWeight: 800).title,
          title: DragToMoveArea(
            child: Label("Invoice Generator").title,
          ),
          actions: WindowButtons(),
        ),
        pane: NavigationPane(
          selected: selectedTab,
          displayMode: PaneDisplayMode.compact,
          items: screens
              .asMap()
              .entries
              .map<NavigationPaneItem>(
                (entry) => PaneItem(
                  onTap: () {
                    selectedScreen.value = entry.key;
                  },
                  icon: Icon(entry.value["icon"]),
                  body: entry.value["screen"],
                  title: Label(entry.value["name"]).regular,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
