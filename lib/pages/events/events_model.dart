import '/backend/backend.dart';
import '/create_components/logo_header/logo_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'events_widget.dart' show EventsWidget;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class EventsModel extends FlutterFlowModel<EventsWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> eventList = [];
  void addToEventList(DocumentReference item) => eventList.add(item);
  void removeFromEventList(DocumentReference item) => eventList.remove(item);
  void removeAtIndexFromEventList(int index) => eventList.removeAt(index);
  void insertAtIndexInEventList(int index, DocumentReference item) =>
      eventList.insert(index, item);
  void updateEventListAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      eventList[index] = updateFn(eventList[index]);

  ///  State fields for stateful widgets in this page.

  // Model for LogoHeader component.
  late LogoHeaderModel logoHeaderModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Firestore Query - Query a collection] action in ChoiceChips widget.
  List<EventRecord>? all;
  // Stores action output result for [Firestore Query - Query a collection] action in ChoiceChips widget.
  List<EventRecord>? sports;
  // Stores action output result for [Firestore Query - Query a collection] action in ChoiceChips widget.
  List<EventRecord>? cooking;
  // Stores action output result for [Firestore Query - Query a collection] action in ChoiceChips widget.
  List<EventRecord>? business;
  // Stores action output result for [Firestore Query - Query a collection] action in ChoiceChips widget.
  List<EventRecord>? party;

  @override
  void initState(BuildContext context) {
    logoHeaderModel = createModel(context, () => LogoHeaderModel());
  }

  @override
  void dispose() {
    logoHeaderModel.dispose();
  }
}
