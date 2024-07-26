import 'dart:convert';

import 'package:marketing/marketing.dart';

/// activity : {"id":799,"merchantId":1,"name":"抽獎活動","type":"raffle","targetType":null,"targetId":null,"code":"APP_RAFFLE","status":"processed","description":"活動描述","detail":null,"startAt":null,"settledAt":null,"expiredAt":null,"custom":{"rules":[{"count":1,"people":1},{"count":3,"people":3},{"count":5,"people":8}]},"meta":null,"match":null,"act":null,"childrenMatch":null,"childrenAct":null,"path":null,"refId":null,"deletedAt":null,"createdAt":"2024-07-16T02:52:43.424Z","updatedAt":"2024-07-16T02:52:43.424Z","merchant":{"id":1,"code":"scholar","title":"儒林教育","createdAt":"2023-10-26T01:25:17.959Z","updatedAt":"2023-11-10T03:57:57.103Z"},"ref":null,"count":12,"children":[{"id":807,"merchantId":1,"name":"IPHONE15","type":"prize","targetType":null,"targetId":null,"code":"f25f9592-1ad4-4457-853d-89149fa7c67d","status":"processed","description":"IPHONE15","detail":null,"startAt":null,"settledAt":null,"expiredAt":null,"custom":{"logo":"https://storage.dev.heyday-catering.com:20443/scholar/eliteshop/macauscholar/f2c095bde4fbdb66a288823936b6e2586ac240bca057031e8205714a7c8eec22_img_phone@3x%2010@3x.png","odds":0,"order":2},"meta":null,"match":null,"act":null,"childrenMatch":null,"childrenAct":null,"path":[799],"refId":799,"deletedAt":null,"createdAt":"2024-07-16T03:10:40.815Z","updatedAt":"2024-07-16T03:10:40.815Z"},{"id":806,"merchantId":1,"name":"$3000","type":"prize","targetType":null,"targetId":null,"code":"cf889dda-011c-4b9b-985c-78108e3af1e7","status":"processed","description":"$3000 優惠券","detail":null,"startAt":null,"settledAt":null,"expiredAt":null,"custom":{"logo":"https://storage.dev.heyday-catering.com:20443/scholar/eliteshop/macauscholar/c7229d01b2946fa5a52208ba58450caaab76eefbec04fcc17fd8b42e19af5a9a_Vector%20245@3x.png","odds":0,"order":1},"meta":null,"match":null,"act":null,"childrenMatch":null,"childrenAct":null,"path":[799],"refId":799,"deletedAt":null,"createdAt":"2024-07-16T03:10:29.731Z","updatedAt":"2024-07-16T03:10:29.731Z"},{"id":805,"merchantId":1,"name":"$50優惠券","type":"prize","targetType":null,"targetId":null,"code":"9965bb91-2096-43f6-93d7-b2f3752925ab","status":"processed","description":"$50 優惠券","detail":null,"startAt":null,"settledAt":null,"expiredAt":null,"custom":{"logo":"https://storage.dev.heyday-catering.com:20443/scholar/eliteshop/macauscholar/6f9f08d59ab7efd48a575ab86b9a3fe91d84d1b3c5511d2202f37c62bff4b261_Group%20905@3x.png","odds":0.003,"order":5},"meta":null,"match":null,"act":null,"childrenMatch":null,"childrenAct":null,"path":[799],"refId":799,"deletedAt":null,"createdAt":"2024-07-16T03:10:11.414Z","updatedAt":"2024-07-16T03:10:11.414Z"},{"id":804,"merchantId":1,"name":"玩具","type":"prize","targetType":null,"targetId":null,"code":"667f7d39-4a46-4307-b27a-b9f2904b16b1","status":"processed","description":"玩具","detail":null,"startAt":null,"settledAt":null,"expiredAt":null,"custom":{"logo":"https://storage.dev.heyday-catering.com:20443/scholar/eliteshop/macauscholar/7eae8adadfc26263d0b57a527bc7bfca655ae1406a570486ecff5b85a0dd566e_img_phone@3x%2011@3x.png","odds":0.004,"order":4},"meta":null,"match":null,"act":null,"childrenMatch":null,"childrenAct":null,"path":[799],"refId":799,"deletedAt":null,"createdAt":"2024-07-16T03:09:54.853Z","updatedAt":"2024-07-16T03:09:54.853Z"},{"id":803,"merchantId":1,"name":"圖書","type":"prize","targetType":null,"targetId":null,"code":"c8557ded-1a91-48c4-8b18-8d8289d19f60","status":"processed","description":"圖書","detail":null,"startAt":null,"settledAt":null,"expiredAt":null,"custom":{"logo":"https://storage.dev.heyday-catering.com:20443/scholar/eliteshop/macauscholar/57b908d96f73dbf832350c5218bf182a14a1e4fa5e15c2b29558a0e331287fdf_img_phone@3x%201@3x.png","odds":0.005,"order":3},"meta":null,"match":null,"act":null,"childrenMatch":null,"childrenAct":null,"path":[799],"refId":799,"deletedAt":null,"createdAt":"2024-07-16T03:09:44.215Z","updatedAt":"2024-07-16T03:09:44.215Z"},{"id":802,"merchantId":1,"name":"$20優惠券","type":"prize","targetType":null,"targetId":null,"code":"0c3e04b6-538a-479b-a9b9-6e2fd3dd5a2c","status":"processed","description":"$20 優惠券","detail":null,"startAt":null,"settledAt":null,"expiredAt":null,"custom":{"logo":"https://storage.dev.heyday-catering.com:20443/scholar/eliteshop/macauscholar/6f9f08d59ab7efd48a575ab86b9a3fe91d84d1b3c5511d2202f37c62bff4b261_Group%20905@3x.png","odds":0.01,"order":6},"meta":null,"match":null,"act":null,"childrenMatch":null,"childrenAct":null,"path":[799],"refId":799,"deletedAt":null,"createdAt":"2024-07-16T03:09:21.841Z","updatedAt":"2024-07-16T03:09:21.841Z"},{"id":801,"merchantId":1,"name":"10積分","type":"prize","targetType":null,"targetId":null,"code":"70ef04b7-cd4e-476a-a8e1-6adfb83d4751","status":"processed","description":"10積分","detail":null,"startAt":null,"settledAt":null,"expiredAt":null,"custom":{"logo":"https://storage.dev.heyday-catering.com:20443/scholar/eliteshop/macauscholar/3ad4cd64b46e48fbe6384a898eb8e564e536aa215dfed82184b9a1d6f8587792_img_phone@3x%203@3x.png","odds":0.01,"order":7,"score":10},"meta":null,"match":null,"act":null,"childrenMatch":null,"childrenAct":null,"path":[799],"refId":799,"deletedAt":null,"createdAt":"2024-07-16T03:09:06.122Z","updatedAt":"2024-07-16T03:09:06.122Z"},{"id":800,"merchantId":1,"name":"1積分","type":"prize","targetType":null,"targetId":null,"code":"1052d1f9-c372-4fb6-9e10-a850bafd9d72","status":"processed","description":"1積分","detail":null,"startAt":null,"settledAt":null,"expiredAt":null,"custom":{"logo":"https://storage.dev.heyday-catering.com:20443/scholar/eliteshop/macauscholar/3ad4cd64b46e48fbe6384a898eb8e564e536aa215dfed82184b9a1d6f8587792_img_phone@3x%203@3x.png","odds":0.968,"order":8,"score":1},"meta":null,"match":null,"act":null,"childrenMatch":null,"childrenAct":null,"path":[799],"refId":799,"deletedAt":null,"createdAt":"2024-07-16T02:55:19.921Z","updatedAt":"2024-07-16T02:55:19.921Z"}]}
/// count : 1
/// helpPeople : 1

RaffleModel raffleModelFromJson(String str) =>
    RaffleModel.fromJson(json.decode(str));
String raffleModelToJson(RaffleModel data) => json.encode(data.toJson());

class RaffleModel {
  RaffleModel({
    ActivityItem? activity,
    num? count,
    num? helpPeople,
  }) {
    _activity = activity;
    _count = count;
    _helpPeople = helpPeople;
  }

  RaffleModel.fromJson(dynamic json) {
    _activity = json['activity'] != null
        ? ActivityItem.fromJson(json['activity'])
        : null;
    _count = json['count'];
    _helpPeople = json['helpPeople'];
  }
  ActivityItem? _activity;
  num? _count;
  num? _helpPeople;
  RaffleModel copyWith({
    ActivityItem? activity,
    num? count,
    num? helpPeople,
  }) =>
      RaffleModel(
        activity: activity ?? _activity,
        count: count ?? _count,
        helpPeople: helpPeople ?? _helpPeople,
      );
  ActivityItem? get activity => _activity;
  num? get count => _count;
  num? get helpPeople => _helpPeople;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_activity != null) {
      map['activity'] = _activity?.toJson();
    }
    map['count'] = _count;
    map['helpPeople'] = _helpPeople;
    return map;
  }
}
