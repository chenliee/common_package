import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'api_generator.dart';

Builder apiBuilder(BuilderOptions options) =>
    LibraryBuilder(ApiGenerator(), generatedExtension: '.response.dart');
