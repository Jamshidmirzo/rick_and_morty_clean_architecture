// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharacterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getCharacters,
    required TResult Function(int id) getSingleCharacters,
    required TResult Function(List<int> idies) getMultiCharacters,
    required TResult Function(String newUrl) getFilterCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getCharacters,
    TResult? Function(int id)? getSingleCharacters,
    TResult? Function(List<int> idies)? getMultiCharacters,
    TResult? Function(String newUrl)? getFilterCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getCharacters,
    TResult Function(int id)? getSingleCharacters,
    TResult Function(List<int> idies)? getMultiCharacters,
    TResult Function(String newUrl)? getFilterCharacters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getCharacters value) getCharacters,
    required TResult Function(_getSingleCharacters value) getSingleCharacters,
    required TResult Function(_getMultiCharacters value) getMultiCharacters,
    required TResult Function(_getFilterCharacters value) getFilterCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getCharacters value)? getCharacters,
    TResult? Function(_getSingleCharacters value)? getSingleCharacters,
    TResult? Function(_getMultiCharacters value)? getMultiCharacters,
    TResult? Function(_getFilterCharacters value)? getFilterCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getCharacters value)? getCharacters,
    TResult Function(_getSingleCharacters value)? getSingleCharacters,
    TResult Function(_getMultiCharacters value)? getMultiCharacters,
    TResult Function(_getFilterCharacters value)? getFilterCharacters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEventCopyWith<$Res> {
  factory $CharacterEventCopyWith(
          CharacterEvent value, $Res Function(CharacterEvent) then) =
      _$CharacterEventCopyWithImpl<$Res, CharacterEvent>;
}

/// @nodoc
class _$CharacterEventCopyWithImpl<$Res, $Val extends CharacterEvent>
    implements $CharacterEventCopyWith<$Res> {
  _$CharacterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$getCharactersImplCopyWith<$Res> {
  factory _$$getCharactersImplCopyWith(
          _$getCharactersImpl value, $Res Function(_$getCharactersImpl) then) =
      __$$getCharactersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$getCharactersImplCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$getCharactersImpl>
    implements _$$getCharactersImplCopyWith<$Res> {
  __$$getCharactersImplCopyWithImpl(
      _$getCharactersImpl _value, $Res Function(_$getCharactersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$getCharactersImpl(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$getCharactersImpl implements _getCharacters {
  const _$getCharactersImpl(this.name);

  @override
  final String? name;

  @override
  String toString() {
    return 'CharacterEvent.getCharacters(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getCharactersImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getCharactersImplCopyWith<_$getCharactersImpl> get copyWith =>
      __$$getCharactersImplCopyWithImpl<_$getCharactersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getCharacters,
    required TResult Function(int id) getSingleCharacters,
    required TResult Function(List<int> idies) getMultiCharacters,
    required TResult Function(String newUrl) getFilterCharacters,
  }) {
    return getCharacters(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getCharacters,
    TResult? Function(int id)? getSingleCharacters,
    TResult? Function(List<int> idies)? getMultiCharacters,
    TResult? Function(String newUrl)? getFilterCharacters,
  }) {
    return getCharacters?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getCharacters,
    TResult Function(int id)? getSingleCharacters,
    TResult Function(List<int> idies)? getMultiCharacters,
    TResult Function(String newUrl)? getFilterCharacters,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getCharacters value) getCharacters,
    required TResult Function(_getSingleCharacters value) getSingleCharacters,
    required TResult Function(_getMultiCharacters value) getMultiCharacters,
    required TResult Function(_getFilterCharacters value) getFilterCharacters,
  }) {
    return getCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getCharacters value)? getCharacters,
    TResult? Function(_getSingleCharacters value)? getSingleCharacters,
    TResult? Function(_getMultiCharacters value)? getMultiCharacters,
    TResult? Function(_getFilterCharacters value)? getFilterCharacters,
  }) {
    return getCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getCharacters value)? getCharacters,
    TResult Function(_getSingleCharacters value)? getSingleCharacters,
    TResult Function(_getMultiCharacters value)? getMultiCharacters,
    TResult Function(_getFilterCharacters value)? getFilterCharacters,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters(this);
    }
    return orElse();
  }
}

abstract class _getCharacters implements CharacterEvent {
  const factory _getCharacters(final String? name) = _$getCharactersImpl;

