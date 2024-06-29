import 'dart:convert';
/// id : 328
/// number : "1719650769786"
/// ownerType : "Student"
/// ownerId : "SS220005"
/// amount : 0
/// realAmount : 0
/// paid : 0
/// paidWait : 0
/// paidConfirm : 0
/// appetite : 1
/// orderById : "dev231200100349"
/// orderByType : "Member"
/// transactions : null
/// branchCode : "B0000017"
/// date : "2024-06-30T16:00:00.000Z"
/// createdAt : "2024-06-29T08:46:09.787Z"
/// updatedAt : "2024-06-29T08:46:09.787Z"
/// objectId : null

MealOrderItem mealOrderItemFromJson(String str) => MealOrderItem.fromJson(json.decode(str));
String mealOrderItemToJson(MealOrderItem data) => json.encode(data.toJson());
class MealOrderItem {
  MealOrderItem({
      num? id, 
      String? number, 
      String? ownerType, 
      String? ownerId, 
      num? amount, 
      num? realAmount, 
      num? paid, 
      num? paidWait, 
      num? paidConfirm, 
      num? appetite, 
      String? orderById, 
      String? orderByType, 
      dynamic transactions, 
      String? branchCode, 
      String? date, 
      String? createdAt, 
      String? updatedAt, 
      dynamic objectId,}){
    _id = id;
    _number = number;
    _ownerType = ownerType;
    _ownerId = ownerId;
    _amount = amount;
    _realAmount = realAmount;
    _paid = paid;
    _paidWait = paidWait;
    _paidConfirm = paidConfirm;
    _appetite = appetite;
    _orderById = orderById;
    _orderByType = orderByType;
    _transactions = transactions;
    _branchCode = branchCode;
    _date = date;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _objectId = objectId;
}

  MealOrderItem.fromJson(dynamic json) {
    _id = json['id'];
    _number = json['number'];
    _ownerType = json['ownerType'];
    _ownerId = json['ownerId'];
    _amount = json['amount'];
    _realAmount = json['realAmount'];
    _paid = json['paid'];
    _paidWait = json['paidWait'];
    _paidConfirm = json['paidConfirm'];
    _appetite = json['appetite'];
    _orderById = json['orderById'];
    _orderByType = json['orderByType'];
    _transactions = json['transactions'];
    _branchCode = json['branchCode'];
    _date = json['date'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _objectId = json['objectId'];
  }
  num? _id;
  String? _number;
  String? _ownerType;
  String? _ownerId;
  num? _amount;
  num? _realAmount;
  num? _paid;
  num? _paidWait;
  num? _paidConfirm;
  num? _appetite;
  String? _orderById;
  String? _orderByType;
  dynamic _transactions;
  String? _branchCode;
  String? _date;
  String? _createdAt;
  String? _updatedAt;
  dynamic _objectId;
MealOrderItem copyWith({  num? id,
  String? number,
  String? ownerType,
  String? ownerId,
  num? amount,
  num? realAmount,
  num? paid,
  num? paidWait,
  num? paidConfirm,
  num? appetite,
  String? orderById,
  String? orderByType,
  dynamic transactions,
  String? branchCode,
  String? date,
  String? createdAt,
  String? updatedAt,
  dynamic objectId,
}) => MealOrderItem(  id: id ?? _id,
  number: number ?? _number,
  ownerType: ownerType ?? _ownerType,
  ownerId: ownerId ?? _ownerId,
  amount: amount ?? _amount,
  realAmount: realAmount ?? _realAmount,
  paid: paid ?? _paid,
  paidWait: paidWait ?? _paidWait,
  paidConfirm: paidConfirm ?? _paidConfirm,
  appetite: appetite ?? _appetite,
  orderById: orderById ?? _orderById,
  orderByType: orderByType ?? _orderByType,
  transactions: transactions ?? _transactions,
  branchCode: branchCode ?? _branchCode,
  date: date ?? _date,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  objectId: objectId ?? _objectId,
);
  num? get id => _id;
  String? get number => _number;
  String? get ownerType => _ownerType;
  String? get ownerId => _ownerId;
  num? get amount => _amount;
  num? get realAmount => _realAmount;
  num? get paid => _paid;
  num? get paidWait => _paidWait;
  num? get paidConfirm => _paidConfirm;
  num? get appetite => _appetite;
  String? get orderById => _orderById;
  String? get orderByType => _orderByType;
  dynamic get transactions => _transactions;
  String? get branchCode => _branchCode;
  String? get date => _date;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get objectId => _objectId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['number'] = _number;
    map['ownerType'] = _ownerType;
    map['ownerId'] = _ownerId;
    map['amount'] = _amount;
    map['realAmount'] = _realAmount;
    map['paid'] = _paid;
    map['paidWait'] = _paidWait;
    map['paidConfirm'] = _paidConfirm;
    map['appetite'] = _appetite;
    map['orderById'] = _orderById;
    map['orderByType'] = _orderByType;
    map['transactions'] = _transactions;
    map['branchCode'] = _branchCode;
    map['date'] = _date;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['objectId'] = _objectId;
    return map;
  }

}