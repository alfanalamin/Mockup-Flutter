class Input$ProvinceInput {
  factory Input$ProvinceInput({
    required String id,
    String? name,
  }) =>
      Input$ProvinceInput._({
        r'id': id,
        if (name != null) r'name': name,
      });

  Input$ProvinceInput._(this._$data);

  factory Input$ProvinceInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input$ProvinceInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  String? get name => (_$data['name'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Input$ProvinceInput<Input$ProvinceInput> get copyWith =>
      CopyWith$Input$ProvinceInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ProvinceInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      l$id,
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProvinceInput<TRes> {
  factory CopyWith$Input$ProvinceInput(
    Input$ProvinceInput instance,
    TRes Function(Input$ProvinceInput) then,
  ) = _CopyWithImpl$Input$ProvinceInput;

  factory CopyWith$Input$ProvinceInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProvinceInput;

  TRes call({
    String? id,
    String? name,
  });
}

class _CopyWithImpl$Input$ProvinceInput<TRes>
    implements CopyWith$Input$ProvinceInput<TRes> {
  _CopyWithImpl$Input$ProvinceInput(
    this._instance,
    this._then,
  );

  final Input$ProvinceInput _instance;

  final TRes Function(Input$ProvinceInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input$ProvinceInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Input$ProvinceInput<TRes>
    implements CopyWith$Input$ProvinceInput<TRes> {
  _CopyWithStubImpl$Input$ProvinceInput(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
  }) =>
      _res;
}

class Input$RegencyInput {
  factory Input$RegencyInput({
    required String id,
    String? name,
    Input$ProvinceInput? province,
  }) =>
      Input$RegencyInput._({
        r'id': id,
        if (name != null) r'name': name,
        if (province != null) r'province': province,
      });

  Input$RegencyInput._(this._$data);

  factory Input$RegencyInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('province')) {
      final l$province = data['province'];
      result$data['province'] = l$province == null
          ? null
          : Input$ProvinceInput.fromJson((l$province as Map<String, dynamic>));
    }
    return Input$RegencyInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  String? get name => (_$data['name'] as String?);
  Input$ProvinceInput? get province =>
      (_$data['province'] as Input$ProvinceInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('province')) {
      final l$province = province;
      result$data['province'] = l$province?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$RegencyInput<Input$RegencyInput> get copyWith =>
      CopyWith$Input$RegencyInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RegencyInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$province = province;
    final lOther$province = other.province;
    if (_$data.containsKey('province') !=
        other._$data.containsKey('province')) {
      return false;
    }
    if (l$province != lOther$province) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$province = province;
    return Object.hashAll([
      l$id,
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('province') ? l$province : const {},
    ]);
  }
}

abstract class CopyWith$Input$RegencyInput<TRes> {
  factory CopyWith$Input$RegencyInput(
    Input$RegencyInput instance,
    TRes Function(Input$RegencyInput) then,
  ) = _CopyWithImpl$Input$RegencyInput;

  factory CopyWith$Input$RegencyInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RegencyInput;

  TRes call({
    String? id,
    String? name,
    Input$ProvinceInput? province,
  });
  CopyWith$Input$ProvinceInput<TRes> get province;
}

class _CopyWithImpl$Input$RegencyInput<TRes>
    implements CopyWith$Input$RegencyInput<TRes> {
  _CopyWithImpl$Input$RegencyInput(
    this._instance,
    this._then,
  );

  final Input$RegencyInput _instance;

  final TRes Function(Input$RegencyInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? province = _undefined,
  }) =>
      _then(Input$RegencyInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (name != _undefined) 'name': (name as String?),
        if (province != _undefined)
          'province': (province as Input$ProvinceInput?),
      }));
  CopyWith$Input$ProvinceInput<TRes> get province {
    final local$province = _instance.province;
    return local$province == null
        ? CopyWith$Input$ProvinceInput.stub(_then(_instance))
        : CopyWith$Input$ProvinceInput(
            local$province, (e) => call(province: e));
  }
}

class _CopyWithStubImpl$Input$RegencyInput<TRes>
    implements CopyWith$Input$RegencyInput<TRes> {
  _CopyWithStubImpl$Input$RegencyInput(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Input$ProvinceInput? province,
  }) =>
      _res;
  CopyWith$Input$ProvinceInput<TRes> get province =>
      CopyWith$Input$ProvinceInput.stub(_res);
}

class Input$DistrictInput {
  factory Input$DistrictInput({
    required String id,
    String? name,
    Input$RegencyInput? regency,
  }) =>
      Input$DistrictInput._({
        r'id': id,
        if (name != null) r'name': name,
        if (regency != null) r'regency': regency,
      });

  Input$DistrictInput._(this._$data);

  factory Input$DistrictInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('regency')) {
      final l$regency = data['regency'];
      result$data['regency'] = l$regency == null
          ? null
          : Input$RegencyInput.fromJson((l$regency as Map<String, dynamic>));
    }
    return Input$DistrictInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  String? get name => (_$data['name'] as String?);
  Input$RegencyInput? get regency => (_$data['regency'] as Input$RegencyInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('regency')) {
      final l$regency = regency;
      result$data['regency'] = l$regency?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DistrictInput<Input$DistrictInput> get copyWith =>
      CopyWith$Input$DistrictInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$DistrictInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$regency = regency;
    final lOther$regency = other.regency;
    if (_$data.containsKey('regency') != other._$data.containsKey('regency')) {
      return false;
    }
    if (l$regency != lOther$regency) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$regency = regency;
    return Object.hashAll([
      l$id,
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('regency') ? l$regency : const {},
    ]);
  }
}

abstract class CopyWith$Input$DistrictInput<TRes> {
  factory CopyWith$Input$DistrictInput(
    Input$DistrictInput instance,
    TRes Function(Input$DistrictInput) then,
  ) = _CopyWithImpl$Input$DistrictInput;

  factory CopyWith$Input$DistrictInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DistrictInput;

  TRes call({
    String? id,
    String? name,
    Input$RegencyInput? regency,
  });
  CopyWith$Input$RegencyInput<TRes> get regency;
}

