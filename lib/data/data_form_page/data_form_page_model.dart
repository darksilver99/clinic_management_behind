import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/component/menu_button_view/menu_button_view_widget.dart';
import '/component/menu_view/menu_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'data_form_page_widget.dart' show DataFormPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DataFormPageModel extends FlutterFlowModel<DataFormPageWidget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> tmpImageList = [];
  void addToTmpImageList(FFUploadedFile item) => tmpImageList.add(item);
  void removeFromTmpImageList(FFUploadedFile item) => tmpImageList.remove(item);
  void removeAtIndexFromTmpImageList(int index) => tmpImageList.removeAt(index);
  void insertAtIndexInTmpImageList(int index, FFUploadedFile item) =>
      tmpImageList.insert(index, item);
  void updateTmpImageListAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      tmpImageList[index] = updateFn(tmpImageList[index]);

  List<ImageDataStruct> currentImageList = [];
  void addToCurrentImageList(ImageDataStruct item) =>
      currentImageList.add(item);
  void removeFromCurrentImageList(ImageDataStruct item) =>
      currentImageList.remove(item);
  void removeAtIndexFromCurrentImageList(int index) =>
      currentImageList.removeAt(index);
  void insertAtIndexInCurrentImageList(int index, ImageDataStruct item) =>
      currentImageList.insert(index, item);
  void updateCurrentImageListAtIndex(
          int index, Function(ImageDataStruct) updateFn) =>
      currentImageList[index] = updateFn(currentImageList[index]);

  String? displayImage;

  String insertFunction = 'insert_data';

  String updateFunction = 'update_data';

  List<FFUploadedFile> tmpFileList = [];
  void addToTmpFileList(FFUploadedFile item) => tmpFileList.add(item);
  void removeFromTmpFileList(FFUploadedFile item) => tmpFileList.remove(item);
  void removeAtIndexFromTmpFileList(int index) => tmpFileList.removeAt(index);
  void insertAtIndexInTmpFileList(int index, FFUploadedFile item) =>
      tmpFileList.insert(index, item);
  void updateTmpFileListAtIndex(int index, Function(FFUploadedFile) updateFn) =>
      tmpFileList[index] = updateFn(tmpFileList[index]);

  List<FileDataStruct> currentFileList = [];
  void addToCurrentFileList(FileDataStruct item) => currentFileList.add(item);
  void removeFromCurrentFileList(FileDataStruct item) =>
      currentFileList.remove(item);
  void removeAtIndexFromCurrentFileList(int index) =>
      currentFileList.removeAt(index);
  void insertAtIndexInCurrentFileList(int index, FileDataStruct item) =>
      currentFileList.insert(index, item);
  void updateCurrentFileListAtIndex(
          int index, Function(FileDataStruct) updateFn) =>
      currentFileList[index] = updateFn(currentFileList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for MenuView component.
  late MenuViewModel menuViewModel;
  // State field(s) for Subject widget.
  FocusNode? subjectFocusNode;
  TextEditingController? subjectTextController;
  String? Function(BuildContext, String?)? subjectTextControllerValidator;
  String? _subjectTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Detail widget.
  FocusNode? detailFocusNode;
  TextEditingController? detailTextController;
  String? Function(BuildContext, String?)? detailTextControllerValidator;
  // State field(s) for recommendSwitch widget.
  bool? recommendSwitchValue;
  // State field(s) for statusSwitch widget.
  bool? statusSwitchValue;
  // Model for MenuButtonView component.
  late MenuButtonViewModel menuButtonViewModel;

  @override
  void initState(BuildContext context) {
    menuViewModel = createModel(context, () => MenuViewModel());
    subjectTextControllerValidator = _subjectTextControllerValidator;
    menuButtonViewModel = createModel(context, () => MenuButtonViewModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuViewModel.dispose();
    subjectFocusNode?.dispose();
    subjectTextController?.dispose();

    detailFocusNode?.dispose();
    detailTextController?.dispose();

    menuButtonViewModel.dispose();
  }
}
