// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mobile_auth_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MobileAuthStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? verificationId, int? resendToken) reset,
    required TResult Function(PhoneAuthCredential credential) completed,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(String verificationId) otpTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? verificationId, int? resendToken)? reset,
    TResult? Function(PhoneAuthCredential credential)? completed,
    TResult? Function(String verificationId, int? resendToken)? codeSent,
    TResult? Function(String verificationId)? otpTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? verificationId, int? resendToken)? reset,
    TResult Function(PhoneAuthCredential credential)? completed,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(String verificationId)? otpTimeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) reset,
    required TResult Function(_Completed value) completed,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_OtpTimeout value) otpTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? reset,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_OtpTimeout value)? otpTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? reset,
    TResult Function(_Completed value)? completed,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_OtpTimeout value)? otpTimeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileAuthStatusCopyWith<$Res> {
  factory $MobileAuthStatusCopyWith(
          MobileAuthStatus value, $Res Function(MobileAuthStatus) then) =
      _$MobileAuthStatusCopyWithImpl<$Res, MobileAuthStatus>;
}

/// @nodoc
class _$MobileAuthStatusCopyWithImpl<$Res, $Val extends MobileAuthStatus>
    implements $MobileAuthStatusCopyWith<$Res> {
  _$MobileAuthStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @useResult
  $Res call({String? verificationId, int? resendToken});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$MobileAuthStatusCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = freezed,
    Object? resendToken = freezed,
  }) {
    return _then(_$_Initial(
      freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == resendToken
          ? _value.resendToken
          : resendToken // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.verificationId, this.resendToken);

  @override
  final String? verificationId;
  @override
  final int? resendToken;

  @override
  String toString() {
    return 'MobileAuthStatus.reset(verificationId: $verificationId, resendToken: $resendToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.resendToken, resendToken) ||
                other.resendToken == resendToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verificationId, resendToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? verificationId, int? resendToken) reset,
    required TResult Function(PhoneAuthCredential credential) completed,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(String verificationId) otpTimeout,
  }) {
    return reset(verificationId, resendToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? verificationId, int? resendToken)? reset,
    TResult? Function(PhoneAuthCredential credential)? completed,
    TResult? Function(String verificationId, int? resendToken)? codeSent,
    TResult? Function(String verificationId)? otpTimeout,
  }) {
    return reset?.call(verificationId, resendToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? verificationId, int? resendToken)? reset,
    TResult Function(PhoneAuthCredential credential)? completed,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(String verificationId)? otpTimeout,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(verificationId, resendToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) reset,
    required TResult Function(_Completed value) completed,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_OtpTimeout value) otpTimeout,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? reset,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_OtpTimeout value)? otpTimeout,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? reset,
    TResult Function(_Completed value)? completed,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_OtpTimeout value)? otpTimeout,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MobileAuthStatus {
  const factory _Initial(final String? verificationId, final int? resendToken) =
      _$_Initial;

  String? get verificationId;
  int? get resendToken;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CompletedCopyWith<$Res> {
  factory _$$_CompletedCopyWith(
          _$_Completed value, $Res Function(_$_Completed) then) =
      __$$_CompletedCopyWithImpl<$Res>;
  @useResult
  $Res call({PhoneAuthCredential credential});
}

/// @nodoc
class __$$_CompletedCopyWithImpl<$Res>
    extends _$MobileAuthStatusCopyWithImpl<$Res, _$_Completed>
    implements _$$_CompletedCopyWith<$Res> {
  __$$_CompletedCopyWithImpl(
      _$_Completed _value, $Res Function(_$_Completed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credential = null,
  }) {
    return _then(_$_Completed(
      null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as PhoneAuthCredential,
    ));
  }
}

/// @nodoc

class _$_Completed implements _Completed {
  const _$_Completed(this.credential);

  @override
  final PhoneAuthCredential credential;

  @override
  String toString() {
    return 'MobileAuthStatus.completed(credential: $credential)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Completed &&
            (identical(other.credential, credential) ||
                other.credential == credential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompletedCopyWith<_$_Completed> get copyWith =>
      __$$_CompletedCopyWithImpl<_$_Completed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? verificationId, int? resendToken) reset,
    required TResult Function(PhoneAuthCredential credential) completed,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(String verificationId) otpTimeout,
  }) {
    return completed(credential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? verificationId, int? resendToken)? reset,
    TResult? Function(PhoneAuthCredential credential)? completed,
    TResult? Function(String verificationId, int? resendToken)? codeSent,
    TResult? Function(String verificationId)? otpTimeout,
  }) {
    return completed?.call(credential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? verificationId, int? resendToken)? reset,
    TResult Function(PhoneAuthCredential credential)? completed,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(String verificationId)? otpTimeout,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(credential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) reset,
    required TResult Function(_Completed value) completed,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_OtpTimeout value) otpTimeout,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? reset,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_OtpTimeout value)? otpTimeout,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? reset,
    TResult Function(_Completed value)? completed,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_OtpTimeout value)? otpTimeout,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements MobileAuthStatus {
  const factory _Completed(final PhoneAuthCredential credential) = _$_Completed;

  PhoneAuthCredential get credential;
  @JsonKey(ignore: true)
  _$$_CompletedCopyWith<_$_Completed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CodeSentCopyWith<$Res> {
  factory _$$_CodeSentCopyWith(
          _$_CodeSent value, $Res Function(_$_CodeSent) then) =
      __$$_CodeSentCopyWithImpl<$Res>;
  @useResult
  $Res call({String verificationId, int? resendToken});
}

/// @nodoc
class __$$_CodeSentCopyWithImpl<$Res>
    extends _$MobileAuthStatusCopyWithImpl<$Res, _$_CodeSent>
    implements _$$_CodeSentCopyWith<$Res> {
  __$$_CodeSentCopyWithImpl(
      _$_CodeSent _value, $Res Function(_$_CodeSent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? resendToken = freezed,
  }) {
    return _then(_$_CodeSent(
      null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == resendToken
          ? _value.resendToken
          : resendToken // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_CodeSent implements _CodeSent {
  const _$_CodeSent(this.verificationId, this.resendToken);

  @override
  final String verificationId;
  @override
  final int? resendToken;

  @override
  String toString() {
    return 'MobileAuthStatus.codeSent(verificationId: $verificationId, resendToken: $resendToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CodeSent &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.resendToken, resendToken) ||
                other.resendToken == resendToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verificationId, resendToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CodeSentCopyWith<_$_CodeSent> get copyWith =>
      __$$_CodeSentCopyWithImpl<_$_CodeSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? verificationId, int? resendToken) reset,
    required TResult Function(PhoneAuthCredential credential) completed,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(String verificationId) otpTimeout,
  }) {
    return codeSent(verificationId, resendToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? verificationId, int? resendToken)? reset,
    TResult? Function(PhoneAuthCredential credential)? completed,
    TResult? Function(String verificationId, int? resendToken)? codeSent,
    TResult? Function(String verificationId)? otpTimeout,
  }) {
    return codeSent?.call(verificationId, resendToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? verificationId, int? resendToken)? reset,
    TResult Function(PhoneAuthCredential credential)? completed,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(String verificationId)? otpTimeout,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(verificationId, resendToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) reset,
    required TResult Function(_Completed value) completed,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_OtpTimeout value) otpTimeout,
  }) {
    return codeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? reset,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_OtpTimeout value)? otpTimeout,
  }) {
    return codeSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? reset,
    TResult Function(_Completed value)? completed,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_OtpTimeout value)? otpTimeout,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(this);
    }
    return orElse();
  }
}

