// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getAllLocation,
    required TResult Function(String url) getFilterLocation,
    required TResult Function(int id) getSingleLocation,
    required TResult Function(List<int> idies) getMultiLocation,
    required TResult Function(List<String> ulrs) getCharacters,
    required TResult Function(List<String> ulrs, int id)
        getCharactersAndLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getAllLocation,
    TResult? Function(String url)? getFilterLocation,
    TResult? Function(int id)? getSingleLocation,
    TResult? Function(List<int> idies)? getMultiLocation,
    TResult? Function(List<String> ulrs)? getCharacters,
    TResult? Function(List<String> ulrs, int id)? getCharactersAndLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getAllLocation,
    TResult Function(String url)? getFilterLocation,
    TResult Function(int id)? getSingleLocation,
    TResult Function(List<int> idies)? getMultiLocation,
    TResult Function(List<String> ulrs)? getCharacters,
    TResult Function(List<String> ulrs, int id)? getCharactersAndLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getAllLocation value) getAllLocation,
    required TResult Function(_getFilterLocation value) getFilterLocation,
    required TResult Function(_getSingleLocation value) getSingleLocation,
    required TResult Function(_getMultiLocation value) getMultiLocation,
    required TResult Function(_getCharacters value) getCharacters,
    required TResult Function(_getCharactersAndLocations value)
        getCharactersAndLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getAllLocation value)? getAllLocation,
    TResult? Function(_getFilterLocation value)? getFilterLocation,
    TResult? Function(_getSingleLocation value)? getSingleLocation,
    TResult? Function(_getMultiLocation value)? getMultiLocation,
    TResult? Function(_getCharacters value)? getCharacters,
    TResult? Function(_getCharactersAndLocations value)?
        getCharactersAndLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getAllLocation value)? getAllLocation,
    TResult Function(_getFilterLocation value)? getFilterLocation,
    TResult Function(_getSingleLocation value)? getSingleLocation,
    TResult Function(_getMultiLocation value)? getMultiLocation,
    TResult Function(_getCharacters value)? getCharacters,
    TResult Function(_getCharactersAndLocations value)?
        getCharactersAndLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res, LocationEvent>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res, $Val extends LocationEvent>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$getAllLocationImplCopyWith<$Res> {
  factory _$$getAllLocationImplCopyWith(_$getAllLocationImpl value,
          $Res Function(_$getAllLocationImpl) then) =
      __$$getAllLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$getAllLocationImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$getAllLocationImpl>
    implements _$$getAllLocationImplCopyWith<$Res> {
  __$$getAllLocationImplCopyWithImpl(
      _$getAllLocationImpl _value, $Res Function(_$getAllLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$getAllLocationImpl(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$getAllLocationImpl implements _getAllLocation {
  const _$getAllLocationImpl(this.name);

  @override
  final String? name;

  @override
  String toString() {
    return 'LocationEvent.getAllLocation(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getAllLocationImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getAllLocationImplCopyWith<_$getAllLocationImpl> get copyWith =>
      __$$getAllLocationImplCopyWithImpl<_$getAllLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getAllLocation,
    required TResult Function(String url) getFilterLocation,
    required TResult Function(int id) getSingleLocation,
    required TResult Function(List<int> idies) getMultiLocation,
    required TResult Function(List<String> ulrs) getCharacters,
    required TResult Function(List<String> ulrs, int id)
        getCharactersAndLocation,
  }) {
    return getAllLocation(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getAllLocation,
    TResult? Function(String url)? getFilterLocation,
    TResult? Function(int id)? getSingleLocation,
    TResult? Function(List<int> idies)? getMultiLocation,
    TResult? Function(List<String> ulrs)? getCharacters,
    TResult? Function(List<String> ulrs, int id)? getCharactersAndLocation,
  }) {
    return getAllLocation?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getAllLocation,
    TResult Function(String url)? getFilterLocation,
    TResult Function(int id)? getSingleLocation,
    TResult Function(List<int> idies)? getMultiLocation,
    TResult Function(List<String> ulrs)? getCharacters,
    TResult Function(List<String> ulrs, int id)? getCharactersAndLocation,
    required TResult orElse(),
  }) {
    if (getAllLocation != null) {
      return getAllLocation(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getAllLocation value) getAllLocation,
    required TResult Function(_getFilterLocation value) getFilterLocation,
    required TResult Function(_getSingleLocation value) getSingleLocation,
    required TResult Function(_getMultiLocation value) getMultiLocation,
    required TResult Function(_getCharacters value) getCharacters,
    required TResult Function(_getCharactersAndLocations value)
        getCharactersAndLocation,
  }) {
    return getAllLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getAllLocation value)? getAllLocation,
    TResult? Function(_getFilterLocation value)? getFilterLocation,
    TResult? Function(_getSingleLocation value)? getSingleLocation,
    TResult? Function(_getMultiLocation value)? getMultiLocation,
    TResult? Function(_getCharacters value)? getCharacters,
    TResult? Function(_getCharactersAndLocations value)?
        getCharactersAndLocation,
  }) {
    return getAllLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getAllLocation value)? getAllLocation,
    TResult Function(_getFilterLocation value)? getFilterLocation,
    TResult Function(_getSingleLocation value)? getSingleLocation,
    TResult Function(_getMultiLocation value)? getMultiLocation,
    TResult Function(_getCharacters value)? getCharacters,
    TResult Function(_getCharactersAndLocations value)?
        getCharactersAndLocation,
    required TResult orElse(),
  }) {
    if (getAllLocation != null) {
      return getAllLocation(this);
    }
    return orElse();
  }
}