class _CopyWithImpl$Input$DistrictInput<TRes>
    implements CopyWith$Input$DistrictInput<TRes> {
  _CopyWithImpl$Input$DistrictInput(
    this._instance,
    this._then,
  );

  final Input$DistrictInput _instance;

  final TRes Function(Input$DistrictInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? regency = _undefined,
  }) =>
      _then(Input$DistrictInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (name != _undefined) 'name': (name as String?),
        if (regency != _undefined) 'regency': (regency as Input$RegencyInput?),
      }));
  CopyWith$Input$RegencyInput<TRes> get regency {
    final local$regency = _instance.regency;
    return local$regency == null
        ? CopyWith$Input$RegencyInput.stub(_then(_instance))
        : CopyWith$Input$RegencyInput(local$regency, (e) => call(regency: e));
  }
}

class _CopyWithStubImpl$Input$DistrictInput<TRes>
    implements CopyWith$Input$DistrictInput<TRes> {
  _CopyWithStubImpl$Input$DistrictInput(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Input$RegencyInput? regency,
  }) =>
      _res;
  CopyWith$Input$RegencyInput<TRes> get regency =>
      CopyWith$Input$RegencyInput.stub(_res);
}

class Input$SubDistrictInput {
  factory Input$SubDistrictInput({
    required String id,
    String? name,
    Input$DistrictInput? district,
  }) =>
      Input$SubDistrictInput._({
        r'id': id,
        if (name != null) r'name': name,
        if (district != null) r'district': district,
      });

  Input$SubDistrictInput._(this._$data);

  factory Input$SubDistrictInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('district')) {
      final l$district = data['district'];
      result$data['district'] = l$district == null
          ? null
          : Input$DistrictInput.fromJson((l$district as Map<String, dynamic>));
    }
    return Input$SubDistrictInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  String? get name => (_$data['name'] as String?);
  Input$DistrictInput? get district =>
      (_$data['district'] as Input$DistrictInput?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('district')) {
      final l$district = district;
      result$data['district'] = l$district?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$SubDistrictInput<Input$SubDistrictInput> get copyWith =>
      CopyWith$Input$SubDistrictInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$SubDistrictInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$district = district;
    final lOther$district = other.district;
    if (_$data.containsKey('district') !=
        other._$data.containsKey('district')) {
      return false;
    }
    if (l$district != lOther$district) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$district = district;
    return Object.hashAll([
      l$id,
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('district') ? l$district : const {},
    ]);
  }
}

abstract class CopyWith$Input$SubDistrictInput<TRes> {
  factory CopyWith$Input$SubDistrictInput(
    Input$SubDistrictInput instance,
    TRes Function(Input$SubDistrictInput) then,
  ) = _CopyWithImpl$Input$SubDistrictInput;

  factory CopyWith$Input$SubDistrictInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SubDistrictInput;

  TRes call({
    String? id,
    String? name,
    Input$DistrictInput? district,
  });
  CopyWith$Input$DistrictInput<TRes> get district;
}

class _CopyWithImpl$Input$SubDistrictInput<TRes>
    implements CopyWith$Input$SubDistrictInput<TRes> {
  _CopyWithImpl$Input$SubDistrictInput(
    this._instance,
    this._then,
  );

  final Input$SubDistrictInput _instance;

  final TRes Function(Input$SubDistrictInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? district = _undefined,
  }) =>
      _then(Input$SubDistrictInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (name != _undefined) 'name': (name as String?),
        if (district != _undefined)
          'district': (district as Input$DistrictInput?),
      }));
  CopyWith$Input$DistrictInput<TRes> get district {
    final local$district = _instance.district;
    return local$district == null
        ? CopyWith$Input$DistrictInput.stub(_then(_instance))
        : CopyWith$Input$DistrictInput(
            local$district, (e) => call(district: e));
  }
}

class _CopyWithStubImpl$Input$SubDistrictInput<TRes>
    implements CopyWith$Input$SubDistrictInput<TRes> {
  _CopyWithStubImpl$Input$SubDistrictInput(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Input$DistrictInput? district,
  }) =>
      _res;
  CopyWith$Input$DistrictInput<TRes> get district =>
      CopyWith$Input$DistrictInput.stub(_res);
}

class Input$UserMeUpdateDto {
  factory Input$UserMeUpdateDto({
    String? name,
    String? email,
    Input$UserDetailDto? detail,
  }) =>
      Input$UserMeUpdateDto._({
        if (name != null) r'name': name,
        if (email != null) r'email': email,
        if (detail != null) r'detail': detail,
      });

  Input$UserMeUpdateDto._(this._$data);

  factory Input$UserMeUpdateDto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('detail')) {
      final l$detail = data['detail'];
      result$data['detail'] = l$detail == null
          ? null
          : Input$UserDetailDto.fromJson((l$detail as Map<String, dynamic>));
    }
    return Input$UserMeUpdateDto._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);
  String? get email => (_$data['email'] as String?);
  Input$UserDetailDto? get detail => (_$data['detail'] as Input$UserDetailDto?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('detail')) {
      final l$detail = detail;
      result$data['detail'] = l$detail?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$UserMeUpdateDto<Input$UserMeUpdateDto> get copyWith =>
      CopyWith$Input$UserMeUpdateDto(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserMeUpdateDto) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$detail = detail;
    final lOther$detail = other.detail;
    if (_$data.containsKey('detail') != other._$data.containsKey('detail')) {
      return false;
    }
    if (l$detail != lOther$detail) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$detail = detail;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('detail') ? l$detail : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserMeUpdateDto<TRes> {
  factory CopyWith$Input$UserMeUpdateDto(
    Input$UserMeUpdateDto instance,
    TRes Function(Input$UserMeUpdateDto) then,
  ) = _CopyWithImpl$Input$UserMeUpdateDto;

  factory CopyWith$Input$UserMeUpdateDto.stub(TRes res) =
      _CopyWithStubImpl$Input$UserMeUpdateDto;

  TRes call({
    String? name,
    String? email,
    Input$UserDetailDto? detail,
  });
  CopyWith$Input$UserDetailDto<TRes> get detail;
}

class _CopyWithImpl$Input$UserMeUpdateDto<TRes>
    implements CopyWith$Input$UserMeUpdateDto<TRes> {
  _CopyWithImpl$Input$UserMeUpdateDto(
    this._instance,
    this._then,
  );

  final Input$UserMeUpdateDto _instance;

  final TRes Function(Input$UserMeUpdateDto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? detail = _undefined,
  }) =>
      _then(Input$UserMeUpdateDto._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (email != _undefined) 'email': (email as String?),
        if (detail != _undefined) 'detail': (detail as Input$UserDetailDto?),
      }));
  CopyWith$Input$UserDetailDto<TRes> get detail {
    final local$detail = _instance.detail;
    return local$detail == null
        ? CopyWith$Input$UserDetailDto.stub(_then(_instance))
        : CopyWith$Input$UserDetailDto(local$detail, (e) => call(detail: e));
  }
}

