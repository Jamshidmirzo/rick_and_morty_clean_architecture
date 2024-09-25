// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpisodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getEpisodes,
    required TResult Function(String urls) getFilterEpisodes,
    required TResult Function(int id) getSingleEpisodes,
    required TResult Function(List<int> idies) getMultiEpisodes,
    required TResult Function(List<String> urls) getResidentsEpisodes,
    required TResult Function(List<String> urls, int id)
        getResidentsAndLocationEpisodes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getEpisodes,
    TResult? Function(String urls)? getFilterEpisodes,
    TResult? Function(int id)? getSingleEpisodes,
    TResult? Function(List<int> idies)? getMultiEpisodes,
    TResult? Function(List<String> urls)? getResidentsEpisodes,
    TResult? Function(List<String> urls, int id)?
        getResidentsAndLocationEpisodes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getEpisodes,
    TResult Function(String urls)? getFilterEpisodes,
    TResult Function(int id)? getSingleEpisodes,
    TResult Function(List<int> idies)? getMultiEpisodes,
    TResult Function(List<String> urls)? getResidentsEpisodes,
    TResult Function(List<String> urls, int id)?
        getResidentsAndLocationEpisodes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getEpisodes value) getEpisodes,
    required TResult Function(_getFilterEpisodes value) getFilterEpisodes,
    required TResult Function(_getSingleEpisodes value) getSingleEpisodes,
    required TResult Function(_getMultiEpisodes value) getMultiEpisodes,
    required TResult Function(_getResidentsEpisodes value) getResidentsEpisodes,
    required TResult Function(_getResidentsAndLocationEpisodes value)
        getResidentsAndLocationEpisodes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getEpisodes value)? getEpisodes,
    TResult? Function(_getFilterEpisodes value)? getFilterEpisodes,
    TResult? Function(_getSingleEpisodes value)? getSingleEpisodes,
    TResult? Function(_getMultiEpisodes value)? getMultiEpisodes,
    TResult? Function(_getResidentsEpisodes value)? getResidentsEpisodes,
    TResult? Function(_getResidentsAndLocationEpisodes value)?
        getResidentsAndLocationEpisodes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getEpisodes value)? getEpisodes,
    TResult Function(_getFilterEpisodes value)? getFilterEpisodes,
    TResult Function(_getSingleEpisodes value)? getSingleEpisodes,
    TResult Function(_getMultiEpisodes value)? getMultiEpisodes,
    TResult Function(_getResidentsEpisodes value)? getResidentsEpisodes,
    TResult Function(_getResidentsAndLocationEpisodes value)?
        getResidentsAndLocationEpisodes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeEventCopyWith<$Res> {
  factory $EpisodeEventCopyWith(
          EpisodeEvent value, $Res Function(EpisodeEvent) then) =
      _$EpisodeEventCopyWithImpl<$Res, EpisodeEvent>;
}