abstract class _getAllLocation implements LocationEvent {
  const factory _getAllLocation(final String? name) = _$getAllLocationImpl;

  String? get name;
  @JsonKey(ignore: true)
  _$$getAllLocationImplCopyWith<_$getAllLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getFilterLocationImplCopyWith<$Res> {
  factory _$$getFilterLocationImplCopyWith(_$getFilterLocationImpl value,
          $Res Function(_$getFilterLocationImpl) then) =
      __$$getFilterLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$getFilterLocationImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$getFilterLocationImpl>
    implements _$$getFilterLocationImplCopyWith<$Res> {
  __$$getFilterLocationImplCopyWithImpl(_$getFilterLocationImpl _value,
      $Res Function(_$getFilterLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$getFilterLocationImpl(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getFilterLocationImpl implements _getFilterLocation {
  const _$getFilterLocationImpl(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'LocationEvent.getFilterLocation(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getFilterLocationImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getFilterLocationImplCopyWith<_$getFilterLocationImpl> get copyWith =>
      __$$getFilterLocationImplCopyWithImpl<_$getFilterLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getAllLocation,
    required TResult Function(String url) getFilterLocation,
    required TResult Function(int id) getSingleLocation,
    required TResult Function(List<int> idies) getMultiLocation,
    required TResult Function(List<String> ulrs) getCharacters,
    required TResult Function(List<String> ulrs, int id)
        getCharactersAndLocation,
  }) {
    return getFilterLocation(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getAllLocation,
    TResult? Function(String url)? getFilterLocation,
    TResult? Function(int id)? getSingleLocation,
    TResult? Function(List<int> idies)? getMultiLocation,
    TResult? Function(List<String> ulrs)? getCharacters,
    TResult? Function(List<String> ulrs, int id)? getCharactersAndLocation,
  }) {
    return getFilterLocation?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getAllLocation,
    TResult Function(String url)? getFilterLocation,
    TResult Function(int id)? getSingleLocation,
    TResult Function(List<int> idies)? getMultiLocation,
    TResult Function(List<String> ulrs)? getCharacters,
    TResult Function(List<String> ulrs, int id)? getCharactersAndLocation,
    required TResult orElse(),
  }) {
    if (getFilterLocation != null) {
      return getFilterLocation(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getAllLocation value) getAllLocation,
    required TResult Function(_getFilterLocation value) getFilterLocation,
    required TResult Function(_getSingleLocation value) getSingleLocation,
    required TResult Function(_getMultiLocation value) getMultiLocation,
    required TResult Function(_getCharacters value) getCharacters,
    required TResult Function(_getCharactersAndLocations value)
        getCharactersAndLocation,
  }) {
    return getFilterLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getAllLocation value)? getAllLocation,
    TResult? Function(_getFilterLocation value)? getFilterLocation,
    TResult? Function(_getSingleLocation value)? getSingleLocation,
    TResult? Function(_getMultiLocation value)? getMultiLocation,
    TResult? Function(_getCharacters value)? getCharacters,
    TResult? Function(_getCharactersAndLocations value)?
        getCharactersAndLocation,
  }) {
    return getFilterLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getAllLocation value)? getAllLocation,
    TResult Function(_getFilterLocation value)? getFilterLocation,
    TResult Function(_getSingleLocation value)? getSingleLocation,
    TResult Function(_getMultiLocation value)? getMultiLocation,
    TResult Function(_getCharacters value)? getCharacters,
    TResult Function(_getCharactersAndLocations value)?
        getCharactersAndLocation,
    required TResult orElse(),
  }) {
    if (getFilterLocation != null) {
      return getFilterLocation(this);
    }
    return orElse();
  }
}

