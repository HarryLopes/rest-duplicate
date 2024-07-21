import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'menu_item_switch_button_model.dart';
export 'menu_item_switch_button_model.dart';

class MenuItemSwitchButtonWidget extends StatefulWidget {
  const MenuItemSwitchButtonWidget({super.key});

  @override
  State<MenuItemSwitchButtonWidget> createState() =>
      _MenuItemSwitchButtonWidgetState();
}

class _MenuItemSwitchButtonWidgetState
    extends State<MenuItemSwitchButtonWidget> {
  late MenuItemSwitchButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuItemSwitchButtonModel());

    _model.switchValue = true;
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: _model.switchValue!,
      onChanged: (newValue) async {
        setState(() => _model.switchValue = newValue);
      },
      activeColor: FlutterFlowTheme.of(context).primary,
      activeTrackColor: FlutterFlowTheme.of(context).accent1,
      inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
      inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
    );
  }
}