/// @nodoc
class _$EpisodeEventCopyWithImpl<$Res, $Val extends EpisodeEvent>
    implements $EpisodeEventCopyWith<$Res> {
  _$EpisodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$getEpisodesImplCopyWith<$Res> {
  factory _$$getEpisodesImplCopyWith(
          _$getEpisodesImpl value, $Res Function(_$getEpisodesImpl) then) =
      __$$getEpisodesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$getEpisodesImplCopyWithImpl<$Res>
    extends _$EpisodeEventCopyWithImpl<$Res, _$getEpisodesImpl>
    implements _$$getEpisodesImplCopyWith<$Res> {
  __$$getEpisodesImplCopyWithImpl(
      _$getEpisodesImpl _value, $Res Function(_$getEpisodesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$getEpisodesImpl(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$getEpisodesImpl implements _getEpisodes {
  const _$getEpisodesImpl(this.name);

  @override
  final String? name;

  @override
  String toString() {
    return 'EpisodeEvent.getEpisodes(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getEpisodesImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getEpisodesImplCopyWith<_$getEpisodesImpl> get copyWith =>
      __$$getEpisodesImplCopyWithImpl<_$getEpisodesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getEpisodes,
    required TResult Function(String urls) getFilterEpisodes,
    required TResult Function(int id) getSingleEpisodes,
    required TResult Function(List<int> idies) getMultiEpisodes,
    required TResult Function(List<String> urls) getResidentsEpisodes,
    required TResult Function(List<String> urls, int id)
        getResidentsAndLocationEpisodes,
  }) {
    return getEpisodes(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getEpisodes,
    TResult? Function(String urls)? getFilterEpisodes,
    TResult? Function(int id)? getSingleEpisodes,
    TResult? Function(List<int> idies)? getMultiEpisodes,
    TResult? Function(List<String> urls)? getResidentsEpisodes,
    TResult? Function(List<String> urls, int id)?
        getResidentsAndLocationEpisodes,
  }) {
    return getEpisodes?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getEpisodes,
    TResult Function(String urls)? getFilterEpisodes,
    TResult Function(int id)? getSingleEpisodes,
    TResult Function(List<int> idies)? getMultiEpisodes,
    TResult Function(List<String> urls)? getResidentsEpisodes,
    TResult Function(List<String> urls, int id)?
        getResidentsAndLocationEpisodes,
    required TResult orElse(),
  }) {
    if (getEpisodes != null) {
      return getEpisodes(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getEpisodes value) getEpisodes,
    required TResult Function(_getFilterEpisodes value) getFilterEpisodes,
    required TResult Function(_getSingleEpisodes value) getSingleEpisodes,
    required TResult Function(_getMultiEpisodes value) getMultiEpisodes,
    required TResult Function(_getResidentsEpisodes value) getResidentsEpisodes,
    required TResult Function(_getResidentsAndLocationEpisodes value)
        getResidentsAndLocationEpisodes,
  }) {
    return getEpisodes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getEpisodes value)? getEpisodes,
    TResult? Function(_getFilterEpisodes value)? getFilterEpisodes,
    TResult? Function(_getSingleEpisodes value)? getSingleEpisodes,
    TResult? Function(_getMultiEpisodes value)? getMultiEpisodes,
    TResult? Function(_getResidentsEpisodes value)? getResidentsEpisodes,
    TResult? Function(_getResidentsAndLocationEpisodes value)?
        getResidentsAndLocationEpisodes,
  }) {
    return getEpisodes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getEpisodes value)? getEpisodes,
    TResult Function(_getFilterEpisodes value)? getFilterEpisodes,
    TResult Function(_getSingleEpisodes value)? getSingleEpisodes,
    TResult Function(_getMultiEpisodes value)? getMultiEpisodes,
    TResult Function(_getResidentsEpisodes value)? getResidentsEpisodes,
    TResult Function(_getResidentsAndLocationEpisodes value)?
        getResidentsAndLocationEpisodes,
    required TResult orElse(),
  }) {
    if (getEpisodes != null) {
      return getEpisodes(this);
    }
    return orElse();
  }
}

abstract class _getEpisodes implements EpisodeEvent {
  const factory _getEpisodes(final String? name) = _$getEpisodesImpl;

  String? get name;
  @JsonKey(ignore: true)
  _$$getEpisodesImplCopyWith<_$getEpisodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getFilterEpisodesImplCopyWith<$Res> {
  factory _$$getFilterEpisodesImplCopyWith(_$getFilterEpisodesImpl value,
          $Res Function(_$getFilterEpisodesImpl) then) =
      __$$getFilterEpisodesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String urls});
}