abstract class _getFilterLocation implements LocationEvent {
  const factory _getFilterLocation(final String url) = _$getFilterLocationImpl;

  String get url;
  @JsonKey(ignore: true)
  _$$getFilterLocationImplCopyWith<_$getFilterLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getSingleLocationImplCopyWith<$Res> {
  factory _$$getSingleLocationImplCopyWith(_$getSingleLocationImpl value,
          $Res Function(_$getSingleLocationImpl) then) =
      __$$getSingleLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$getSingleLocationImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$getSingleLocationImpl>
    implements _$$getSingleLocationImplCopyWith<$Res> {
  __$$getSingleLocationImplCopyWithImpl(_$getSingleLocationImpl _value,
      $Res Function(_$getSingleLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$getSingleLocationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$getSingleLocationImpl implements _getSingleLocation {
  const _$getSingleLocationImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'LocationEvent.getSingleLocation(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getSingleLocationImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getSingleLocationImplCopyWith<_$getSingleLocationImpl> get copyWith =>
      __$$getSingleLocationImplCopyWithImpl<_$getSingleLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getAllLocation,
    required TResult Function(String url) getFilterLocation,
    required TResult Function(int id) getSingleLocation,
    required TResult Function(List<int> idies) getMultiLocation,
    required TResult Function(List<String> ulrs) getCharacters,
    required TResult Function(List<String> ulrs, int id)
        getCharactersAndLocation,
  }) {
    return getSingleLocation(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getAllLocation,
    TResult? Function(String url)? getFilterLocation,
    TResult? Function(int id)? getSingleLocation,
    TResult? Function(List<int> idies)? getMultiLocation,
    TResult? Function(List<String> ulrs)? getCharacters,
    TResult? Function(List<String> ulrs, int id)? getCharactersAndLocation,
  }) {
    return getSingleLocation?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getAllLocation,
    TResult Function(String url)? getFilterLocation,
    TResult Function(int id)? getSingleLocation,
    TResult Function(List<int> idies)? getMultiLocation,
    TResult Function(List<String> ulrs)? getCharacters,
    TResult Function(List<String> ulrs, int id)? getCharactersAndLocation,
    required TResult orElse(),
  }) {
    if (getSingleLocation != null) {
      return getSingleLocation(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getAllLocation value) getAllLocation,
    required TResult Function(_getFilterLocation value) getFilterLocation,
    required TResult Function(_getSingleLocation value) getSingleLocation,
    required TResult Function(_getMultiLocation value) getMultiLocation,
    required TResult Function(_getCharacters value) getCharacters,
    required TResult Function(_getCharactersAndLocations value)
        getCharactersAndLocation,
  }) {
    return getSingleLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getAllLocation value)? getAllLocation,
    TResult? Function(_getFilterLocation value)? getFilterLocation,
    TResult? Function(_getSingleLocation value)? getSingleLocation,
    TResult? Function(_getMultiLocation value)? getMultiLocation,
    TResult? Function(_getCharacters value)? getCharacters,
    TResult? Function(_getCharactersAndLocations value)?
        getCharactersAndLocation,
  }) {
    return getSingleLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getAllLocation value)? getAllLocation,
    TResult Function(_getFilterLocation value)? getFilterLocation,
    TResult Function(_getSingleLocation value)? getSingleLocation,
    TResult Function(_getMultiLocation value)? getMultiLocation,
    TResult Function(_getCharacters value)? getCharacters,
    TResult Function(_getCharactersAndLocations value)?
        getCharactersAndLocation,
    required TResult orElse(),
  }) {
    if (getSingleLocation != null) {
      return getSingleLocation(this);
    }
    return orElse();
  }
}

