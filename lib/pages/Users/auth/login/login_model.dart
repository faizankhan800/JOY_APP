
class LogInModel {
  LogInModel({
    required this.success,
    required this.data,
    required this.message,
  });
  late final bool success;
  late final Data data;
  late final String message;

  LogInModel.fromJson(Map<String, dynamic> json){
    success = json['success'];
    data = Data.fromJson(json['data']);
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['data'] = data.toJson();
    _data['message'] = message;
    return _data;
  }
}

class Data {
  Data({
    required this.user,
    required this.token,
  });
  late final User user;
  late final String token;

  Data.fromJson(Map<String, dynamic> json){
    user = User.fromJson(json['user']);
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user'] = user.toJson();
    _data['token'] = token;
    return _data;
  }
}

class User {
  User({
    required this.id,
    required this.name,
    required this.phone,
    required this.file,
    required this.email,
    this.emailVerifiedAt,
    required this.parentId,
    required this.type,
    required this.isActive,
    required this.designation,
    required this.image,
    required this.address,
    required this.agencyname,
    required this.createdAt,
    required this.updatedAt,
    required this.extras,
    required this.imageUrl,
    required this.areas,
  });
  late final int id;
  late final String? name;
  late final String? phone;
  late final String? file;
  late final String? email;
  late final Null emailVerifiedAt;
  late final String? parentId;
  late final String? type;
  late final String? isActive;
  late final String? designation;
  late final String? image;
  late final String? address;
  late final String? agencyname;
  late final String? createdAt;
  late final String? updatedAt;
  late final Extras? extras;
  late final String? imageUrl;
  late final List<Areas>? areas;

  User.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    file = json['file'];
    email = json['email'];
    emailVerifiedAt = null;
    parentId = json['parent_id'];
    type = json['type'];
    isActive = json['is_active'];
    designation = json['designation'];
    image = json['image'];
    address = json['address'];
    agencyname = json['agencyname'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    extras = Extras.fromJson(json['extras']);
    imageUrl = json['image_url'];
    areas = List.from(json['areas']).map((e)=>Areas.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['phone'] = phone;
    _data['file'] = file;
    _data['email'] = email;
    _data['email_verified_at'] = emailVerifiedAt;
    _data['parent_id'] = parentId;
    _data['type'] = type;
    _data['is_active'] = isActive;
    _data['designation'] = designation;
    _data['image'] = image;
    _data['address'] = address;
    _data['agencyname'] = agencyname;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['extras'] = extras?.toJson();
    _data['image_url'] = imageUrl;
    _data['areas'] = areas?.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Extras {
  Extras({
    required this.total,
    required this.pending,
    required this.sold,
  });
  late final int? total;
  late final int? pending;
  late final int? sold;

  Extras.fromJson(Map<String, dynamic> json){
    total = json['total'];
    pending = json['pending'];
    sold = json['sold'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['total'] = total;
    _data['pending'] = pending;
    _data['sold'] = sold;
    return _data;
  }
}

class Areas {
  Areas({
    required this.id,
    required this.name,
    this.createdAt,
    this.updatedAt,
    required this.pivot,
    required this.phases,
  });
  late final int id;
  late final String name;
  late final Null createdAt;
  late final Null updatedAt;
  late final Pivot pivot;
  late final List<Phases> phases;

  Areas.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    createdAt = null;
    updatedAt = null;
    pivot = Pivot.fromJson(json['pivot']);
    phases = List.from(json['phases']).map((e)=>Phases.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['pivot'] = pivot.toJson();
    _data['phases'] = phases.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Pivot {
  Pivot({
    required this.userId,
    required this.areaId,
  });
  late final String userId;
  late final String areaId;

  Pivot.fromJson(Map<String, dynamic> json){
    userId = json['user_id'];
    areaId = json['area_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user_id'] = userId;
    _data['area_id'] = areaId;
    return _data;
  }
}

class Phases {
  Phases({
    required this.id,
    required this.title,
    required this.areaId,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String title;
  late final String areaId;
  late final String createdAt;
  late final String updatedAt;

  Phases.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    areaId = json['area_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['area_id'] = areaId;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    return _data;
  }
}