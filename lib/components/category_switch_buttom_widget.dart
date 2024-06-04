import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'category_switch_buttom_model.dart';
export 'category_switch_buttom_model.dart';

class CategorySwitchButtomWidget extends StatefulWidget {
  const CategorySwitchButtomWidget({super.key});

  @override
  State<CategorySwitchButtomWidget> createState() =>
      _CategorySwitchButtomWidgetState();
}

class _CategorySwitchButtomWidgetState
    extends State<CategorySwitchButtomWidget> {
  late CategorySwitchButtomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategorySwitchButtomModel());

    _model.switchValue = true;
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
      child: Switch.adaptive(
        value: _model.switchValue!,
        onChanged: (newValue) async {
          setState(() => _model.switchValue = newValue);
        },
        activeColor: FlutterFlowTheme.of(context).primary,
        activeTrackColor: FlutterFlowTheme.of(context).accent1,
        inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
        inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
      ),
    );
  }
}
