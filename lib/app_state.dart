import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _date = prefs.containsKey('ff_date')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_date')!)
          : _date;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<SizeStruct> _size = [];
  List<SizeStruct> get size => _size;
  set size(List<SizeStruct> value) {
    _size = value;
  }

  void addToSize(SizeStruct value) {
    size.add(value);
  }

  void removeFromSize(SizeStruct value) {
    size.remove(value);
  }

  void removeAtIndexFromSize(int index) {
    size.removeAt(index);
  }

  void updateSizeAtIndex(
    int index,
    SizeStruct Function(SizeStruct) updateFn,
  ) {
    size[index] = updateFn(_size[index]);
  }

  void insertAtIndexInSize(int index, SizeStruct value) {
    size.insert(index, value);
  }

  DateTime? _date = DateTime.fromMillisecondsSinceEpoch(1710780480000);
  DateTime? get date => _date;
  set date(DateTime? value) {
    _date = value;
    value != null
        ? prefs.setInt('ff_date', value.millisecondsSinceEpoch)
        : prefs.remove('ff_date');
  }

  double _cartSum = 0.0;
  double get cartSum => _cartSum;
  set cartSum(double value) {
    _cartSum = value;
  }

  bool _isVeg = false;
  bool get isVeg => _isVeg;
  set isVeg(bool value) {
    _isVeg = value;
  }

  bool _isNonveg = false;
  bool get isNonveg => _isNonveg;
  set isNonveg(bool value) {
    _isNonveg = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