abstract class _getSingleLocation implements LocationEvent {
  const factory _getSingleLocation({required final int id}) =
      _$getSingleLocationImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$getSingleLocationImplCopyWith<_$getSingleLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getMultiLocationImplCopyWith<$Res> {
  factory _$$getMultiLocationImplCopyWith(_$getMultiLocationImpl value,
          $Res Function(_$getMultiLocationImpl) then) =
      __$$getMultiLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> idies});
}

/// @nodoc
class __$$getMultiLocationImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$getMultiLocationImpl>
    implements _$$getMultiLocationImplCopyWith<$Res> {
  __$$getMultiLocationImplCopyWithImpl(_$getMultiLocationImpl _value,
      $Res Function(_$getMultiLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idies = null,
  }) {
    return _then(_$getMultiLocationImpl(
      idies: null == idies
          ? _value._idies
          : idies // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$getMultiLocationImpl implements _getMultiLocation {
  const _$getMultiLocationImpl({required final List<int> idies})
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
    return 'LocationEvent.getMultiLocation(idies: $idies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getMultiLocationImpl &&
            const DeepCollectionEquality().equals(other._idies, _idies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_idies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getMultiLocationImplCopyWith<_$getMultiLocationImpl> get copyWith =>
      __$$getMultiLocationImplCopyWithImpl<_$getMultiLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getAllLocation,
    required TResult Function(String url) getFilterLocation,
    required TResult Function(int id) getSingleLocation,
    required TResult Function(List<int> idies) getMultiLocation,
    required TResult Function(List<String> ulrs) getCharacters,
    required TResult Function(List<String> ulrs, int id)
        getCharactersAndLocation,
  }) {
    return getMultiLocation(idies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getAllLocation,
    TResult? Function(String url)? getFilterLocation,
    TResult? Function(int id)? getSingleLocation,
    TResult? Function(List<int> idies)? getMultiLocation,
    TResult? Function(List<String> ulrs)? getCharacters,
    TResult? Function(List<String> ulrs, int id)? getCharactersAndLocation,
  }) {
    return getMultiLocation?.call(idies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getAllLocation,
    TResult Function(String url)? getFilterLocation,
    TResult Function(int id)? getSingleLocation,
    TResult Function(List<int> idies)? getMultiLocation,
    TResult Function(List<String> ulrs)? getCharacters,
    TResult Function(List<String> ulrs, int id)? getCharactersAndLocation,
    required TResult orElse(),
  }) {
    if (getMultiLocation != null) {
      return getMultiLocation(idies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getAllLocation value) getAllLocation,
    required TResult Function(_getFilterLocation value) getFilterLocation,
    required TResult Function(_getSingleLocation value) getSingleLocation,
    required TResult Function(_getMultiLocation value) getMultiLocation,
    required TResult Function(_getCharacters value) getCharacters,
    required TResult Function(_getCharactersAndLocations value)
        getCharactersAndLocation,
  }) {
    return getMultiLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getAllLocation value)? getAllLocation,
    TResult? Function(_getFilterLocation value)? getFilterLocation,
    TResult? Function(_getSingleLocation value)? getSingleLocation,
    TResult? Function(_getMultiLocation value)? getMultiLocation,
    TResult? Function(_getCharacters value)? getCharacters,
    TResult? Function(_getCharactersAndLocations value)?
        getCharactersAndLocation,
  }) {
    return getMultiLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getAllLocation value)? getAllLocation,
    TResult Function(_getFilterLocation value)? getFilterLocation,
    TResult Function(_getSingleLocation value)? getSingleLocation,
    TResult Function(_getMultiLocation value)? getMultiLocation,
    TResult Function(_getCharacters value)? getCharacters,
    TResult Function(_getCharactersAndLocations value)?
        getCharactersAndLocation,
    required TResult orElse(),
  }) {
    if (getMultiLocation != null) {
      return getMultiLocation(this);
    }
    return orElse();
  }
}

