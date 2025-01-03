import '/flutter_flow/flutter_flow_util.dart';
import 'homepage2_widget.dart' show Homepage2Widget;
import 'package:flutter/material.dart';

class Homepage2Model extends FlutterFlowModel<Homepage2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarTextController;
  String? Function(BuildContext, String?)? searchBarTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchBarFocusNode?.dispose();
    searchBarTextController?.dispose();
  }
}