/// @nodoc
class __$$getFilterEpisodesImplCopyWithImpl<$Res>
    extends _$EpisodeEventCopyWithImpl<$Res, _$getFilterEpisodesImpl>
    implements _$$getFilterEpisodesImplCopyWith<$Res> {
  __$$getFilterEpisodesImplCopyWithImpl(_$getFilterEpisodesImpl _value,
      $Res Function(_$getFilterEpisodesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urls = null,
  }) {
    return _then(_$getFilterEpisodesImpl(
      null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getFilterEpisodesImpl implements _getFilterEpisodes {
  const _$getFilterEpisodesImpl(this.urls);

  @override
  final String urls;

  @override
  String toString() {
    return 'EpisodeEvent.getFilterEpisodes(urls: $urls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getFilterEpisodesImpl &&
            (identical(other.urls, urls) || other.urls == urls));
  }

  @override
  int get hashCode => Object.hash(runtimeType, urls);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getFilterEpisodesImplCopyWith<_$getFilterEpisodesImpl> get copyWith =>
      __$$getFilterEpisodesImplCopyWithImpl<_$getFilterEpisodesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getEpisodes,
    required TResult Function(String urls) getFilterEpisodes,
    required TResult Function(int id) getSingleEpisodes,
    required TResult Function(List<int> idies) getMultiEpisodes,
    required TResult Function(List<String> urls) getResidentsEpisodes,
    required TResult Function(List<String> urls, int id)
        getResidentsAndLocationEpisodes,
  }) {
    return getFilterEpisodes(urls);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getEpisodes,
    TResult? Function(String urls)? getFilterEpisodes,
    TResult? Function(int id)? getSingleEpisodes,
    TResult? Function(List<int> idies)? getMultiEpisodes,
    TResult? Function(List<String> urls)? getResidentsEpisodes,
    TResult? Function(List<String> urls, int id)?
        getResidentsAndLocationEpisodes,
  }) {
    return getFilterEpisodes?.call(urls);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getEpisodes,
    TResult Function(String urls)? getFilterEpisodes,
    TResult Function(int id)? getSingleEpisodes,
    TResult Function(List<int> idies)? getMultiEpisodes,
    TResult Function(List<String> urls)? getResidentsEpisodes,
    TResult Function(List<String> urls, int id)?
        getResidentsAndLocationEpisodes,
    required TResult orElse(),
  }) {
    if (getFilterEpisodes != null) {
      return getFilterEpisodes(urls);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getEpisodes value) getEpisodes,
    required TResult Function(_getFilterEpisodes value) getFilterEpisodes,
    required TResult Function(_getSingleEpisodes value) getSingleEpisodes,
    required TResult Function(_getMultiEpisodes value) getMultiEpisodes,
    required TResult Function(_getResidentsEpisodes value) getResidentsEpisodes,
    required TResult Function(_getResidentsAndLocationEpisodes value)
        getResidentsAndLocationEpisodes,
  }) {
    return getFilterEpisodes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getEpisodes value)? getEpisodes,
    TResult? Function(_getFilterEpisodes value)? getFilterEpisodes,
    TResult? Function(_getSingleEpisodes value)? getSingleEpisodes,
    TResult? Function(_getMultiEpisodes value)? getMultiEpisodes,
    TResult? Function(_getResidentsEpisodes value)? getResidentsEpisodes,
    TResult? Function(_getResidentsAndLocationEpisodes value)?
        getResidentsAndLocationEpisodes,
  }) {
    return getFilterEpisodes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getEpisodes value)? getEpisodes,
    TResult Function(_getFilterEpisodes value)? getFilterEpisodes,
    TResult Function(_getSingleEpisodes value)? getSingleEpisodes,
    TResult Function(_getMultiEpisodes value)? getMultiEpisodes,
    TResult Function(_getResidentsEpisodes value)? getResidentsEpisodes,
    TResult Function(_getResidentsAndLocationEpisodes value)?
        getResidentsAndLocationEpisodes,
    required TResult orElse(),
  }) {
    if (getFilterEpisodes != null) {
      return getFilterEpisodes(this);
    }
    return orElse();
  }
}

abstract class _getFilterEpisodes implements EpisodeEvent {
  const factory _getFilterEpisodes(final String urls) = _$getFilterEpisodesImpl;