abstract class _getMultiLocation implements LocationEvent {
  const factory _getMultiLocation({required final List<int> idies}) =
      _$getMultiLocationImpl;

  List<int> get idies;
  @JsonKey(ignore: true)
  _$$getMultiLocationImplCopyWith<_$getMultiLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getCharactersImplCopyWith<$Res> {
  factory _$$getCharactersImplCopyWith(
          _$getCharactersImpl value, $Res Function(_$getCharactersImpl) then) =
      __$$getCharactersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> ulrs});
}

/// @nodoc
class __$$getCharactersImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$getCharactersImpl>
    implements _$$getCharactersImplCopyWith<$Res> {
  __$$getCharactersImplCopyWithImpl(
      _$getCharactersImpl _value, $Res Function(_$getCharactersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ulrs = null,
  }) {
    return _then(_$getCharactersImpl(
      ulrs: null == ulrs
          ? _value._ulrs
          : ulrs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$getCharactersImpl implements _getCharacters {
  const _$getCharactersImpl({required final List<String> ulrs}) : _ulrs = ulrs;

  final List<String> _ulrs;
  @override
  List<String> get ulrs {
    if (_ulrs is EqualUnmodifiableListView) return _ulrs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ulrs);
  }

  @override
  String toString() {
    return 'LocationEvent.getCharacters(ulrs: $ulrs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getCharactersImpl &&
            const DeepCollectionEquality().equals(other._ulrs, _ulrs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ulrs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getCharactersImplCopyWith<_$getCharactersImpl> get copyWith =>
      __$$getCharactersImplCopyWithImpl<_$getCharactersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getAllLocation,
    required TResult Function(String url) getFilterLocation,
    required TResult Function(int id) getSingleLocation,
    required TResult Function(List<int> idies) getMultiLocation,
    required TResult Function(List<String> ulrs) getCharacters,
    required TResult Function(List<String> ulrs, int id)
        getCharactersAndLocation,
  }) {
    return getCharacters(ulrs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getAllLocation,
    TResult? Function(String url)? getFilterLocation,
    TResult? Function(int id)? getSingleLocation,
    TResult? Function(List<int> idies)? getMultiLocation,
    TResult? Function(List<String> ulrs)? getCharacters,
    TResult? Function(List<String> ulrs, int id)? getCharactersAndLocation,
  }) {
    return getCharacters?.call(ulrs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getAllLocation,
    TResult Function(String url)? getFilterLocation,
    TResult Function(int id)? getSingleLocation,
    TResult Function(List<int> idies)? getMultiLocation,
    TResult Function(List<String> ulrs)? getCharacters,
    TResult Function(List<String> ulrs, int id)? getCharactersAndLocation,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters(ulrs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getAllLocation value) getAllLocation,
    required TResult Function(_getFilterLocation value) getFilterLocation,
    required TResult Function(_getSingleLocation value) getSingleLocation,
    required TResult Function(_getMultiLocation value) getMultiLocation,
    required TResult Function(_getCharacters value) getCharacters,
    required TResult Function(_getCharactersAndLocations value)
        getCharactersAndLocation,
  }) {
    return getCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getAllLocation value)? getAllLocation,
    TResult? Function(_getFilterLocation value)? getFilterLocation,
    TResult? Function(_getSingleLocation value)? getSingleLocation,
    TResult? Function(_getMultiLocation value)? getMultiLocation,
    TResult? Function(_getCharacters value)? getCharacters,
    TResult? Function(_getCharactersAndLocations value)?
        getCharactersAndLocation,
  }) {
    return getCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getAllLocation value)? getAllLocation,
    TResult Function(_getFilterLocation value)? getFilterLocation,
    TResult Function(_getSingleLocation value)? getSingleLocation,
    TResult Function(_getMultiLocation value)? getMultiLocation,
    TResult Function(_getCharacters value)? getCharacters,
    TResult Function(_getCharactersAndLocations value)?
        getCharactersAndLocation,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters(this);
    }
    return orElse();
  }
}