class _CopyWithStubImpl$Input$UserMeUpdateDto<TRes>
    implements CopyWith$Input$UserMeUpdateDto<TRes> {
  _CopyWithStubImpl$Input$UserMeUpdateDto(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    Input$UserDetailDto? detail,
  }) =>
      _res;
  CopyWith$Input$UserDetailDto<TRes> get detail =>
      CopyWith$Input$UserDetailDto.stub(_res);
}

class Input$UserDetailDto {
  factory Input$UserDetailDto({
    String? gender,
    String? address,
    String? birth,
    String? idCardNumber,
    String? idCardSelfiePicture,
    double? locationLat,
    double? locationLng,
    Input$ProvinceInput? province,
    Input$RegencyInput? regency,
    Input$DistrictInput? district,
    Input$SubDistrictInput? subDistrict,
    Input$RegencyInput? cityOfBirth,
    String? verifiedAt,
    String? rejectedAt,
    String? rejectionReason,
    String? bio,
  }) =>
      Input$UserDetailDto._({
        if (gender != null) r'gender': gender,
        if (address != null) r'address': address,
        if (birth != null) r'birth': birth,
        if (idCardNumber != null) r'idCardNumber': idCardNumber,
        if (idCardSelfiePicture != null)
          r'idCardSelfiePicture': idCardSelfiePicture,
        if (locationLat != null) r'locationLat': locationLat,
        if (locationLng != null) r'locationLng': locationLng,
        if (province != null) r'province': province,
        if (regency != null) r'regency': regency,
        if (district != null) r'district': district,
        if (subDistrict != null) r'subDistrict': subDistrict,
        if (cityOfBirth != null) r'cityOfBirth': cityOfBirth,
        if (verifiedAt != null) r'verifiedAt': verifiedAt,
        if (rejectedAt != null) r'rejectedAt': rejectedAt,
        if (rejectionReason != null) r'rejectionReason': rejectionReason,
        if (bio != null) r'bio': bio,
      });

  Input$UserDetailDto._(this._$data);

