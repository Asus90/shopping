// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cartitem_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartitemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loadCartItems value) loadCartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(loadCartItems value)? loadCartItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loadCartItems value)? loadCartItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartitemEventCopyWith<$Res> {
  factory $CartitemEventCopyWith(
          CartitemEvent value, $Res Function(CartitemEvent) then) =
      _$CartitemEventCopyWithImpl<$Res, CartitemEvent>;
}

/// @nodoc
class _$CartitemEventCopyWithImpl<$Res, $Val extends CartitemEvent>
    implements $CartitemEventCopyWith<$Res> {
  _$CartitemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$loadCartItemsCopyWith<$Res> {
  factory _$$loadCartItemsCopyWith(
          _$loadCartItems value, $Res Function(_$loadCartItems) then) =
      __$$loadCartItemsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadCartItemsCopyWithImpl<$Res>
    extends _$CartitemEventCopyWithImpl<$Res, _$loadCartItems>
    implements _$$loadCartItemsCopyWith<$Res> {
  __$$loadCartItemsCopyWithImpl(
      _$loadCartItems _value, $Res Function(_$loadCartItems) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadCartItems implements loadCartItems {
  const _$loadCartItems();

  @override
  String toString() {
    return 'CartitemEvent.loadCartItems()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadCartItems);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartItems,
  }) {
    return loadCartItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCartItems,
  }) {
    return loadCartItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartItems,
    required TResult orElse(),
  }) {
    if (loadCartItems != null) {
      return loadCartItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loadCartItems value) loadCartItems,
  }) {
    return loadCartItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(loadCartItems value)? loadCartItems,
  }) {
    return loadCartItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loadCartItems value)? loadCartItems,
    required TResult orElse(),
  }) {
    if (loadCartItems != null) {
      return loadCartItems(this);
    }
    return orElse();
  }
}

abstract class loadCartItems implements CartitemEvent {
  const factory loadCartItems() = _$loadCartItems;
}

/// @nodoc
mixin _$CartitemState {
  List<CartTemsModel> get cartitem => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartitemStateCopyWith<CartitemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartitemStateCopyWith<$Res> {
  factory $CartitemStateCopyWith(
          CartitemState value, $Res Function(CartitemState) then) =
      _$CartitemStateCopyWithImpl<$Res, CartitemState>;
  @useResult
  $Res call({List<CartTemsModel> cartitem, dynamic isLoading});
}

/// @nodoc
class _$CartitemStateCopyWithImpl<$Res, $Val extends CartitemState>
    implements $CartitemStateCopyWith<$Res> {
  _$CartitemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartitem = null,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      cartitem: null == cartitem
          ? _value.cartitem
          : cartitem // ignore: cast_nullable_to_non_nullable
              as List<CartTemsModel>,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $CartitemStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartTemsModel> cartitem, dynamic isLoading});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CartitemStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartitem = null,
    Object? isLoading = freezed,
  }) {
    return _then(_$_Initial(
      cartitem: null == cartitem
          ? _value._cartitem
          : cartitem // ignore: cast_nullable_to_non_nullable
              as List<CartTemsModel>,
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<CartTemsModel> cartitem, this.isLoading})
      : _cartitem = cartitem;

  final List<CartTemsModel> _cartitem;
  @override
  List<CartTemsModel> get cartitem {
    if (_cartitem is EqualUnmodifiableListView) return _cartitem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartitem);
  }

  @override
  final dynamic isLoading;

  @override
  String toString() {
    return 'CartitemState(cartitem: $cartitem, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other._cartitem, _cartitem) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cartitem),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements CartitemState {
  const factory _Initial(
      {required final List<CartTemsModel> cartitem,
      final dynamic isLoading}) = _$_Initial;

  @override
  List<CartTemsModel> get cartitem;
  @override
  dynamic get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