  String get urls;
  @JsonKey(ignore: true)
  _$$getFilterEpisodesImplCopyWith<_$getFilterEpisodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getSingleEpisodesImplCopyWith<$Res> {
  factory _$$getSingleEpisodesImplCopyWith(_$getSingleEpisodesImpl value,
          $Res Function(_$getSingleEpisodesImpl) then) =
      __$$getSingleEpisodesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$getSingleEpisodesImplCopyWithImpl<$Res>
    extends _$EpisodeEventCopyWithImpl<$Res, _$getSingleEpisodesImpl>
    implements _$$getSingleEpisodesImplCopyWith<$Res> {
  __$$getSingleEpisodesImplCopyWithImpl(_$getSingleEpisodesImpl _value,
      $Res Function(_$getSingleEpisodesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$getSingleEpisodesImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$getSingleEpisodesImpl implements _getSingleEpisodes {
  const _$getSingleEpisodesImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'EpisodeEvent.getSingleEpisodes(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getSingleEpisodesImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getSingleEpisodesImplCopyWith<_$getSingleEpisodesImpl> get copyWith =>
      __$$getSingleEpisodesImplCopyWithImpl<_$getSingleEpisodesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getEpisodes,
    required TResult Function(String urls) getFilterEpisodes,
    required TResult Function(int id) getSingleEpisodes,
    required TResult Function(List<int> idies) getMultiEpisodes,
    required TResult Function(List<String> urls) getResidentsEpisodes,
    required TResult Function(List<String> urls, int id)
        getResidentsAndLocationEpisodes,
  }) {
    return getSingleEpisodes(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getEpisodes,
    TResult? Function(String urls)? getFilterEpisodes,
    TResult? Function(int id)? getSingleEpisodes,
    TResult? Function(List<int> idies)? getMultiEpisodes,
    TResult? Function(List<String> urls)? getResidentsEpisodes,
    TResult? Function(List<String> urls, int id)?
        getResidentsAndLocationEpisodes,
  }) {
    return getSingleEpisodes?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getEpisodes,
    TResult Function(String urls)? getFilterEpisodes,
    TResult Function(int id)? getSingleEpisodes,
    TResult Function(List<int> idies)? getMultiEpisodes,
    TResult Function(List<String> urls)? getResidentsEpisodes,
    TResult Function(List<String> urls, int id)?
        getResidentsAndLocationEpisodes,
    required TResult orElse(),
  }) {
    if (getSingleEpisodes != null) {
      return getSingleEpisodes(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getEpisodes value) getEpisodes,
    required TResult Function(_getFilterEpisodes value) getFilterEpisodes,
    required TResult Function(_getSingleEpisodes value) getSingleEpisodes,
    required TResult Function(_getMultiEpisodes value) getMultiEpisodes,
    required TResult Function(_getResidentsEpisodes value) getResidentsEpisodes,
    required TResult Function(_getResidentsAndLocationEpisodes value)
        getResidentsAndLocationEpisodes,
  }) {
    return getSingleEpisodes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getEpisodes value)? getEpisodes,
    TResult? Function(_getFilterEpisodes value)? getFilterEpisodes,
    TResult? Function(_getSingleEpisodes value)? getSingleEpisodes,
    TResult? Function(_getMultiEpisodes value)? getMultiEpisodes,
    TResult? Function(_getResidentsEpisodes value)? getResidentsEpisodes,
    TResult? Function(_getResidentsAndLocationEpisodes value)?
        getResidentsAndLocationEpisodes,
  }) {
    return getSingleEpisodes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getEpisodes value)? getEpisodes,
    TResult Function(_getFilterEpisodes value)? getFilterEpisodes,
    TResult Function(_getSingleEpisodes value)? getSingleEpisodes,
    TResult Function(_getMultiEpisodes value)? getMultiEpisodes,
    TResult Function(_getResidentsEpisodes value)? getResidentsEpisodes,
    TResult Function(_getResidentsAndLocationEpisodes value)?
        getResidentsAndLocationEpisodes,
    required TResult orElse(),
  }) {
    if (getSingleEpisodes != null) {
      return getSingleEpisodes(this);
    }
    return orElse();
  }
}

abstract class _getSingleEpisodes implements EpisodeEvent {
  const factory _getSingleEpisodes(final int id) = _$getSingleEpisodesImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$getSingleEpisodesImplCopyWith<_$getSingleEpisodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getMultiEpisodesImplCopyWith<$Res> {
  factory _$$getMultiEpisodesImplCopyWith(_$getMultiEpisodesImpl value,
          $Res Function(_$getMultiEpisodesImpl) then) =
      __$$getMultiEpisodesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> idies});
}

