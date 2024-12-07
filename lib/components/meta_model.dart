import '/flutter_flow/flutter_flow_util.dart';
import 'meta_widget.dart' show MetaWidget;
import 'package:flutter/material.dart';

class MetaModel extends FlutterFlowModel<MetaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