  factory Input$UserDetailDto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = (l$gender as String?);
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = (l$address as String?);
    }
    if (data.containsKey('birth')) {
      final l$birth = data['birth'];
      result$data['birth'] = (l$birth as String?);
    }
    if (data.containsKey('idCardNumber')) {
      final l$idCardNumber = data['idCardNumber'];
      result$data['idCardNumber'] = (l$idCardNumber as String?);
    }
    if (data.containsKey('idCardSelfiePicture')) {
      final l$idCardSelfiePicture = data['idCardSelfiePicture'];
      result$data['idCardSelfiePicture'] = (l$idCardSelfiePicture as String?);
    }
    if (data.containsKey('locationLat')) {
      final l$locationLat = data['locationLat'];
      result$data['locationLat'] = (l$locationLat as num?)?.toDouble();
    }
    if (data.containsKey('locationLng')) {
      final l$locationLng = data['locationLng'];
      result$data['locationLng'] = (l$locationLng as num?)?.toDouble();
    }
    if (data.containsKey('province')) {
      final l$province = data['province'];
      result$data['province'] = l$province == null
          ? null
          : Input$ProvinceInput.fromJson((l$province as Map<String, dynamic>));
    }
    if (data.containsKey('regency')) {
      final l$regency = data['regency'];
      result$data['regency'] = l$regency == null
          ? null
          : Input$RegencyInput.fromJson((l$regency as Map<String, dynamic>));
    }
    if (data.containsKey('district')) {
      final l$district = data['district'];
      result$data['district'] = l$district == null
          ? null
          : Input$DistrictInput.fromJson((l$district as Map<String, dynamic>));
    }
    if (data.containsKey('subDistrict')) {
      final l$subDistrict = data['subDistrict'];
      result$data['subDistrict'] = l$subDistrict == null
          ? null
          : Input$SubDistrictInput.fromJson(
              (l$subDistrict as Map<String, dynamic>));
    }
    if (data.containsKey('cityOfBirth')) {
      final l$cityOfBirth = data['cityOfBirth'];
      result$data['cityOfBirth'] = l$cityOfBirth == null
          ? null
          : Input$RegencyInput.fromJson(
              (l$cityOfBirth as Map<String, dynamic>));
    }
    if (data.containsKey('verifiedAt')) {
      final l$verifiedAt = data['verifiedAt'];
      result$data['verifiedAt'] = (l$verifiedAt as String?);
    }
    if (data.containsKey('rejectedAt')) {
      final l$rejectedAt = data['rejectedAt'];
      result$data['rejectedAt'] = (l$rejectedAt as String?);
    }
    if (data.containsKey('rejectionReason')) {
      final l$rejectionReason = data['rejectionReason'];
      result$data['rejectionReason'] = (l$rejectionReason as String?);
    }
    if (data.containsKey('bio')) {
      final l$bio = data['bio'];
      result$data['bio'] = (l$bio as String?);
    }
    return Input$UserDetailDto._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get gender => (_$data['gender'] as String?);
  String? get address => (_$data['address'] as String?);
  String? get birth => (_$data['birth'] as String?);
  String? get idCardNumber => (_$data['idCardNumber'] as String?);
  String? get idCardSelfiePicture => (_$data['idCardSelfiePicture'] as String?);
  double? get locationLat => (_$data['locationLat'] as double?);
  double? get locationLng => (_$data['locationLng'] as double?);
  Input$ProvinceInput? get province =>
      (_$data['province'] as Input$ProvinceInput?);
  Input$RegencyInput? get regency => (_$data['regency'] as Input$RegencyInput?);
  Input$DistrictInput? get district =>
      (_$data['district'] as Input$DistrictInput?);
  Input$SubDistrictInput? get subDistrict =>
      (_$data['subDistrict'] as Input$SubDistrictInput?);
  Input$RegencyInput? get cityOfBirth =>
      (_$data['cityOfBirth'] as Input$RegencyInput?);
  String? get verifiedAt => (_$data['verifiedAt'] as String?);
  String? get rejectedAt => (_$data['rejectedAt'] as String?);
  String? get rejectionReason => (_$data['rejectionReason'] as String?);
  String? get bio => (_$data['bio'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender;
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address;
    }
    if (_$data.containsKey('birth')) {
      final l$birth = birth;
      result$data['birth'] = l$birth;
    }
    if (_$data.containsKey('idCardNumber')) {
      final l$idCardNumber = idCardNumber;
      result$data['idCardNumber'] = l$idCardNumber;
    }
    if (_$data.containsKey('idCardSelfiePicture')) {
      final l$idCardSelfiePicture = idCardSelfiePicture;
      result$data['idCardSelfiePicture'] = l$idCardSelfiePicture;
    }
    if (_$data.containsKey('locationLat')) {
      final l$locationLat = locationLat;
      result$data['locationLat'] = l$locationLat;
    }
    if (_$data.containsKey('locationLng')) {
      final l$locationLng = locationLng;
      result$data['locationLng'] = l$locationLng;
    }
    if (_$data.containsKey('province')) {
      final l$province = province;
      result$data['province'] = l$province?.toJson();
    }
    if (_$data.containsKey('regency')) {
      final l$regency = regency;
      result$data['regency'] = l$regency?.toJson();
    }
    if (_$data.containsKey('district')) {
      final l$district = district;
      result$data['district'] = l$district?.toJson();
    }
    if (_$data.containsKey('subDistrict')) {
      final l$subDistrict = subDistrict;
      result$data['subDistrict'] = l$subDistrict?.toJson();
    }
    if (_$data.containsKey('cityOfBirth')) {
      final l$cityOfBirth = cityOfBirth;
      result$data['cityOfBirth'] = l$cityOfBirth?.toJson();
    }
    if (_$data.containsKey('verifiedAt')) {
      final l$verifiedAt = verifiedAt;
      result$data['verifiedAt'] = l$verifiedAt;
    }
    if (_$data.containsKey('rejectedAt')) {
      final l$rejectedAt = rejectedAt;
      result$data['rejectedAt'] = l$rejectedAt;
    }
    if (_$data.containsKey('rejectionReason')) {
      final l$rejectionReason = rejectionReason;
      result$data['rejectionReason'] = l$rejectionReason;
    }
    if (_$data.containsKey('bio')) {
      final l$bio = bio;
      result$data['bio'] = l$bio;
    }
    return result$data;
  }

  CopyWith$Input$UserDetailDto<Input$UserDetailDto> get copyWith =>
      CopyWith$Input$UserDetailDto(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserDetailDto) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$birth = birth;
    final lOther$birth = other.birth;
    if (_$data.containsKey('birth') != other._$data.containsKey('birth')) {
      return false;
    }
    if (l$birth != lOther$birth) {
      return false;
    }
    final l$idCardNumber = idCardNumber;
    final lOther$idCardNumber = other.idCardNumber;
    if (_$data.containsKey('idCardNumber') !=
        other._$data.containsKey('idCardNumber')) {
      return false;
    }
    if (l$idCardNumber != lOther$idCardNumber) {
      return false;
    }
    final l$idCardSelfiePicture = idCardSelfiePicture;
    final lOther$idCardSelfiePicture = other.idCardSelfiePicture;
    if (_$data.containsKey('idCardSelfiePicture') !=
        other._$data.containsKey('idCardSelfiePicture')) {
      return false;
    }
    if (l$idCardSelfiePicture != lOther$idCardSelfiePicture) {
      return false;
    }
    final l$locationLat = locationLat;
    final lOther$locationLat = other.locationLat;
    if (_$data.containsKey('locationLat') !=
        other._$data.containsKey('locationLat')) {
      return false;
    }
    if (l$locationLat != lOther$locationLat) {
      return false;
    }
    final l$locationLng = locationLng;
    final lOther$locationLng = other.locationLng;
    if (_$data.containsKey('locationLng') !=
        other._$data.containsKey('locationLng')) {
      return false;
    }
    if (l$locationLng != lOther$locationLng) {
      return false;
    }
    final l$province = province;
    final lOther$province = other.province;
    if (_$data.containsKey('province') !=
        other._$data.containsKey('province')) {
      return false;
    }
    if (l$province != lOther$province) {
      return false;
    }
    final l$regency = regency;
    final lOther$regency = other.regency;
    if (_$data.containsKey('regency') != other._$data.containsKey('regency')) {
      return false;
    }
    if (l$regency != lOther$regency) {
      return false;
    }
    final l$district = district;
    final lOther$district = other.district;
    if (_$data.containsKey('district') !=
        other._$data.containsKey('district')) {
      return false;
    }
    if (l$district != lOther$district) {
      return false;
    }
    final l$subDistrict = subDistrict;
    final lOther$subDistrict = other.subDistrict;
    if (_$data.containsKey('subDistrict') !=
        other._$data.containsKey('subDistrict')) {
      return false;
    }
    if (l$subDistrict != lOther$subDistrict) {
      return false;
    }
    final l$cityOfBirth = cityOfBirth;
    final lOther$cityOfBirth = other.cityOfBirth;
    if (_$data.containsKey('cityOfBirth') !=
        other._$data.containsKey('cityOfBirth')) {
      return false;
    }
    if (l$cityOfBirth != lOther$cityOfBirth) {
      return false;
    }
    final l$verifiedAt = verifiedAt;
    final lOther$verifiedAt = other.verifiedAt;
    if (_$data.containsKey('verifiedAt') !=
        other._$data.containsKey('verifiedAt')) {
      return false;
    }
    if (l$verifiedAt != lOther$verifiedAt) {
      return false;
    }
    final l$rejectedAt = rejectedAt;
    final lOther$rejectedAt = other.rejectedAt;
    if (_$data.containsKey('rejectedAt') !=
        other._$data.containsKey('rejectedAt')) {
      return false;
    }
    if (l$rejectedAt != lOther$rejectedAt) {
      return false;
    }
    final l$rejectionReason = rejectionReason;
    final lOther$rejectionReason = other.rejectionReason;
    if (_$data.containsKey('rejectionReason') !=
        other._$data.containsKey('rejectionReason')) {
      return false;
    }
    if (l$rejectionReason != lOther$rejectionReason) {
      return false;
    }
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (_$data.containsKey('bio') != other._$data.containsKey('bio')) {
      return false;
    }
    if (l$bio != lOther$bio) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$gender = gender;
    final l$address = address;
    final l$birth = birth;
    final l$idCardNumber = idCardNumber;
    final l$idCardSelfiePicture = idCardSelfiePicture;
    final l$locationLat = locationLat;
    final l$locationLng = locationLng;
    final l$province = province;
    final l$regency = regency;
    final l$district = district;
    final l$subDistrict = subDistrict;
    final l$cityOfBirth = cityOfBirth;
    final l$verifiedAt = verifiedAt;
    final l$rejectedAt = rejectedAt;
    final l$rejectionReason = rejectionReason;
    final l$bio = bio;
    return Object.hashAll([
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('birth') ? l$birth : const {},
      _$data.containsKey('idCardNumber') ? l$idCardNumber : const {},
      _$data.containsKey('idCardSelfiePicture')
          ? l$idCardSelfiePicture
          : const {},
      _$data.containsKey('locationLat') ? l$locationLat : const {},
      _$data.containsKey('locationLng') ? l$locationLng : const {},
      _$data.containsKey('province') ? l$province : const {},
      _$data.containsKey('regency') ? l$regency : const {},
      _$data.containsKey('district') ? l$district : const {},
      _$data.containsKey('subDistrict') ? l$subDistrict : const {},
      _$data.containsKey('cityOfBirth') ? l$cityOfBirth : const {},
      _$data.containsKey('verifiedAt') ? l$verifiedAt : const {},
      _$data.containsKey('rejectedAt') ? l$rejectedAt : const {},
      _$data.containsKey('rejectionReason') ? l$rejectionReason : const {},
      _$data.containsKey('bio') ? l$bio : const {},
    ]);
  }
}