  String? get name;
  @JsonKey(ignore: true)
  _$$getCharactersImplCopyWith<_$getCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getSingleCharactersImplCopyWith<$Res> {
  factory _$$getSingleCharactersImplCopyWith(_$getSingleCharactersImpl value,
          $Res Function(_$getSingleCharactersImpl) then) =
      __$$getSingleCharactersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$getSingleCharactersImplCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$getSingleCharactersImpl>
    implements _$$getSingleCharactersImplCopyWith<$Res> {
  __$$getSingleCharactersImplCopyWithImpl(_$getSingleCharactersImpl _value,
      $Res Function(_$getSingleCharactersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$getSingleCharactersImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$getSingleCharactersImpl implements _getSingleCharacters {
  const _$getSingleCharactersImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CharacterEvent.getSingleCharacters(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getSingleCharactersImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getSingleCharactersImplCopyWith<_$getSingleCharactersImpl> get copyWith =>
      __$$getSingleCharactersImplCopyWithImpl<_$getSingleCharactersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getCharacters,
    required TResult Function(int id) getSingleCharacters,
    required TResult Function(List<int> idies) getMultiCharacters,
    required TResult Function(String newUrl) getFilterCharacters,
  }) {
    return getSingleCharacters(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getCharacters,
    TResult? Function(int id)? getSingleCharacters,
    TResult? Function(List<int> idies)? getMultiCharacters,
    TResult? Function(String newUrl)? getFilterCharacters,
  }) {
    return getSingleCharacters?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getCharacters,
    TResult Function(int id)? getSingleCharacters,
    TResult Function(List<int> idies)? getMultiCharacters,
    TResult Function(String newUrl)? getFilterCharacters,
    required TResult orElse(),
  }) {
    if (getSingleCharacters != null) {
      return getSingleCharacters(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getCharacters value) getCharacters,
    required TResult Function(_getSingleCharacters value) getSingleCharacters,
    required TResult Function(_getMultiCharacters value) getMultiCharacters,
    required TResult Function(_getFilterCharacters value) getFilterCharacters,
  }) {
    return getSingleCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getCharacters value)? getCharacters,
    TResult? Function(_getSingleCharacters value)? getSingleCharacters,
    TResult? Function(_getMultiCharacters value)? getMultiCharacters,
    TResult? Function(_getFilterCharacters value)? getFilterCharacters,
  }) {
    return getSingleCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getCharacters value)? getCharacters,
    TResult Function(_getSingleCharacters value)? getSingleCharacters,
    TResult Function(_getMultiCharacters value)? getMultiCharacters,
    TResult Function(_getFilterCharacters value)? getFilterCharacters,
    required TResult orElse(),
  }) {
    if (getSingleCharacters != null) {
      return getSingleCharacters(this);
    }
    return orElse();
  }
}

abstract class _getSingleCharacters implements CharacterEvent {
  const factory _getSingleCharacters({required final int id}) =
      _$getSingleCharactersImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$getSingleCharactersImplCopyWith<_$getSingleCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getMultiCharactersImplCopyWith<$Res> {
  factory _$$getMultiCharactersImplCopyWith(_$getMultiCharactersImpl value,
          $Res Function(_$getMultiCharactersImpl) then) =
      __$$getMultiCharactersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> idies});
}

