import 'package:flutter/material.dart';
import 'package:gooboba_mobile/bloc/auth.dart';

class MainBloc with ChangeNotifier, AuthBloc {
  String _bearerToken;
}
