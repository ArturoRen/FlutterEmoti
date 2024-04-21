// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mood_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MoodModel _$MoodModelFromJson(Map<String, dynamic> json) {
  return _MoodModel.fromJson(json);
}

/// @nodoc
mixin _$MoodModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "MoodCategoryData")
  MoodCategoryData get moodCategoryData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoodModelCopyWith<MoodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoodModelCopyWith<$Res> {
  factory $MoodModelCopyWith(MoodModel value, $Res Function(MoodModel) then) =
      _$MoodModelCopyWithImpl<$Res, MoodModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "MoodCategoryData") MoodCategoryData moodCategoryData});

  $MoodCategoryDataCopyWith<$Res> get moodCategoryData;
}

/// @nodoc
class _$MoodModelCopyWithImpl<$Res, $Val extends MoodModel>
    implements $MoodModelCopyWith<$Res> {
  _$MoodModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? moodCategoryData = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      moodCategoryData: null == moodCategoryData
          ? _value.moodCategoryData
          : moodCategoryData // ignore: cast_nullable_to_non_nullable
              as MoodCategoryData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoodCategoryDataCopyWith<$Res> get moodCategoryData {
    return $MoodCategoryDataCopyWith<$Res>(_value.moodCategoryData, (value) {
      return _then(_value.copyWith(moodCategoryData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MoodModelImplCopyWith<$Res>
    implements $MoodModelCopyWith<$Res> {
  factory _$$MoodModelImplCopyWith(
          _$MoodModelImpl value, $Res Function(_$MoodModelImpl) then) =
      __$$MoodModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "MoodCategoryData") MoodCategoryData moodCategoryData});

  @override
  $MoodCategoryDataCopyWith<$Res> get moodCategoryData;
}

/// @nodoc
class __$$MoodModelImplCopyWithImpl<$Res>
    extends _$MoodModelCopyWithImpl<$Res, _$MoodModelImpl>
    implements _$$MoodModelImplCopyWith<$Res> {
  __$$MoodModelImplCopyWithImpl(
      _$MoodModelImpl _value, $Res Function(_$MoodModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? moodCategoryData = null,
  }) {
    return _then(_$MoodModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      moodCategoryData: null == moodCategoryData
          ? _value.moodCategoryData
          : moodCategoryData // ignore: cast_nullable_to_non_nullable
              as MoodCategoryData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoodModelImpl implements _MoodModel {
  const _$MoodModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "MoodCategoryData") required this.moodCategoryData});

  factory _$MoodModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoodModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "MoodCategoryData")
  final MoodCategoryData moodCategoryData;

  @override
  String toString() {
    return 'MoodModel(id: $id, moodCategoryData: $moodCategoryData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoodModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.moodCategoryData, moodCategoryData) ||
                other.moodCategoryData == moodCategoryData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, moodCategoryData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoodModelImplCopyWith<_$MoodModelImpl> get copyWith =>
      __$$MoodModelImplCopyWithImpl<_$MoodModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoodModelImplToJson(
      this,
    );
  }
}

abstract class _MoodModel implements MoodModel {
  const factory _MoodModel(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "MoodCategoryData")
      required final MoodCategoryData moodCategoryData}) = _$MoodModelImpl;

  factory _MoodModel.fromJson(Map<String, dynamic> json) =
      _$MoodModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "MoodCategoryData")
  MoodCategoryData get moodCategoryData;
  @override
  @JsonKey(ignore: true)
  _$$MoodModelImplCopyWith<_$MoodModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MoodCategoryData _$MoodCategoryDataFromJson(Map<String, dynamic> json) {
  return _MoodCategoryData.fromJson(json);
}

