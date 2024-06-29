import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';
void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}