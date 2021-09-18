import 'package:bottom_sheet_expandable_bar/bottom_sheet_bar_icon.dart';
import 'package:bottom_sheet_expandable_bar/bottom_sheet_expandable_bar.dart';
import 'package:flutter/material.dart';

class Btmtabs extends StatefulWidget {
  final int selectedTab;
  final Function(int) tabPressed;
  Btmtabs({this.selectedTab, this.tabPressed});

  @override
  _BtmtabsState createState() => _BtmtabsState();
}

class _BtmtabsState extends State<Btmtabs> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    _selectedTab = widget.selectedTab ?? 0;
    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
        ),
        child: BottomBarSheet(
          buttonPosition: ButtonBottomBarPosition.center,
          innerChild: Center(child: Text('All other things'),),
          currentIndex: _selectedTab,
          curve: Curves.bounceIn,
          backgroundBarColor: Theme.of(context).accentColor,
          backgroundColor: Theme.of(context).accentColor,
  children: [
    BottomSheetBarIcon(
      icon: Icon(Icons.home, color: Colors.white),
      color: Theme.of(context).primaryColor,
      onTap: (){
              widget.tabPressed(0);
            },
    ),
    BottomSheetBarIcon(
      icon: Icon(Icons.person, color: Colors.white),
      color: Theme.of(context).primaryColor,
      onTap: (){
              widget.tabPressed(1);
            },
    ),
    BottomSheetBarIcon(
      icon: Icon(Icons.edit, color: Colors.white),
      color: Theme.of(context).primaryColor,
      onTap: (){
              widget.tabPressed(2);
            },
    ),
    BottomSheetBarIcon(
      icon: Icon(Icons.star, color: Colors.white,),
      color: Theme.of(context).primaryColor,
      onTap: (){
              widget.tabPressed(3);
            },
    ),
  ],
),);
  }
}

// class BtmtabBtn extends StatelessWidget {
//   final String imagePath;
//   final bool selected;
//   final Function onPressed;
//   BtmtabBtn({this.imagePath, this.selected, this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     bool _selected = selected ?? false;

//     return GestureDetector(
//       onTap: onPressed,
//       child: Container(
//         padding: EdgeInsets.symmetric(
//           vertical: 28.0,
//           horizontal: 24.0,
//         ),
//         decoration: BoxDecoration(
//             border: Border(
//                 top: BorderSide(
//           color: _selected ? Theme.of(context).accentColor : Colors.transparent,
//           width: 2.0,
//         ))),
//         child: Image(
//           image: AssetImage(imagePath ?? "lib/Assets/images/tab_home.png"),
//           width: 26.0,
//           height: 26.0,
//           color: _selected ? Colors.pink : Colors.white,
//         ),
//       ),
//     );
//   }
// }