/// @nodoc
class __$$getMultiCharactersImplCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$getMultiCharactersImpl>
    implements _$$getMultiCharactersImplCopyWith<$Res> {
  __$$getMultiCharactersImplCopyWithImpl(_$getMultiCharactersImpl _value,
      $Res Function(_$getMultiCharactersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idies = null,
  }) {
    return _then(_$getMultiCharactersImpl(
      idies: null == idies
          ? _value._idies
          : idies // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$getMultiCharactersImpl implements _getMultiCharacters {
  const _$getMultiCharactersImpl({required final List<int> idies})
      : _idies = idies;

  final List<int> _idies;
  @override
  List<int> get idies {
    if (_idies is EqualUnmodifiableListView) return _idies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_idies);
  }

  @override
  String toString() {
    return 'CharacterEvent.getMultiCharacters(idies: $idies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getMultiCharactersImpl &&
            const DeepCollectionEquality().equals(other._idies, _idies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_idies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getMultiCharactersImplCopyWith<_$getMultiCharactersImpl> get copyWith =>
      __$$getMultiCharactersImplCopyWithImpl<_$getMultiCharactersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getCharacters,
    required TResult Function(int id) getSingleCharacters,
    required TResult Function(List<int> idies) getMultiCharacters,
    required TResult Function(String newUrl) getFilterCharacters,
  }) {
    return getMultiCharacters(idies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getCharacters,
    TResult? Function(int id)? getSingleCharacters,
    TResult? Function(List<int> idies)? getMultiCharacters,
    TResult? Function(String newUrl)? getFilterCharacters,
  }) {
    return getMultiCharacters?.call(idies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getCharacters,
    TResult Function(int id)? getSingleCharacters,
    TResult Function(List<int> idies)? getMultiCharacters,
    TResult Function(String newUrl)? getFilterCharacters,
    required TResult orElse(),
  }) {
    if (getMultiCharacters != null) {
      return getMultiCharacters(idies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getCharacters value) getCharacters,
    required TResult Function(_getSingleCharacters value) getSingleCharacters,
    required TResult Function(_getMultiCharacters value) getMultiCharacters,
    required TResult Function(_getFilterCharacters value) getFilterCharacters,
  }) {
    return getMultiCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getCharacters value)? getCharacters,
    TResult? Function(_getSingleCharacters value)? getSingleCharacters,
    TResult? Function(_getMultiCharacters value)? getMultiCharacters,
    TResult? Function(_getFilterCharacters value)? getFilterCharacters,
  }) {
    return getMultiCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getCharacters value)? getCharacters,
    TResult Function(_getSingleCharacters value)? getSingleCharacters,
    TResult Function(_getMultiCharacters value)? getMultiCharacters,
    TResult Function(_getFilterCharacters value)? getFilterCharacters,
    required TResult orElse(),
  }) {
    if (getMultiCharacters != null) {
      return getMultiCharacters(this);
    }
    return orElse();
  }
}

abstract class _getMultiCharacters implements CharacterEvent {
  const factory _getMultiCharacters({required final List<int> idies}) =
      _$getMultiCharactersImpl;

  List<int> get idies;
  @JsonKey(ignore: true)
  _$$getMultiCharactersImplCopyWith<_$getMultiCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getFilterCharactersImplCopyWith<$Res> {
  factory _$$getFilterCharactersImplCopyWith(_$getFilterCharactersImpl value,
          $Res Function(_$getFilterCharactersImpl) then) =
      __$$getFilterCharactersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newUrl});
}

/// @nodoc
class __$$getFilterCharactersImplCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$getFilterCharactersImpl>
    implements _$$getFilterCharactersImplCopyWith<$Res> {
  __$$getFilterCharactersImplCopyWithImpl(_$getFilterCharactersImpl _value,
      $Res Function(_$getFilterCharactersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newUrl = null,
  }) {
    return _then(_$getFilterCharactersImpl(
      newUrl: null == newUrl
          ? _value.newUrl
          : newUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getFilterCharactersImpl implements _getFilterCharacters {
  const _$getFilterCharactersImpl({required this.newUrl});

  @override
  final String newUrl;

  @override
  String toString() {
    return 'CharacterEvent.getFilterCharacters(newUrl: $newUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getFilterCharactersImpl &&
            (identical(other.newUrl, newUrl) || other.newUrl == newUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getFilterCharactersImplCopyWith<_$getFilterCharactersImpl> get copyWith =>
      __$$getFilterCharactersImplCopyWithImpl<_$getFilterCharactersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getCharacters,
    required TResult Function(int id) getSingleCharacters,
    required TResult Function(List<int> idies) getMultiCharacters,
    required TResult Function(String newUrl) getFilterCharacters,
  }) {
    return getFilterCharacters(newUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getCharacters,
    TResult? Function(int id)? getSingleCharacters,
    TResult? Function(List<int> idies)? getMultiCharacters,
    TResult? Function(String newUrl)? getFilterCharacters,
  }) {
    return getFilterCharacters?.call(newUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getCharacters,
    TResult Function(int id)? getSingleCharacters,
    TResult Function(List<int> idies)? getMultiCharacters,
    TResult Function(String newUrl)? getFilterCharacters,
    required TResult orElse(),
  }) {
    if (getFilterCharacters != null) {
      return getFilterCharacters(newUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getCharacters value) getCharacters,
    required TResult Function(_getSingleCharacters value) getSingleCharacters,
    required TResult Function(_getMultiCharacters value) getMultiCharacters,
    required TResult Function(_getFilterCharacters value) getFilterCharacters,
  }) {
    return getFilterCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getCharacters value)? getCharacters,
    TResult? Function(_getSingleCharacters value)? getSingleCharacters,
    TResult? Function(_getMultiCharacters value)? getMultiCharacters,
    TResult? Function(_getFilterCharacters value)? getFilterCharacters,
  }) {
    return getFilterCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getCharacters value)? getCharacters,
    TResult Function(_getSingleCharacters value)? getSingleCharacters,
    TResult Function(_getMultiCharacters value)? getMultiCharacters,
    TResult Function(_getFilterCharacters value)? getFilterCharacters,
    required TResult orElse(),
  }) {
    if (getFilterCharacters != null) {
      return getFilterCharacters(this);
    }
    return orElse();
  }
}

