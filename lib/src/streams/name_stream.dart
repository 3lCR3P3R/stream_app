import 'dart:async';

final StreamController<List<String>> nameStream =
    StreamController<List<String>>.broadcast()..add([]);
