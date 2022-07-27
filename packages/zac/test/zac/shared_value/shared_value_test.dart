// import 'dart:convert';

// import 'package:zac/zac.dart';
// import 'package:zac/zac_flutter_classes.dart';
// import 'package:zac/src/zac/any_value/any_value.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../../flutter/models.dart';
// import '../../helper.dart';

// part 'shared_value_test.freezed.dart';

// Future<ProviderContainer> testAw(
//   WidgetTester tester,
//   WidgetBuilder anyWidget, {
//   Map<String, RuntimeConverterFn>? converter,
//   ProviderContainer? useContainer,
// }) async {
//   final container = useContainer ??
//       ProviderContainer(
//         overrides: [
//           AWProviders.builderConfig
//               .overrideWithValue(AnyWidgetBuilderConfig.inSync()),
//           AWProviders.widgetsConverter
//               .overrideWithProvider(Provider<RuntimeConverter>((ref) {
//             final defaults = ref.watch(AWProviders.defaultsWidgetsConverter);
//             return defaults.copyWith
//                 .call(converter: {...defaults.converter, ...(converter ?? {})});
//           })),
//         ],
//       );

//   await tester.pumpWidget(
//     UncontrolledProviderScope(
//       container: container,
//       child: MaterialApp(
//         home: AnyWidgetBuilder(data: anyWidget),
//       ),
//     ),
//   );

//   return container;
// }

// @AWFreezed
// class TestGetContextBuilder with _$TestGetContextBuilder, BuilderToWidget {
//   const TestGetContextBuilder._();

//   static const String unionValue = 'test:TestGetContext';

//   @FreezedUnionValue(TestGetContextBuilder.unionValue)
//   factory TestGetContextBuilder({
//     AnyWidget? child,
//     required void Function(AnyWidgetContext context) getContext,
//   }) = _TestGetContextBuilder;

//   @override
//   TestGetContext buildWidget(AnyWidgetContext context) {
//     return TestGetContext(
//       getContext: getContext,
//       child: child?.buildWidget(context),
//     );
//   }
// }

// class TestGetContext extends StatelessWidget {
//   const TestGetContext({required this.getContext, this.child, Key? key})
//       : super(key: key);

//   final void Function(AnyWidgetContext context) getContext;
//   final Widget? child;

//   @override
//   Widget build(BuildContext context) {
//     return UpdateContextBuilder(
//       builder: (context) {
//         getContext(context);
//         return child ?? const SizedBox.shrink();
//       },
//     );
//   }
// }

// void main() {
//   group('SharedValueMapperList', () {
//     group('int', () {
//       test('add', () {
//         final List<SharedValueMapper> list = [
//           SharedValueMappers.intAdd(amount: 1),
//           SharedValueMappers.intAdd(amount: 1),
//         ];

//         expect(
//             list.mapAllValues(
//                 0,
//                 SharedValueInteractionType.provide(
//                     context: FakeAnyWidgetContext())),
//             2);
//       });

//       test('assert if no int', () {
//         expect(
//             () => SharedValueMappers.intAdd(amount: 1).mapValue(
//                 'no',
//                 SharedValueInteractionType.provide(
//                     context: FakeAnyWidgetContext())),
//             throwsAssertionError);
//       });
//     });
//   });

//   group('SharedValue', () {
//     group('can be updated ', () {
//       testWidgets('through an action', (tester) async {
//         await testAnyWidget(
//           tester,
//           {
//             nameOfKey: 'z:1:SharedValue.provide',
//             'name': 'foo',
//             'value': 'Hello',
//             'child': {
//               nameOfKey: 'f:1:Column',
//               'children': [
//                 {
//                   nameOfKey: 'f:1:Text',
//                   'data': {
//                     nameOfKey: 'z:1:SharedValue.consume',
//                     'name': 'foo'
//                   }
//                 },
//                 {
//                   nameOfKey: 'f:1:TextButton',
//                   'child': {
//                     nameOfKey: 'f:1:Text',
//                     'data': 'Press Me',
//                   },
//                   'onPressed': {
//                     nameOfKey: 'z:1:Actions',
//                     'actions': [
//                       {
//                         nameOfKey: 'z:1:SharedValue.update',
//                         'name': 'foo',
//                         'value': 'World',
//                       }
//                     ]
//                   }
//                 },
//               ],
//             }
//           },
//         );

//         expect(find.text('Hello'), findsOneWidget);
//         await tester.tap(find.text('Press Me'));
//         await tester.pumpAndSettle();
//         expect(find.text('Hello'), findsNothing);
//         expect(find.text('World'), findsOneWidget);
//       });

//       testWidgets('through an action using mapped value', (tester) async {},
//           skip: true);
//     });
//   });
// }