abstract class CopyWith$Input$UserDetailDto<TRes> {
  factory CopyWith$Input$UserDetailDto(
    Input$UserDetailDto instance,
    TRes Function(Input$UserDetailDto) then,
  ) = _CopyWithImpl$Input$UserDetailDto;

  factory CopyWith$Input$UserDetailDto.stub(TRes res) =
      _CopyWithStubImpl$Input$UserDetailDto;

  TRes call({
    String? gender,
    String? address,
    String? birth,
    String? idCardNumber,
    String? idCardSelfiePicture,
    double? locationLat,
    double? locationLng,
    Input$ProvinceInput? province,
    Input$RegencyInput? regency,
    Input$DistrictInput? district,
    Input$SubDistrictInput? subDistrict,
    Input$RegencyInput? cityOfBirth,
    String? verifiedAt,
    String? rejectedAt,
    String? rejectionReason,
    String? bio,
  });
  CopyWith$Input$ProvinceInput<TRes> get province;
  CopyWith$Input$RegencyInput<TRes> get regency;
  CopyWith$Input$DistrictInput<TRes> get district;
  CopyWith$Input$SubDistrictInput<TRes> get subDistrict;
  CopyWith$Input$RegencyInput<TRes> get cityOfBirth;
}

class _CopyWithImpl$Input$UserDetailDto<TRes>
    implements CopyWith$Input$UserDetailDto<TRes> {
  _CopyWithImpl$Input$UserDetailDto(
    this._instance,
    this._then,
  );

  final Input$UserDetailDto _instance;

  final TRes Function(Input$UserDetailDto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gender = _undefined,
    Object? address = _undefined,
    Object? birth = _undefined,
    Object? idCardNumber = _undefined,
    Object? idCardSelfiePicture = _undefined,
    Object? locationLat = _undefined,
    Object? locationLng = _undefined,
    Object? province = _undefined,
    Object? regency = _undefined,
    Object? district = _undefined,
    Object? subDistrict = _undefined,
    Object? cityOfBirth = _undefined,
    Object? verifiedAt = _undefined,
    Object? rejectedAt = _undefined,
    Object? rejectionReason = _undefined,
    Object? bio = _undefined,
  }) =>
      _then(Input$UserDetailDto._({
        ..._instance._$data,
        if (gender != _undefined) 'gender': (gender as String?),
        if (address != _undefined) 'address': (address as String?),
        if (birth != _undefined) 'birth': (birth as String?),
        if (idCardNumber != _undefined)
          'idCardNumber': (idCardNumber as String?),
        if (idCardSelfiePicture != _undefined)
          'idCardSelfiePicture': (idCardSelfiePicture as String?),
        if (locationLat != _undefined) 'locationLat': (locationLat as double?),
        if (locationLng != _undefined) 'locationLng': (locationLng as double?),
        if (province != _undefined)
          'province': (province as Input$ProvinceInput?),
        if (regency != _undefined) 'regency': (regency as Input$RegencyInput?),
        if (district != _undefined)
          'district': (district as Input$DistrictInput?),
        if (subDistrict != _undefined)
          'subDistrict': (subDistrict as Input$SubDistrictInput?),
        if (cityOfBirth != _undefined)
          'cityOfBirth': (cityOfBirth as Input$RegencyInput?),
        if (verifiedAt != _undefined) 'verifiedAt': (verifiedAt as String?),
        if (rejectedAt != _undefined) 'rejectedAt': (rejectedAt as String?),
        if (rejectionReason != _undefined)
          'rejectionReason': (rejectionReason as String?),
        if (bio != _undefined) 'bio': (bio as String?),
      }));
  CopyWith$Input$ProvinceInput<TRes> get province {
    final local$province = _instance.province;
    return local$province == null
        ? CopyWith$Input$ProvinceInput.stub(_then(_instance))
        : CopyWith$Input$ProvinceInput(
            local$province, (e) => call(province: e));
  }

  CopyWith$Input$RegencyInput<TRes> get regency {
    final local$regency = _instance.regency;
    return local$regency == null
        ? CopyWith$Input$RegencyInput.stub(_then(_instance))
        : CopyWith$Input$RegencyInput(local$regency, (e) => call(regency: e));
  }

  CopyWith$Input$DistrictInput<TRes> get district {
    final local$district = _instance.district;
    return local$district == null
        ? CopyWith$Input$DistrictInput.stub(_then(_instance))
        : CopyWith$Input$DistrictInput(
            local$district, (e) => call(district: e));
  }

  CopyWith$Input$SubDistrictInput<TRes> get subDistrict {
    final local$subDistrict = _instance.subDistrict;
    return local$subDistrict == null
        ? CopyWith$Input$SubDistrictInput.stub(_then(_instance))
        : CopyWith$Input$SubDistrictInput(
            local$subDistrict, (e) => call(subDistrict: e));
  }

  CopyWith$Input$RegencyInput<TRes> get cityOfBirth {
    final local$cityOfBirth = _instance.cityOfBirth;
    return local$cityOfBirth == null
        ? CopyWith$Input$RegencyInput.stub(_then(_instance))
        : CopyWith$Input$RegencyInput(
            local$cityOfBirth, (e) => call(cityOfBirth: e));
  }
}

