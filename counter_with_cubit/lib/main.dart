import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'state_observer.dart';
import 'app.dart';

void main() {
  Bloc.observer = StateObserver();
  runApp(CounterApp());
}