abstract class _getCharacters implements LocationEvent {
  const factory _getCharacters({required final List<String> ulrs}) =
      _$getCharactersImpl;

  List<String> get ulrs;
  @JsonKey(ignore: true)
  _$$getCharactersImplCopyWith<_$getCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getCharactersAndLocationsImplCopyWith<$Res> {
  factory _$$getCharactersAndLocationsImplCopyWith(
          _$getCharactersAndLocationsImpl value,
          $Res Function(_$getCharactersAndLocationsImpl) then) =
      __$$getCharactersAndLocationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> ulrs, int id});
}

/// @nodoc
class __$$getCharactersAndLocationsImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$getCharactersAndLocationsImpl>
    implements _$$getCharactersAndLocationsImplCopyWith<$Res> {
  __$$getCharactersAndLocationsImplCopyWithImpl(
      _$getCharactersAndLocationsImpl _value,
      $Res Function(_$getCharactersAndLocationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ulrs = null,
    Object? id = null,
  }) {
    return _then(_$getCharactersAndLocationsImpl(
      ulrs: null == ulrs
          ? _value._ulrs
          : ulrs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$getCharactersAndLocationsImpl implements _getCharactersAndLocations {
  const _$getCharactersAndLocationsImpl(
      {required final List<String> ulrs, required this.id})
      : _ulrs = ulrs;

  final List<String> _ulrs;
  @override
  List<String> get ulrs {
    if (_ulrs is EqualUnmodifiableListView) return _ulrs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ulrs);
  }

  @override
  final int id;

  @override
  String toString() {
    return 'LocationEvent.getCharactersAndLocation(ulrs: $ulrs, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getCharactersAndLocationsImpl &&
            const DeepCollectionEquality().equals(other._ulrs, _ulrs) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ulrs), id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getCharactersAndLocationsImplCopyWith<_$getCharactersAndLocationsImpl>
      get copyWith => __$$getCharactersAndLocationsImplCopyWithImpl<
          _$getCharactersAndLocationsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getAllLocation,
    required TResult Function(String url) getFilterLocation,
    required TResult Function(int id) getSingleLocation,
    required TResult Function(List<int> idies) getMultiLocation,
    required TResult Function(List<String> ulrs) getCharacters,
    required TResult Function(List<String> ulrs, int id)
        getCharactersAndLocation,
  }) {
    return getCharactersAndLocation(ulrs, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getAllLocation,
    TResult? Function(String url)? getFilterLocation,
    TResult? Function(int id)? getSingleLocation,
    TResult? Function(List<int> idies)? getMultiLocation,
    TResult? Function(List<String> ulrs)? getCharacters,
    TResult? Function(List<String> ulrs, int id)? getCharactersAndLocation,
  }) {
    return getCharactersAndLocation?.call(ulrs, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getAllLocation,
    TResult Function(String url)? getFilterLocation,
    TResult Function(int id)? getSingleLocation,
    TResult Function(List<int> idies)? getMultiLocation,
    TResult Function(List<String> ulrs)? getCharacters,
    TResult Function(List<String> ulrs, int id)? getCharactersAndLocation,
    required TResult orElse(),
  }) {
    if (getCharactersAndLocation != null) {
      return getCharactersAndLocation(ulrs, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getAllLocation value) getAllLocation,
    required TResult Function(_getFilterLocation value) getFilterLocation,
    required TResult Function(_getSingleLocation value) getSingleLocation,
    required TResult Function(_getMultiLocation value) getMultiLocation,
    required TResult Function(_getCharacters value) getCharacters,
    required TResult Function(_getCharactersAndLocations value)
        getCharactersAndLocation,
  }) {
    return getCharactersAndLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getAllLocation value)? getAllLocation,
    TResult? Function(_getFilterLocation value)? getFilterLocation,
    TResult? Function(_getSingleLocation value)? getSingleLocation,
    TResult? Function(_getMultiLocation value)? getMultiLocation,
    TResult? Function(_getCharacters value)? getCharacters,
    TResult? Function(_getCharactersAndLocations value)?
        getCharactersAndLocation,
  }) {
    return getCharactersAndLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getAllLocation value)? getAllLocation,
    TResult Function(_getFilterLocation value)? getFilterLocation,
    TResult Function(_getSingleLocation value)? getSingleLocation,
    TResult Function(_getMultiLocation value)? getMultiLocation,
    TResult Function(_getCharacters value)? getCharacters,
    TResult Function(_getCharactersAndLocations value)?
        getCharactersAndLocation,
    required TResult orElse(),
  }) {
    if (getCharactersAndLocation != null) {
      return getCharactersAndLocation(this);
    }
    return orElse();
  }
}