class _CopyWithStubImpl$Input$UserDetailDto<TRes>
    implements CopyWith$Input$UserDetailDto<TRes> {
  _CopyWithStubImpl$Input$UserDetailDto(this._res);

  TRes _res;

  call({
    String? gender,
    String? address,
    String? birth,
    String? idCardNumber,
    String? idCardSelfiePicture,
    double? locationLat,
    double? locationLng,
    Input$ProvinceInput? province,
    Input$RegencyInput? regency,
    Input$DistrictInput? district,
    Input$SubDistrictInput? subDistrict,
    Input$RegencyInput? cityOfBirth,
    String? verifiedAt,
    String? rejectedAt,
    String? rejectionReason,
    String? bio,
  }) =>
      _res;
  CopyWith$Input$ProvinceInput<TRes> get province =>
      CopyWith$Input$ProvinceInput.stub(_res);
  CopyWith$Input$RegencyInput<TRes> get regency =>
      CopyWith$Input$RegencyInput.stub(_res);
  CopyWith$Input$DistrictInput<TRes> get district =>
      CopyWith$Input$DistrictInput.stub(_res);
  CopyWith$Input$SubDistrictInput<TRes> get subDistrict =>
      CopyWith$Input$SubDistrictInput.stub(_res);
  CopyWith$Input$RegencyInput<TRes> get cityOfBirth =>
      CopyWith$Input$RegencyInput.stub(_res);
}

class Input$PushNotificationDto {
  factory Input$PushNotificationDto({
    String? title,
    String? body,
    required List<String> userIds,
  }) =>
      Input$PushNotificationDto._({
        if (title != null) r'title': title,
        if (body != null) r'body': body,
        r'userIds': userIds,
      });

  Input$PushNotificationDto._(this._$data);