/// @nodoc
class __$$getMultiEpisodesImplCopyWithImpl<$Res>
    extends _$EpisodeEventCopyWithImpl<$Res, _$getMultiEpisodesImpl>
    implements _$$getMultiEpisodesImplCopyWith<$Res> {
  __$$getMultiEpisodesImplCopyWithImpl(_$getMultiEpisodesImpl _value,
      $Res Function(_$getMultiEpisodesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idies = null,
  }) {
    return _then(_$getMultiEpisodesImpl(
      null == idies
          ? _value._idies
          : idies // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$getMultiEpisodesImpl implements _getMultiEpisodes {
  const _$getMultiEpisodesImpl(final List<int> idies) : _idies = idies;

  final List<int> _idies;
  @override
  List<int> get idies {
    if (_idies is EqualUnmodifiableListView) return _idies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_idies);
  }

  @override
  String toString() {
    return 'EpisodeEvent.getMultiEpisodes(idies: $idies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getMultiEpisodesImpl &&
            const DeepCollectionEquality().equals(other._idies, _idies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_idies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getMultiEpisodesImplCopyWith<_$getMultiEpisodesImpl> get copyWith =>
      __$$getMultiEpisodesImplCopyWithImpl<_$getMultiEpisodesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getEpisodes,
    required TResult Function(String urls) getFilterEpisodes,
    required TResult Function(int id) getSingleEpisodes,
    required TResult Function(List<int> idies) getMultiEpisodes,
    required TResult Function(List<String> urls) getResidentsEpisodes,
    required TResult Function(List<String> urls, int id)
        getResidentsAndLocationEpisodes,
  }) {
    return getMultiEpisodes(idies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getEpisodes,
    TResult? Function(String urls)? getFilterEpisodes,
    TResult? Function(int id)? getSingleEpisodes,
    TResult? Function(List<int> idies)? getMultiEpisodes,
    TResult? Function(List<String> urls)? getResidentsEpisodes,
    TResult? Function(List<String> urls, int id)?
        getResidentsAndLocationEpisodes,
  }) {
    return getMultiEpisodes?.call(idies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getEpisodes,
    TResult Function(String urls)? getFilterEpisodes,
    TResult Function(int id)? getSingleEpisodes,
    TResult Function(List<int> idies)? getMultiEpisodes,
    TResult Function(List<String> urls)? getResidentsEpisodes,
    TResult Function(List<String> urls, int id)?
        getResidentsAndLocationEpisodes,
    required TResult orElse(),
  }) {
    if (getMultiEpisodes != null) {
      return getMultiEpisodes(idies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getEpisodes value) getEpisodes,
    required TResult Function(_getFilterEpisodes value) getFilterEpisodes,
    required TResult Function(_getSingleEpisodes value) getSingleEpisodes,
    required TResult Function(_getMultiEpisodes value) getMultiEpisodes,
    required TResult Function(_getResidentsEpisodes value) getResidentsEpisodes,
    required TResult Function(_getResidentsAndLocationEpisodes value)
        getResidentsAndLocationEpisodes,
  }) {
    return getMultiEpisodes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getEpisodes value)? getEpisodes,
    TResult? Function(_getFilterEpisodes value)? getFilterEpisodes,
    TResult? Function(_getSingleEpisodes value)? getSingleEpisodes,
    TResult? Function(_getMultiEpisodes value)? getMultiEpisodes,
    TResult? Function(_getResidentsEpisodes value)? getResidentsEpisodes,
    TResult? Function(_getResidentsAndLocationEpisodes value)?
        getResidentsAndLocationEpisodes,
  }) {
    return getMultiEpisodes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getEpisodes value)? getEpisodes,
    TResult Function(_getFilterEpisodes value)? getFilterEpisodes,
    TResult Function(_getSingleEpisodes value)? getSingleEpisodes,
    TResult Function(_getMultiEpisodes value)? getMultiEpisodes,
    TResult Function(_getResidentsEpisodes value)? getResidentsEpisodes,
    TResult Function(_getResidentsAndLocationEpisodes value)?
        getResidentsAndLocationEpisodes,
    required TResult orElse(),
  }) {
    if (getMultiEpisodes != null) {
      return getMultiEpisodes(this);
    }
    return orElse();
  }
}

abstract class _getMultiEpisodes implements EpisodeEvent {
  const factory _getMultiEpisodes(final List<int> idies) =
      _$getMultiEpisodesImpl;

  List<int> get idies;
  @JsonKey(ignore: true)
  _$$getMultiEpisodesImplCopyWith<_$getMultiEpisodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getResidentsEpisodesImplCopyWith<$Res> {
  factory _$$getResidentsEpisodesImplCopyWith(_$getResidentsEpisodesImpl value,
          $Res Function(_$getResidentsEpisodesImpl) then) =
      __$$getResidentsEpisodesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> urls});
}