abstract class _getCharactersAndLocations implements LocationEvent {
  const factory _getCharactersAndLocations(
      {required final List<String> ulrs,
      required final int id}) = _$getCharactersAndLocationsImpl;

  List<String> get ulrs;
  int get id;
  @JsonKey(ignore: true)
  _$$getCharactersAndLocationsImplCopyWith<_$getCharactersAndLocationsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationState {
  Status get status => throw _privateConstructorUsedError;
  List<LocationModel>? get locations => throw _privateConstructorUsedError;
  List<Character>? get characters => throw _privateConstructorUsedError;
  LocationModel? get singleLocation => throw _privateConstructorUsedError;
  String? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
  @useResult
  $Res call(
      {Status status,
      List<LocationModel>? locations,
      List<Character>? characters,
      LocationModel? singleLocation,
      String? failure});

  $LocationModelCopyWith<$Res>? get singleLocation;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locations = freezed,
    Object? characters = freezed,
    Object? singleLocation = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>?,
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>?,
      singleLocation: freezed == singleLocation
          ? _value.singleLocation
          : singleLocation // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get singleLocation {
    if (_value.singleLocation == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.singleLocation!, (value) {
      return _then(_value.copyWith(singleLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationStateImplCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$LocationStateImplCopyWith(
          _$LocationStateImpl value, $Res Function(_$LocationStateImpl) then) =
      __$$LocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      List<LocationModel>? locations,
      List<Character>? characters,
      LocationModel? singleLocation,
      String? failure});

  @override
  $LocationModelCopyWith<$Res>? get singleLocation;
}

/// @nodoc
class __$$LocationStateImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateImpl>
    implements _$$LocationStateImplCopyWith<$Res> {
  __$$LocationStateImplCopyWithImpl(
      _$LocationStateImpl _value, $Res Function(_$LocationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locations = freezed,
    Object? characters = freezed,
    Object? singleLocation = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$LocationStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      locations: freezed == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LocationModel>?,
      characters: freezed == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>?,
      singleLocation: freezed == singleLocation
          ? _value.singleLocation
          : singleLocation // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LocationStateImpl implements _LocationState {
  _$LocationStateImpl(
      {this.status = Status.LOADING,
      final List<LocationModel>? locations,
      final List<Character>? characters,
      this.singleLocation,
      this.failure})
      : _locations = locations,
        _characters = characters;

  @override
  @JsonKey()
  final Status status;
  final List<LocationModel>? _locations;
  @override
  List<LocationModel>? get locations {
    final value = _locations;
    if (value == null) return null;
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Character>? _characters;
  @override
  List<Character>? get characters {
    final value = _characters;
    if (value == null) return null;
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final LocationModel? singleLocation;
  @override
  final String? failure;

  @override
  String toString() {
    return 'LocationState(status: $status, locations: $locations, characters: $characters, singleLocation: $singleLocation, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.singleLocation, singleLocation) ||
                other.singleLocation == singleLocation) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_locations),
      const DeepCollectionEquality().hash(_characters),
      singleLocation,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      __$$LocationStateImplCopyWithImpl<_$LocationStateImpl>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  factory _LocationState(
      {final Status status,
      final List<LocationModel>? locations,
      final List<Character>? characters,
      final LocationModel? singleLocation,
      final String? failure}) = _$LocationStateImpl;

  @override
  Status get status;
  @override
  List<LocationModel>? get locations;
  @override
  List<Character>? get characters;
  @override
  LocationModel? get singleLocation;
  @override
  String? get failure;
  @override
  @JsonKey(ignore: true)
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