  factory Input$PushNotificationDto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    if (data.containsKey('body')) {
      final l$body = data['body'];
      result$data['body'] = (l$body as String?);
    }
    final l$userIds = data['userIds'];
    result$data['userIds'] =
        (l$userIds as List<dynamic>).map((e) => (e as String)).toList();
    return Input$PushNotificationDto._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get title => (_$data['title'] as String?);
  String? get body => (_$data['body'] as String?);
  List<String> get userIds => (_$data['userIds'] as List<String>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    if (_$data.containsKey('body')) {
      final l$body = body;
      result$data['body'] = l$body;
    }
    final l$userIds = userIds;
    result$data['userIds'] = l$userIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$PushNotificationDto<Input$PushNotificationDto> get copyWith =>
      CopyWith$Input$PushNotificationDto(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PushNotificationDto) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (_$data.containsKey('body') != other._$data.containsKey('body')) {
      return false;
    }
    if (l$body != lOther$body) {
      return false;
    }
    final l$userIds = userIds;
    final lOther$userIds = other.userIds;
    if (l$userIds.length != lOther$userIds.length) {
      return false;
    }
    for (int i = 0; i < l$userIds.length; i++) {
      final l$userIds$entry = l$userIds[i];
      final lOther$userIds$entry = lOther$userIds[i];
      if (l$userIds$entry != lOther$userIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$body = body;
    final l$userIds = userIds;
    return Object.hashAll([
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('body') ? l$body : const {},
      Object.hashAll(l$userIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$PushNotificationDto<TRes> {
  factory CopyWith$Input$PushNotificationDto(
    Input$PushNotificationDto instance,
    TRes Function(Input$PushNotificationDto) then,
  ) = _CopyWithImpl$Input$PushNotificationDto;

  factory CopyWith$Input$PushNotificationDto.stub(TRes res) =
      _CopyWithStubImpl$Input$PushNotificationDto;

  TRes call({
    String? title,
    String? body,
    List<String>? userIds,
  });
}

class _CopyWithImpl$Input$PushNotificationDto<TRes>
    implements CopyWith$Input$PushNotificationDto<TRes> {
  _CopyWithImpl$Input$PushNotificationDto(
    this._instance,
    this._then,
  );

  final Input$PushNotificationDto _instance;

  final TRes Function(Input$PushNotificationDto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? body = _undefined,
    Object? userIds = _undefined,
  }) =>
      _then(Input$PushNotificationDto._({
        ..._instance._$data,
        if (title != _undefined) 'title': (title as String?),
        if (body != _undefined) 'body': (body as String?),
        if (userIds != _undefined && userIds != null)
          'userIds': (userIds as List<String>),
      }));
}

class _CopyWithStubImpl$Input$PushNotificationDto<TRes>
    implements CopyWith$Input$PushNotificationDto<TRes> {
  _CopyWithStubImpl$Input$PushNotificationDto(this._res);

  TRes _res;

  call({
    String? title,
    String? body,
    List<String>? userIds,
  }) =>
      _res;
}

class Input$LoginDto {
  factory Input$LoginDto({
    required String username,
    required String password,
  }) =>
      Input$LoginDto._({
        r'username': username,
        r'password': password,
      });

  Input$LoginDto._(this._$data);

  factory Input$LoginDto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$LoginDto._(result$data);
  }

  Map<String, dynamic> _$data;

  String get username => (_$data['username'] as String);
  String get password => (_$data['password'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$username = username;
    result$data['username'] = l$username;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$LoginDto<Input$LoginDto> get copyWith =>
      CopyWith$Input$LoginDto(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LoginDto) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$password = password;
    return Object.hashAll([
      l$username,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$LoginDto<TRes> {
  factory CopyWith$Input$LoginDto(
    Input$LoginDto instance,
    TRes Function(Input$LoginDto) then,
  ) = _CopyWithImpl$Input$LoginDto;

  factory CopyWith$Input$LoginDto.stub(TRes res) =
      _CopyWithStubImpl$Input$LoginDto;

  TRes call({
    String? username,
    String? password,
  });
}

class _CopyWithImpl$Input$LoginDto<TRes>
    implements CopyWith$Input$LoginDto<TRes> {
  _CopyWithImpl$Input$LoginDto(
    this._instance,
    this._then,
  );

  final Input$LoginDto _instance;

  final TRes Function(Input$LoginDto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$LoginDto._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$LoginDto<TRes>
    implements CopyWith$Input$LoginDto<TRes> {
  _CopyWithStubImpl$Input$LoginDto(this._res);

  TRes _res;

  call({
    String? username,
    String? password,
  }) =>
      _res;
}

class Input$RegisterWithOtpDto {
  factory Input$RegisterWithOtpDto({
    required String name,
    required String phone,
  }) =>
      Input$RegisterWithOtpDto._({
        r'name': name,
        r'phone': phone,
      });

  Input$RegisterWithOtpDto._(this._$data);

  factory Input$RegisterWithOtpDto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$phone = data['phone'];
    result$data['phone'] = (l$phone as String);
    return Input$RegisterWithOtpDto._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  String get phone => (_$data['phone'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$phone = phone;
    result$data['phone'] = l$phone;
    return result$data;
  }

  CopyWith$Input$RegisterWithOtpDto<Input$RegisterWithOtpDto> get copyWith =>
      CopyWith$Input$RegisterWithOtpDto(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$RegisterWithOtpDto) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$phone = phone;
    return Object.hashAll([
      l$name,
      l$phone,
    ]);
  }
}

abstract class CopyWith$Input$RegisterWithOtpDto<TRes> {
  factory CopyWith$Input$RegisterWithOtpDto(
    Input$RegisterWithOtpDto instance,
    TRes Function(Input$RegisterWithOtpDto) then,
  ) = _CopyWithImpl$Input$RegisterWithOtpDto;

  factory CopyWith$Input$RegisterWithOtpDto.stub(TRes res) =
      _CopyWithStubImpl$Input$RegisterWithOtpDto;

  TRes call({
    String? name,
    String? phone,
  });
}

class _CopyWithImpl$Input$RegisterWithOtpDto<TRes>
    implements CopyWith$Input$RegisterWithOtpDto<TRes> {
  _CopyWithImpl$Input$RegisterWithOtpDto(
    this._instance,
    this._then,
  );

  final Input$RegisterWithOtpDto _instance;

  final TRes Function(Input$RegisterWithOtpDto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? phone = _undefined,
  }) =>
      _then(Input$RegisterWithOtpDto._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (phone != _undefined && phone != null) 'phone': (phone as String),
      }));
}

class _CopyWithStubImpl$Input$RegisterWithOtpDto<TRes>
    implements CopyWith$Input$RegisterWithOtpDto<TRes> {
  _CopyWithStubImpl$Input$RegisterWithOtpDto(this._res);

  TRes _res;

  call({
    String? name,
    String? phone,
  }) =>
      _res;
}

class Input$ExchangeOtpDto {
  factory Input$ExchangeOtpDto({
    required String code,
    required String phone,
  }) =>
      Input$ExchangeOtpDto._({
        r'code': code,
        r'phone': phone,
      });

  Input$ExchangeOtpDto._(this._$data);

  factory Input$ExchangeOtpDto.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    final l$phone = data['phone'];
    result$data['phone'] = (l$phone as String);
    return Input$ExchangeOtpDto._(result$data);
  }

  Map<String, dynamic> _$data;

  String get code => (_$data['code'] as String);
  String get phone => (_$data['phone'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$code = code;
    result$data['code'] = l$code;
    final l$phone = phone;
    result$data['phone'] = l$phone;
    return result$data;
  }

  CopyWith$Input$ExchangeOtpDto<Input$ExchangeOtpDto> get copyWith =>
      CopyWith$Input$ExchangeOtpDto(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ExchangeOtpDto) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$phone = phone;
    return Object.hashAll([
      l$code,
      l$phone,
    ]);
  }
}

abstract class CopyWith$Input$ExchangeOtpDto<TRes> {
  factory CopyWith$Input$ExchangeOtpDto(
    Input$ExchangeOtpDto instance,
    TRes Function(Input$ExchangeOtpDto) then,
  ) = _CopyWithImpl$Input$ExchangeOtpDto;

  factory CopyWith$Input$ExchangeOtpDto.stub(TRes res) =
      _CopyWithStubImpl$Input$ExchangeOtpDto;

  TRes call({
    String? code,
    String? phone,
  });
}

class _CopyWithImpl$Input$ExchangeOtpDto<TRes>
    implements CopyWith$Input$ExchangeOtpDto<TRes> {
  _CopyWithImpl$Input$ExchangeOtpDto(
    this._instance,
    this._then,
  );

  final Input$ExchangeOtpDto _instance;

  final TRes Function(Input$ExchangeOtpDto) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? phone = _undefined,
  }) =>
      _then(Input$ExchangeOtpDto._({
        ..._instance._$data,
        if (code != _undefined && code != null) 'code': (code as String),
        if (phone != _undefined && phone != null) 'phone': (phone as String),
      }));
}

class _CopyWithStubImpl$Input$ExchangeOtpDto<TRes>
    implements CopyWith$Input$ExchangeOtpDto<TRes> {
  _CopyWithStubImpl$Input$ExchangeOtpDto(this._res);

  TRes _res;

  call({
    String? code,
    String? phone,
  }) =>
      _res;
}

enum Enum$NOTIFICATION_EVENT {
  USER_VERIFIED,
  USER_VERIFICATION_FAILED,
  CONSULTATION_CREATED,
  CONSULTATION_ANSWERED,
  CONSULTATION_MENTOR_ASSIGNED,
  DONATION_PAID,
  EVENT_INVOICE_PAID,
  EVENT_ETICKET_ISSUED,
  EVENT_CREATED,
  BLOG_POST_CREATED,
  NEW_FRIEND_REQUEST,
  FRIEND_REQUEST_ACCEPTED,
  FRIEND_REQUEST_REJECTED,
  $unknown
}

String toJson$Enum$NOTIFICATION_EVENT(Enum$NOTIFICATION_EVENT e) {
  switch (e) {
    case Enum$NOTIFICATION_EVENT.USER_VERIFIED:
      return r'USER_VERIFIED';
    case Enum$NOTIFICATION_EVENT.USER_VERIFICATION_FAILED:
      return r'USER_VERIFICATION_FAILED';
    case Enum$NOTIFICATION_EVENT.CONSULTATION_CREATED:
      return r'CONSULTATION_CREATED';
    case Enum$NOTIFICATION_EVENT.CONSULTATION_ANSWERED:
      return r'CONSULTATION_ANSWERED';
    case Enum$NOTIFICATION_EVENT.CONSULTATION_MENTOR_ASSIGNED:
      return r'CONSULTATION_MENTOR_ASSIGNED';
    case Enum$NOTIFICATION_EVENT.DONATION_PAID:
      return r'DONATION_PAID';
    case Enum$NOTIFICATION_EVENT.EVENT_INVOICE_PAID:
      return r'EVENT_INVOICE_PAID';
    case Enum$NOTIFICATION_EVENT.EVENT_ETICKET_ISSUED:
      return r'EVENT_ETICKET_ISSUED';
    case Enum$NOTIFICATION_EVENT.EVENT_CREATED:
      return r'EVENT_CREATED';
    case Enum$NOTIFICATION_EVENT.BLOG_POST_CREATED:
      return r'BLOG_POST_CREATED';
    case Enum$NOTIFICATION_EVENT.NEW_FRIEND_REQUEST:
      return r'NEW_FRIEND_REQUEST';
    case Enum$NOTIFICATION_EVENT.FRIEND_REQUEST_ACCEPTED:
      return r'FRIEND_REQUEST_ACCEPTED';
    case Enum$NOTIFICATION_EVENT.FRIEND_REQUEST_REJECTED:
      return r'FRIEND_REQUEST_REJECTED';
    case Enum$NOTIFICATION_EVENT.$unknown:
      return r'$unknown';
  }
}

Enum$NOTIFICATION_EVENT fromJson$Enum$NOTIFICATION_EVENT(String value) {
  switch (value) {
    case r'USER_VERIFIED':
      return Enum$NOTIFICATION_EVENT.USER_VERIFIED;
    case r'USER_VERIFICATION_FAILED':
      return Enum$NOTIFICATION_EVENT.USER_VERIFICATION_FAILED;
    case r'CONSULTATION_CREATED':
      return Enum$NOTIFICATION_EVENT.CONSULTATION_CREATED;
    case r'CONSULTATION_ANSWERED':
      return Enum$NOTIFICATION_EVENT.CONSULTATION_ANSWERED;
    case r'CONSULTATION_MENTOR_ASSIGNED':
      return Enum$NOTIFICATION_EVENT.CONSULTATION_MENTOR_ASSIGNED;
    case r'DONATION_PAID':
      return Enum$NOTIFICATION_EVENT.DONATION_PAID;
    case r'EVENT_INVOICE_PAID':
      return Enum$NOTIFICATION_EVENT.EVENT_INVOICE_PAID;
    case r'EVENT_ETICKET_ISSUED':
      return Enum$NOTIFICATION_EVENT.EVENT_ETICKET_ISSUED;
    case r'EVENT_CREATED':
      return Enum$NOTIFICATION_EVENT.EVENT_CREATED;
    case r'BLOG_POST_CREATED':
      return Enum$NOTIFICATION_EVENT.BLOG_POST_CREATED;
    case r'NEW_FRIEND_REQUEST':
      return Enum$NOTIFICATION_EVENT.NEW_FRIEND_REQUEST;
    case r'FRIEND_REQUEST_ACCEPTED':
      return Enum$NOTIFICATION_EVENT.FRIEND_REQUEST_ACCEPTED;
    case r'FRIEND_REQUEST_REJECTED':
      return Enum$NOTIFICATION_EVENT.FRIEND_REQUEST_REJECTED;
    default:
      return Enum$NOTIFICATION_EVENT.$unknown;
  }
}

enum Enum$SortOrder { ASC, DESC, $unknown }

String toJson$Enum$SortOrder(Enum$SortOrder e) {
  switch (e) {
    case Enum$SortOrder.ASC:
      return r'ASC';
    case Enum$SortOrder.DESC:
      return r'DESC';
    case Enum$SortOrder.$unknown:
      return r'$unknown';
  }
}

Enum$SortOrder fromJson$Enum$SortOrder(String value) {
  switch (value) {
    case r'ASC':
      return Enum$SortOrder.ASC;
    case r'DESC':
      return Enum$SortOrder.DESC;
    default:
      return Enum$SortOrder.$unknown;
  }
}

enum Enum$BlogPostType { video, article, all, $unknown }

String toJson$Enum$BlogPostType(Enum$BlogPostType e) {
  switch (e) {
    case Enum$BlogPostType.video:
      return r'video';
    case Enum$BlogPostType.article:
      return r'article';
    case Enum$BlogPostType.all:
      return r'all';
    case Enum$BlogPostType.$unknown:
      return r'$unknown';
  }
}

Enum$BlogPostType fromJson$Enum$BlogPostType(String value) {
  switch (value) {
    case r'video':
      return Enum$BlogPostType.video;
    case r'article':
      return Enum$BlogPostType.article;
    case r'all':
      return Enum$BlogPostType.all;
    default:
      return Enum$BlogPostType.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