/// @nodoc
class __$$getResidentsEpisodesImplCopyWithImpl<$Res>
    extends _$EpisodeEventCopyWithImpl<$Res, _$getResidentsEpisodesImpl>
    implements _$$getResidentsEpisodesImplCopyWith<$Res> {
  __$$getResidentsEpisodesImplCopyWithImpl(_$getResidentsEpisodesImpl _value,
      $Res Function(_$getResidentsEpisodesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urls = null,
  }) {
    return _then(_$getResidentsEpisodesImpl(
      null == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$getResidentsEpisodesImpl implements _getResidentsEpisodes {
  const _$getResidentsEpisodesImpl(final List<String> urls) : _urls = urls;

  final List<String> _urls;
  @override
  List<String> get urls {
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urls);
  }

  @override
  String toString() {
    return 'EpisodeEvent.getResidentsEpisodes(urls: $urls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getResidentsEpisodesImpl &&
            const DeepCollectionEquality().equals(other._urls, _urls));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_urls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getResidentsEpisodesImplCopyWith<_$getResidentsEpisodesImpl>
      get copyWith =>
          __$$getResidentsEpisodesImplCopyWithImpl<_$getResidentsEpisodesImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getEpisodes,
    required TResult Function(String urls) getFilterEpisodes,
    required TResult Function(int id) getSingleEpisodes,
    required TResult Function(List<int> idies) getMultiEpisodes,
    required TResult Function(List<String> urls) getResidentsEpisodes,
    required TResult Function(List<String> urls, int id)
        getResidentsAndLocationEpisodes,
  }) {
    return getResidentsEpisodes(urls);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getEpisodes,
    TResult? Function(String urls)? getFilterEpisodes,
    TResult? Function(int id)? getSingleEpisodes,
    TResult? Function(List<int> idies)? getMultiEpisodes,
    TResult? Function(List<String> urls)? getResidentsEpisodes,
    TResult? Function(List<String> urls, int id)?
        getResidentsAndLocationEpisodes,
  }) {
    return getResidentsEpisodes?.call(urls);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getEpisodes,
    TResult Function(String urls)? getFilterEpisodes,
    TResult Function(int id)? getSingleEpisodes,
    TResult Function(List<int> idies)? getMultiEpisodes,
    TResult Function(List<String> urls)? getResidentsEpisodes,
    TResult Function(List<String> urls, int id)?
        getResidentsAndLocationEpisodes,
    required TResult orElse(),
  }) {
    if (getResidentsEpisodes != null) {
      return getResidentsEpisodes(urls);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getEpisodes value) getEpisodes,
    required TResult Function(_getFilterEpisodes value) getFilterEpisodes,
    required TResult Function(_getSingleEpisodes value) getSingleEpisodes,
    required TResult Function(_getMultiEpisodes value) getMultiEpisodes,
    required TResult Function(_getResidentsEpisodes value) getResidentsEpisodes,
    required TResult Function(_getResidentsAndLocationEpisodes value)
        getResidentsAndLocationEpisodes,
  }) {
    return getResidentsEpisodes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getEpisodes value)? getEpisodes,
    TResult? Function(_getFilterEpisodes value)? getFilterEpisodes,
    TResult? Function(_getSingleEpisodes value)? getSingleEpisodes,
    TResult? Function(_getMultiEpisodes value)? getMultiEpisodes,
    TResult? Function(_getResidentsEpisodes value)? getResidentsEpisodes,
    TResult? Function(_getResidentsAndLocationEpisodes value)?
        getResidentsAndLocationEpisodes,
  }) {
    return getResidentsEpisodes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getEpisodes value)? getEpisodes,
    TResult Function(_getFilterEpisodes value)? getFilterEpisodes,
    TResult Function(_getSingleEpisodes value)? getSingleEpisodes,
    TResult Function(_getMultiEpisodes value)? getMultiEpisodes,
    TResult Function(_getResidentsEpisodes value)? getResidentsEpisodes,
    TResult Function(_getResidentsAndLocationEpisodes value)?
        getResidentsAndLocationEpisodes,
    required TResult orElse(),
  }) {
    if (getResidentsEpisodes != null) {
      return getResidentsEpisodes(this);
    }
    return orElse();
  }
}

abstract class _getResidentsEpisodes implements EpisodeEvent {
  const factory _getResidentsEpisodes(final List<String> urls) =
      _$getResidentsEpisodesImpl;

  List<String> get urls;
  @JsonKey(ignore: true)
  _$$getResidentsEpisodesImplCopyWith<_$getResidentsEpisodesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getResidentsAndLocationEpisodesImplCopyWith<$Res> {
  factory _$$getResidentsAndLocationEpisodesImplCopyWith(
          _$getResidentsAndLocationEpisodesImpl value,
          $Res Function(_$getResidentsAndLocationEpisodesImpl) then) =
      __$$getResidentsAndLocationEpisodesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> urls, int id});
}

