import 'package:flutter/material.dart';
import './FormsDemo.dart';
import './ButtonDemo.dart';
import './FloatingActionButtonDemo.dart';
import './PopupMenuButtonDemo.dart';
import './CheckboxDemo.dart';
import './RadioDemo.dart';
import './SwitchDemo.dart';
import './SliderDemo.dart';
import './DateTimeDemo.dart';
import './SimpleDialogDemo.dart';
import './AlertDialogDemo.dart';
import './BottomSheetDemo.dart';
import './SnackBarDemo.dart';
import './ExpansionPanelDemo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'ExpansionPanel', page: ExpansionPanelDemo()),
          ListItem(title: 'SnackBar', page: SnackBarDemo()),
          ListItem(title: 'BottomSheet', page: BottomSheetDemo()),
          ListItem(title: 'AlertDialog', page: AlertDialogDemo()),
          ListItem(title: 'SimpleDialog', page: SimpleDialogDemo()),
          ListItem(title: 'DateTime', page: DateTimeDemo()),
          ListItem(title: 'Slider', page: SliderDemo()),
          ListItem(title: 'Switch', page: SwitchDemo()),
          ListItem(title: 'Radio', page: RadioDemo()),
          ListItem(title: 'Checkbox', page: CheckboxDemo()),
          ListItem(title: 'PopupMenuButton', page: PopupMenuButtonDemo()),
          ListItem(title: 'FloatingActionButton', page: FloatingActionButtonDemo()),
          ListItem(title: 'Button', page: ButtonDemo()),
          ListItem(title: 'Form', page: FormsDemo()),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}