/// @nodoc
mixin _$MoodCategoryData {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "local_icon")
  String get localIcon => throw _privateConstructorUsedError;
  @JsonKey(name: "remote_icon")
  String get remoteIcon => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoodCategoryDataCopyWith<MoodCategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoodCategoryDataCopyWith<$Res> {
  factory $MoodCategoryDataCopyWith(
          MoodCategoryData value, $Res Function(MoodCategoryData) then) =
      _$MoodCategoryDataCopyWithImpl<$Res, MoodCategoryData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "local_icon") String localIcon,
      @JsonKey(name: "remote_icon") String remoteIcon,
      @JsonKey(name: "title") String title});
}

/// @nodoc
class _$MoodCategoryDataCopyWithImpl<$Res, $Val extends MoodCategoryData>
    implements $MoodCategoryDataCopyWith<$Res> {
  _$MoodCategoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? localIcon = null,
    Object? remoteIcon = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      localIcon: null == localIcon
          ? _value.localIcon
          : localIcon // ignore: cast_nullable_to_non_nullable
              as String,
      remoteIcon: null == remoteIcon
          ? _value.remoteIcon
          : remoteIcon // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoodCategoryDataImplCopyWith<$Res>
    implements $MoodCategoryDataCopyWith<$Res> {
  factory _$$MoodCategoryDataImplCopyWith(_$MoodCategoryDataImpl value,
          $Res Function(_$MoodCategoryDataImpl) then) =
      __$$MoodCategoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "local_icon") String localIcon,
      @JsonKey(name: "remote_icon") String remoteIcon,
      @JsonKey(name: "title") String title});
}

/// @nodoc
class __$$MoodCategoryDataImplCopyWithImpl<$Res>
    extends _$MoodCategoryDataCopyWithImpl<$Res, _$MoodCategoryDataImpl>
    implements _$$MoodCategoryDataImplCopyWith<$Res> {
  __$$MoodCategoryDataImplCopyWithImpl(_$MoodCategoryDataImpl _value,
      $Res Function(_$MoodCategoryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? localIcon = null,
    Object? remoteIcon = null,
    Object? title = null,
  }) {
    return _then(_$MoodCategoryDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      localIcon: null == localIcon
          ? _value.localIcon
          : localIcon // ignore: cast_nullable_to_non_nullable
              as String,
      remoteIcon: null == remoteIcon
          ? _value.remoteIcon
          : remoteIcon // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoodCategoryDataImpl implements _MoodCategoryData {
  const _$MoodCategoryDataImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "local_icon") required this.localIcon,
      @JsonKey(name: "remote_icon") required this.remoteIcon,
      @JsonKey(name: "title") required this.title});

  factory _$MoodCategoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoodCategoryDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "local_icon")
  final String localIcon;
  @override
  @JsonKey(name: "remote_icon")
  final String remoteIcon;
  @override
  @JsonKey(name: "title")
  final String title;

  @override
  String toString() {
    return 'MoodCategoryData(id: $id, localIcon: $localIcon, remoteIcon: $remoteIcon, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoodCategoryDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.localIcon, localIcon) ||
                other.localIcon == localIcon) &&
            (identical(other.remoteIcon, remoteIcon) ||
                other.remoteIcon == remoteIcon) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, localIcon, remoteIcon, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoodCategoryDataImplCopyWith<_$MoodCategoryDataImpl> get copyWith =>
      __$$MoodCategoryDataImplCopyWithImpl<_$MoodCategoryDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoodCategoryDataImplToJson(
      this,
    );
  }
}

abstract class _MoodCategoryData implements MoodCategoryData {
  const factory _MoodCategoryData(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "local_icon") required final String localIcon,
          @JsonKey(name: "remote_icon") required final String remoteIcon,
          @JsonKey(name: "title") required final String title}) =
      _$MoodCategoryDataImpl;

  factory _MoodCategoryData.fromJson(Map<String, dynamic> json) =
      _$MoodCategoryDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "local_icon")
  String get localIcon;
  @override
  @JsonKey(name: "remote_icon")
  String get remoteIcon;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$MoodCategoryDataImplCopyWith<_$MoodCategoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