/// @nodoc
class __$$getResidentsAndLocationEpisodesImplCopyWithImpl<$Res>
    extends _$EpisodeEventCopyWithImpl<$Res,
        _$getResidentsAndLocationEpisodesImpl>
    implements _$$getResidentsAndLocationEpisodesImplCopyWith<$Res> {
  __$$getResidentsAndLocationEpisodesImplCopyWithImpl(
      _$getResidentsAndLocationEpisodesImpl _value,
      $Res Function(_$getResidentsAndLocationEpisodesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urls = null,
    Object? id = null,
  }) {
    return _then(_$getResidentsAndLocationEpisodesImpl(
      null == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$getResidentsAndLocationEpisodesImpl
    implements _getResidentsAndLocationEpisodes {
  const _$getResidentsAndLocationEpisodesImpl(final List<String> urls, this.id)
      : _urls = urls;

  final List<String> _urls;
  @override
  List<String> get urls {
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urls);
  }

  @override
  final int id;

  @override
  String toString() {
    return 'EpisodeEvent.getResidentsAndLocationEpisodes(urls: $urls, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getResidentsAndLocationEpisodesImpl &&
            const DeepCollectionEquality().equals(other._urls, _urls) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_urls), id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getResidentsAndLocationEpisodesImplCopyWith<
          _$getResidentsAndLocationEpisodesImpl>
      get copyWith => __$$getResidentsAndLocationEpisodesImplCopyWithImpl<
          _$getResidentsAndLocationEpisodesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getEpisodes,
    required TResult Function(String urls) getFilterEpisodes,
    required TResult Function(int id) getSingleEpisodes,
    required TResult Function(List<int> idies) getMultiEpisodes,
    required TResult Function(List<String> urls) getResidentsEpisodes,
    required TResult Function(List<String> urls, int id)
        getResidentsAndLocationEpisodes,
  }) {
    return getResidentsAndLocationEpisodes(urls, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getEpisodes,
    TResult? Function(String urls)? getFilterEpisodes,
    TResult? Function(int id)? getSingleEpisodes,
    TResult? Function(List<int> idies)? getMultiEpisodes,
    TResult? Function(List<String> urls)? getResidentsEpisodes,
    TResult? Function(List<String> urls, int id)?
        getResidentsAndLocationEpisodes,
  }) {
    return getResidentsAndLocationEpisodes?.call(urls, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getEpisodes,
    TResult Function(String urls)? getFilterEpisodes,
    TResult Function(int id)? getSingleEpisodes,
    TResult Function(List<int> idies)? getMultiEpisodes,
    TResult Function(List<String> urls)? getResidentsEpisodes,
    TResult Function(List<String> urls, int id)?
        getResidentsAndLocationEpisodes,
    required TResult orElse(),
  }) {
    if (getResidentsAndLocationEpisodes != null) {
      return getResidentsAndLocationEpisodes(urls, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getEpisodes value) getEpisodes,
    required TResult Function(_getFilterEpisodes value) getFilterEpisodes,
    required TResult Function(_getSingleEpisodes value) getSingleEpisodes,
    required TResult Function(_getMultiEpisodes value) getMultiEpisodes,
    required TResult Function(_getResidentsEpisodes value) getResidentsEpisodes,
    required TResult Function(_getResidentsAndLocationEpisodes value)
        getResidentsAndLocationEpisodes,
  }) {
    return getResidentsAndLocationEpisodes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getEpisodes value)? getEpisodes,
    TResult? Function(_getFilterEpisodes value)? getFilterEpisodes,
    TResult? Function(_getSingleEpisodes value)? getSingleEpisodes,
    TResult? Function(_getMultiEpisodes value)? getMultiEpisodes,
    TResult? Function(_getResidentsEpisodes value)? getResidentsEpisodes,
    TResult? Function(_getResidentsAndLocationEpisodes value)?
        getResidentsAndLocationEpisodes,
  }) {
    return getResidentsAndLocationEpisodes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getEpisodes value)? getEpisodes,
    TResult Function(_getFilterEpisodes value)? getFilterEpisodes,
    TResult Function(_getSingleEpisodes value)? getSingleEpisodes,
    TResult Function(_getMultiEpisodes value)? getMultiEpisodes,
    TResult Function(_getResidentsEpisodes value)? getResidentsEpisodes,
    TResult Function(_getResidentsAndLocationEpisodes value)?
        getResidentsAndLocationEpisodes,
    required TResult orElse(),
  }) {
    if (getResidentsAndLocationEpisodes != null) {
      return getResidentsAndLocationEpisodes(this);
    }
    return orElse();
  }
}

abstract class _getResidentsAndLocationEpisodes implements EpisodeEvent {
  const factory _getResidentsAndLocationEpisodes(
          final List<String> urls, final int id) =
      _$getResidentsAndLocationEpisodesImpl;