abstract class _CodeSent implements MobileAuthStatus {
  const factory _CodeSent(final String verificationId, final int? resendToken) =
      _$_CodeSent;

  String get verificationId;
  int? get resendToken;
  @JsonKey(ignore: true)
  _$$_CodeSentCopyWith<_$_CodeSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OtpTimeoutCopyWith<$Res> {
  factory _$$_OtpTimeoutCopyWith(
          _$_OtpTimeout value, $Res Function(_$_OtpTimeout) then) =
      __$$_OtpTimeoutCopyWithImpl<$Res>;
  @useResult
  $Res call({String verificationId});
}

/// @nodoc
class __$$_OtpTimeoutCopyWithImpl<$Res>
    extends _$MobileAuthStatusCopyWithImpl<$Res, _$_OtpTimeout>
    implements _$$_OtpTimeoutCopyWith<$Res> {
  __$$_OtpTimeoutCopyWithImpl(
      _$_OtpTimeout _value, $Res Function(_$_OtpTimeout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
  }) {
    return _then(_$_OtpTimeout(
      null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OtpTimeout implements _OtpTimeout {
  const _$_OtpTimeout(this.verificationId);

  @override
  final String verificationId;

  @override
  String toString() {
    return 'MobileAuthStatus.otpTimeout(verificationId: $verificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpTimeout &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verificationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpTimeoutCopyWith<_$_OtpTimeout> get copyWith =>
      __$$_OtpTimeoutCopyWithImpl<_$_OtpTimeout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? verificationId, int? resendToken) reset,
    required TResult Function(PhoneAuthCredential credential) completed,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(String verificationId) otpTimeout,
  }) {
    return otpTimeout(verificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? verificationId, int? resendToken)? reset,
    TResult? Function(PhoneAuthCredential credential)? completed,
    TResult? Function(String verificationId, int? resendToken)? codeSent,
    TResult? Function(String verificationId)? otpTimeout,
  }) {
    return otpTimeout?.call(verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? verificationId, int? resendToken)? reset,
    TResult Function(PhoneAuthCredential credential)? completed,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(String verificationId)? otpTimeout,
    required TResult orElse(),
  }) {
    if (otpTimeout != null) {
      return otpTimeout(verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) reset,
    required TResult Function(_Completed value) completed,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_OtpTimeout value) otpTimeout,
  }) {
    return otpTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? reset,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_OtpTimeout value)? otpTimeout,
  }) {
    return otpTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? reset,
    TResult Function(_Completed value)? completed,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_OtpTimeout value)? otpTimeout,
    required TResult orElse(),
  }) {
    if (otpTimeout != null) {
      return otpTimeout(this);
    }
    return orElse();
  }
}

abstract class _OtpTimeout implements MobileAuthStatus {
  const factory _OtpTimeout(final String verificationId) = _$_OtpTimeout;

  String get verificationId;
  @JsonKey(ignore: true)
  _$$_OtpTimeoutCopyWith<_$_OtpTimeout> get copyWith =>
      throw _privateConstructorUsedError;
}
