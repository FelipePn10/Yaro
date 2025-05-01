import 'package:shelf/shelf.dart';
import 'package:shelf_static/shelf_static.dart';
import 'package:shelf/shelf_io.dart' as io;

void main() {
  final pipeline = Pipeline()
      .addMiddleware(logRequests())
      .addHandler(
        createStaticHandler('../../yaro/', defaultDocument: 'index.html'),
      );
  io.serve(pipeline, '0.0.0.0', 80);
}