  List<String> get urls;
  int get id;
  @JsonKey(ignore: true)
  _$$getResidentsAndLocationEpisodesImplCopyWith<
          _$getResidentsAndLocationEpisodesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EpisodeState {
  Status get status => throw _privateConstructorUsedError;
  String? get failure => throw _privateConstructorUsedError;
  List<Episode>? get episodes => throw _privateConstructorUsedError;
  List<Character>? get characters => throw _privateConstructorUsedError;
  Episode? get singleEpisodes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EpisodeStateCopyWith<EpisodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeStateCopyWith<$Res> {
  factory $EpisodeStateCopyWith(
          EpisodeState value, $Res Function(EpisodeState) then) =
      _$EpisodeStateCopyWithImpl<$Res, EpisodeState>;
  @useResult
  $Res call(
      {Status status,
      String? failure,
      List<Episode>? episodes,
      List<Character>? characters,
      Episode? singleEpisodes});

  $EpisodeCopyWith<$Res>? get singleEpisodes;
}

/// @nodoc
class _$EpisodeStateCopyWithImpl<$Res, $Val extends EpisodeState>
    implements $EpisodeStateCopyWith<$Res> {
  _$EpisodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = freezed,
    Object? episodes = freezed,
    Object? characters = freezed,
    Object? singleEpisodes = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String?,
      episodes: freezed == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>?,
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>?,
      singleEpisodes: freezed == singleEpisodes
          ? _value.singleEpisodes
          : singleEpisodes // ignore: cast_nullable_to_non_nullable
              as Episode?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EpisodeCopyWith<$Res>? get singleEpisodes {
    if (_value.singleEpisodes == null) {
      return null;
    }

    return $EpisodeCopyWith<$Res>(_value.singleEpisodes!, (value) {
      return _then(_value.copyWith(singleEpisodes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodeStateImplCopyWith<$Res>
    implements $EpisodeStateCopyWith<$Res> {
  factory _$$EpisodeStateImplCopyWith(
          _$EpisodeStateImpl value, $Res Function(_$EpisodeStateImpl) then) =
      __$$EpisodeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      String? failure,
      List<Episode>? episodes,
      List<Character>? characters,
      Episode? singleEpisodes});

  @override
  $EpisodeCopyWith<$Res>? get singleEpisodes;
}

/// @nodoc
class __$$EpisodeStateImplCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res, _$EpisodeStateImpl>
    implements _$$EpisodeStateImplCopyWith<$Res> {
  __$$EpisodeStateImplCopyWithImpl(
      _$EpisodeStateImpl _value, $Res Function(_$EpisodeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = freezed,
    Object? episodes = freezed,
    Object? characters = freezed,
    Object? singleEpisodes = freezed,
  }) {
    return _then(_$EpisodeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String?,
      episodes: freezed == episodes
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>?,
      characters: freezed == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>?,
      singleEpisodes: freezed == singleEpisodes
          ? _value.singleEpisodes
          : singleEpisodes // ignore: cast_nullable_to_non_nullable
              as Episode?,
    ));
  }
}

/// @nodoc

class _$EpisodeStateImpl implements _EpisodeState {
  _$EpisodeStateImpl(
      {this.status = Status.LOADING,
      this.failure,
      final List<Episode>? episodes,
      final List<Character>? characters,
      this.singleEpisodes})
      : _episodes = episodes,
        _characters = characters;

  @override
  @JsonKey()
  final Status status;
  @override
  final String? failure;
  final List<Episode>? _episodes;
  @override
  List<Episode>? get episodes {
    final value = _episodes;
    if (value == null) return null;
    if (_episodes is EqualUnmodifiableListView) return _episodes;
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
  final Episode? singleEpisodes;

  @override
  String toString() {
    return 'EpisodeState(status: $status, failure: $failure, episodes: $episodes, characters: $characters, singleEpisodes: $singleEpisodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality().equals(other._episodes, _episodes) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.singleEpisodes, singleEpisodes) ||
                other.singleEpisodes == singleEpisodes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      failure,
      const DeepCollectionEquality().hash(_episodes),
      const DeepCollectionEquality().hash(_characters),
      singleEpisodes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeStateImplCopyWith<_$EpisodeStateImpl> get copyWith =>
      __$$EpisodeStateImplCopyWithImpl<_$EpisodeStateImpl>(this, _$identity);
}

abstract class _EpisodeState implements EpisodeState {
  factory _EpisodeState(
      {final Status status,
      final String? failure,
      final List<Episode>? episodes,
      final List<Character>? characters,
      final Episode? singleEpisodes}) = _$EpisodeStateImpl;

  @override
  Status get status;
  @override
  String? get failure;
  @override
  List<Episode>? get episodes;
  @override
  List<Character>? get characters;
  @override
  Episode? get singleEpisodes;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeStateImplCopyWith<_$EpisodeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
