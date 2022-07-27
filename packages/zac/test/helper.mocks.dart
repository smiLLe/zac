// Mocks generated by Mockito 5.2.0 from annotations
// in zac/test/helper.dart.
// Do not manually edit this file.

import 'package:mockito/mockito.dart' as _i1;
import 'package:zac/src/zac/actions/action.dart' as _i4;
import 'package:zac/src/zac/context/any_widget_context.dart' as _i3;

import 'helper.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [LeakedActionCb].
///
/// See the documentation for Mockito's code generation for more information.
class MockLeakedActionCb extends _i1.Mock implements _i2.LeakedActionCb {
  MockLeakedActionCb() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void call(_i3.ZacBuildContext? context, _i4.ActionPayload? payload) =>
      super.noSuchMethod(Invocation.method(#call, [context, payload]),
          returnValueForMissingStub: null);
}

/// A class which mocks [LeakeContextCb].
///
/// See the documentation for Mockito's code generation for more information.
class MockLeakeContextCb extends _i1.Mock implements _i2.LeakeContextCb {
  MockLeakeContextCb() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void call(_i3.ZacBuildContext? context) =>
      super.noSuchMethod(Invocation.method(#call, [context]),
          returnValueForMissingStub: null);
}