abstract class _getFilterCharacters implements CharacterEvent {
  const factory _getFilterCharacters({required final String newUrl}) =
      _$getFilterCharactersImpl;

  String get newUrl;
  @JsonKey(ignore: true)
  _$$getFilterCharactersImplCopyWith<_$getFilterCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharacterState {
  Status get status => throw _privateConstructorUsedError;
  List<CharacterEntity>? get character => throw _privateConstructorUsedError;
  CharacterEntity? get singleCharacter => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterStateCopyWith<CharacterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res, CharacterState>;
  @useResult
  $Res call(
      {Status status,
      List<CharacterEntity>? character,
      CharacterEntity? singleCharacter,
      String? message});
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? character = freezed,
    Object? singleCharacter = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as List<CharacterEntity>?,
      singleCharacter: freezed == singleCharacter
          ? _value.singleCharacter
          : singleCharacter // ignore: cast_nullable_to_non_nullable
              as CharacterEntity?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterStateImplCopyWith<$Res>
    implements $CharacterStateCopyWith<$Res> {
  factory _$$CharacterStateImplCopyWith(_$CharacterStateImpl value,
          $Res Function(_$CharacterStateImpl) then) =
      __$$CharacterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      List<CharacterEntity>? character,
      CharacterEntity? singleCharacter,
      String? message});
}

/// @nodoc
class __$$CharacterStateImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterStateImpl>
    implements _$$CharacterStateImplCopyWith<$Res> {
  __$$CharacterStateImplCopyWithImpl(
      _$CharacterStateImpl _value, $Res Function(_$CharacterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? character = freezed,
    Object? singleCharacter = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CharacterStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      character: freezed == character
          ? _value._character
          : character // ignore: cast_nullable_to_non_nullable
              as List<CharacterEntity>?,
      singleCharacter: freezed == singleCharacter
          ? _value.singleCharacter
          : singleCharacter // ignore: cast_nullable_to_non_nullable
              as CharacterEntity?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CharacterStateImpl implements _CharacterState {
  _$CharacterStateImpl(
      {this.status = Status.LOADING,
      final List<CharacterEntity>? character,
      this.singleCharacter,
      this.message})
      : _character = character;

  @override
  @JsonKey()
  final Status status;
  final List<CharacterEntity>? _character;
  @override
  List<CharacterEntity>? get character {
    final value = _character;
    if (value == null) return null;
    if (_character is EqualUnmodifiableListView) return _character;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CharacterEntity? singleCharacter;
  @override
  final String? message;

  @override
  String toString() {
    return 'CharacterState(status: $status, character: $character, singleCharacter: $singleCharacter, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._character, _character) &&
            (identical(other.singleCharacter, singleCharacter) ||
                other.singleCharacter == singleCharacter) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_character),
      singleCharacter,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterStateImplCopyWith<_$CharacterStateImpl> get copyWith =>
      __$$CharacterStateImplCopyWithImpl<_$CharacterStateImpl>(
          this, _$identity);
}

abstract class _CharacterState implements CharacterState {
  factory _CharacterState(
      {final Status status,
      final List<CharacterEntity>? character,
      final CharacterEntity? singleCharacter,
      final String? message}) = _$CharacterStateImpl;

  @override
  Status get status;
  @override
  List<CharacterEntity>? get character;
  @override
  CharacterEntity? get singleCharacter;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CharacterStateImplCopyWith<_$CharacterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
