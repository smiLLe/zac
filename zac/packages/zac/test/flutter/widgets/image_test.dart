import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helper.dart';
import '../models.dart';

void main() {
  group('Image.network', () {
    testWidgets('#1', (tester) async {
      await testBuilder<Image>(
        tester,
        'f:1:Image.network',
        props: <String, dynamic>{
          'key': KeysModel.getValueKey('test_key'),
          'src': 'test_src',
          'scale': 0.9,
          'semanticLabel': 'test_semanticLabel',
          'width': 33,
          'height': 44,
          'color': ColorModel.json,
          'excludeFromSemantics': true,
          'colorBlendMode': {'builder': 'f:1:BlendMode.saturation'},
          'alignment': AlignmentModel.geometry_alignment,
          'matchTextDirection': true,
          'gaplessPlayback': true,
          'isAntiAlias': true,
          'headers': <String, String>{},
          'fit': {'builder': 'f:1:BoxFit.scaleDown'},
          'repeat': {'builder': 'f:1:ImageRepeat.repeat'},
          'centerSlice': {
            'builder': 'f:1:Rect.fromLTRB',
            'left': 1,
            'top': 2,
            'right': 3,
            'bottom': 4
          },
          'filterQuality': {
            'builder': 'f:1:FilterQuality.high',
          }
        },
        matcher: (matcher) => matcher
            .having(
                (p0) => (p0.image as NetworkImage).url, 'Image.src', 'test_src')
            .having(
                (p0) => (p0.image as NetworkImage).scale, 'Image.scale', 0.9)
            .having((p0) => p0.semanticLabel, 'Image.semanticLabel',
                'test_semanticLabel')
            .having((p0) => p0.excludeFromSemantics,
                'Image.excludeFromSemantics', isTrue)
            .having((p0) => p0.width, 'Image.width', 33)
            .having((p0) => p0.height, 'Image.height', 44)
            .having((p0) => p0.color, 'Image.color', ColorModel.equals)
            .having((p0) => p0.colorBlendMode, 'Image.colorBlendMode',
                BlendMode.saturation)
            .having(
                (p0) => p0.alignment, 'Image.alignment', AlignmentModel.equals)
            .having((p0) => p0.matchTextDirection, 'Image.matchTextDirection',
                isTrue)
            .having((p0) => p0.gaplessPlayback, 'Image.gaplessPlayback', isTrue)
            .having((p0) => p0.isAntiAlias, 'Image.isAntiAlias', isTrue)
            .having((p0) => (p0.image as NetworkImage).headers, 'Image.headers',
                isA<Map<String, String>>())
            .having((p0) => p0.fit, 'Image.fit', BoxFit.scaleDown)
            .having((p0) => p0.repeat, 'Image.repeat', ImageRepeat.repeat)
            .having((p0) => p0.centerSlice, 'Image.centerSlice',
                const Rect.fromLTRB(1, 2, 3, 4))
            .having((p0) => p0.filterQuality, 'Image.filterQuality',
                FilterQuality.high),
      );
    });

    testWidgets('#2', (tester) async {
      await testBuilder<Image>(
        tester,
        'f:1:Image.network',
        props: <String, dynamic>{
          'key': KeysModel.getValueKey('test_key'),
          'src': 'test_src',
          'cacheWidth': 11,
          'cacheHeight': 22,
        },
        matcher: (matcher) => matcher
            .having(
                (p0) => (p0.image as ResizeImage).width, 'Image.cacheWidth', 11)
            .having((p0) => (p0.image as ResizeImage).height,
                'Image.cacheHeight', 22),
      );
    });
  });

  group('Image.asset', () {
    testWidgets('#1', (tester) async {
      await testBuilder<Image>(
        tester,
        'f:1:Image.asset',
        props: <String, dynamic>{
          'key': KeysModel.getValueKey('test_key'),
          'name': 'test_name',
          'semanticLabel': 'test_semanticLabel',
          'width': 33,
          'height': 44,
          'color': ColorModel.json,
          'excludeFromSemantics': true,
          'colorBlendMode': {'builder': 'f:1:BlendMode.saturation'},
          'alignment': AlignmentModel.geometry_alignment,
          'matchTextDirection': true,
          'gaplessPlayback': true,
          'isAntiAlias': true,
          'headers': <String, String>{},
          'fit': {'builder': 'f:1:BoxFit.scaleDown'},
          'repeat': {'builder': 'f:1:ImageRepeat.repeat'},
          'centerSlice': {
            'builder': 'f:1:Rect.fromLTRB',
            'left': 1,
            'top': 2,
            'right': 3,
            'bottom': 4
          },
          'filterQuality': {
            'builder': 'f:1:FilterQuality.high',
          }
        },
        matcher: (matcher) => matcher
            .having((p0) => (p0.image as ExactAssetImage).assetName,
                'Image.name', 'test_name')
            // .having(
            //     (p0) => (p0.image as NetworkImage).scale, 'Image.scale', 0.9)
            .having((p0) => p0.semanticLabel, 'Image.semanticLabel',
                'test_semanticLabel')
            .having((p0) => p0.excludeFromSemantics,
                'Image.excludeFromSemantics', isTrue)
            .having((p0) => p0.width, 'Image.width', 33)
            .having((p0) => p0.height, 'Image.height', 44)
            .having((p0) => p0.color, 'Image.color', ColorModel.equals)
            .having((p0) => p0.colorBlendMode, 'Image.colorBlendMode',
                BlendMode.saturation)
            .having(
                (p0) => p0.alignment, 'Image.alignment', AlignmentModel.equals)
            .having((p0) => p0.matchTextDirection, 'Image.matchTextDirection',
                isTrue)
            .having((p0) => p0.gaplessPlayback, 'Image.gaplessPlayback', isTrue)
            .having((p0) => p0.isAntiAlias, 'Image.isAntiAlias', isTrue)
            .having((p0) => p0.fit, 'Image.fit', BoxFit.scaleDown)
            .having((p0) => p0.repeat, 'Image.repeat', ImageRepeat.repeat)
            .having((p0) => p0.centerSlice, 'Image.centerSlice',
                const Rect.fromLTRB(1, 2, 3, 4))
            .having((p0) => p0.filterQuality, 'Image.filterQuality',
                FilterQuality.high),
      );
    });

    testWidgets('#2', (tester) async {
      await testBuilder<Image>(
        tester,
        'f:1:Image.asset',
        props: <String, dynamic>{
          'key': KeysModel.getValueKey('test_key'),
          'name': 'test_name',
          'cacheWidth': 11,
          'cacheHeight': 22,
        },
        matcher: (matcher) => matcher
            .having(
                (p0) => (p0.image as ResizeImage).width, 'Image.cacheWidth', 11)
            .having((p0) => (p0.image as ResizeImage).height,
                'Image.cacheHeight', 22),
      );
    });
  });
}
