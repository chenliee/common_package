import 'dart:convert';

import 'menu_item.dart';
import 'menu_section.dart';

/// id : 338
/// number : "1719905381359"
/// ownerType : "Student"
/// ownerId : "AA458"
/// amount : 630
/// realAmount : 630
/// paid : 0
/// paidWait : 0
/// paidConfirm : 0
/// appetite : 1
/// orderById : "dev231200100349"
/// orderByType : "Member"
/// transactions : null
/// branchCode : "B0000879"
/// date : "2024-06-30T16:00:00.000Z"
/// createdAt : "2024-07-02T07:29:41.361Z"
/// updatedAt : "2024-07-02T08:16:22.974Z"
/// objectId : null
/// orderItem : [{"id":1312,"title":"哈哈哈哈111+阿華田","itemType":"ADD","state":"init","amount":45,"realAmount":45,"employeeRemarks":null,"userRemarks":null,"isTemp":false,"branchCode":"B0000879","menuId":13,"orderId":338,"branchOrderId":null,"date":"2024-07-02T07:29:41.662Z","useDate":"2024-07-05T16:00:00.000Z","createdAt":"2024-07-02T07:29:41.663Z","updatedAt":"2024-07-02T07:29:41.663Z","objectId":null,"sn":null,"foods":[{"id":127,"title":"阿華田","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.526Z","updatedAt":"2024-03-27T05:26:27.565Z","objectId":"zVAwgMxZhH","sn":"zVAwgMxZhH"},{"id":132,"title":"哈哈哈哈111","weight":100,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/6ad1b34e8296581360edd2967ca1bad259ed54faabe5de3118d28e114a2a67fb_5.jpeg","name":"5.jpeg"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":null,"description":"我的aaa","groupId":1,"deleteAt":null,"createdAt":"2024-04-22T03:23:39.525Z","updatedAt":"2024-06-21T02:47:12.485Z","objectId":null,"sn":"1713756219523"}],"menu":{"id":13,"menuType":"lunch","title":"620","price":45,"period":"daily","days":null,"package":false,"cover":null,"description":null,"withArea":null,"withBranches":null,"withoutBranches":null,"canBuy":false,"foodsWeightTable":{"127":100,"130":250},"foodsTitleTable":{"127":"阿華田","130":"红牛维生素好吃222"},"foodsSunitTable":{"127":"g","130":"ml"},"dateFrom":"2024-07-03T00:00:00.000Z","dateTo":"2024-07-31T00:00:00.000Z","createdAt":"2024-06-22T03:38:22.924Z","updatedAt":"2024-07-01T01:38:48.224Z","objectId":null,"sn":"1719027502922"}},{"id":1313,"title":"哈哈哈哈111+阿華田","itemType":"ADD","state":"init","amount":45,"realAmount":45,"employeeRemarks":null,"userRemarks":null,"isTemp":false,"branchCode":"B0000879","menuId":13,"orderId":338,"branchOrderId":null,"date":"2024-07-02T07:29:46.655Z","useDate":"2024-07-05T16:00:00.000Z","createdAt":"2024-07-02T07:29:46.656Z","updatedAt":"2024-07-02T07:29:46.656Z","objectId":null,"sn":null,"foods":[{"id":127,"title":"阿華田","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.526Z","updatedAt":"2024-03-27T05:26:27.565Z","objectId":"zVAwgMxZhH","sn":"zVAwgMxZhH"},{"id":132,"title":"哈哈哈哈111","weight":100,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/6ad1b34e8296581360edd2967ca1bad259ed54faabe5de3118d28e114a2a67fb_5.jpeg","name":"5.jpeg"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":null,"description":"我的aaa","groupId":1,"deleteAt":null,"createdAt":"2024-04-22T03:23:39.525Z","updatedAt":"2024-06-21T02:47:12.485Z","objectId":null,"sn":"1713756219523"}],"menu":{"id":13,"menuType":"lunch","title":"620","price":45,"period":"daily","days":null,"package":false,"cover":null,"description":null,"withArea":null,"withBranches":null,"withoutBranches":null,"canBuy":false,"foodsWeightTable":{"127":100,"130":250},"foodsTitleTable":{"127":"阿華田","130":"红牛维生素好吃222"},"foodsSunitTable":{"127":"g","130":"ml"},"dateFrom":"2024-07-03T00:00:00.000Z","dateTo":"2024-07-31T00:00:00.000Z","createdAt":"2024-06-22T03:38:22.924Z","updatedAt":"2024-07-01T01:38:48.224Z","objectId":null,"sn":"1719027502922"}},{"id":1314,"title":"哈哈哈哈111+阿華田","itemType":"ADD","state":"init","amount":45,"realAmount":45,"employeeRemarks":null,"userRemarks":null,"isTemp":false,"branchCode":"B0000879","menuId":13,"orderId":338,"branchOrderId":null,"date":"2024-07-02T07:29:47.260Z","useDate":"2024-07-05T16:00:00.000Z","createdAt":"2024-07-02T07:29:47.261Z","updatedAt":"2024-07-02T07:29:47.261Z","objectId":null,"sn":null,"foods":[{"id":127,"title":"阿華田","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.526Z","updatedAt":"2024-03-27T05:26:27.565Z","objectId":"zVAwgMxZhH","sn":"zVAwgMxZhH"},{"id":132,"title":"哈哈哈哈111","weight":100,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/6ad1b34e8296581360edd2967ca1bad259ed54faabe5de3118d28e114a2a67fb_5.jpeg","name":"5.jpeg"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":null,"description":"我的aaa","groupId":1,"deleteAt":null,"createdAt":"2024-04-22T03:23:39.525Z","updatedAt":"2024-06-21T02:47:12.485Z","objectId":null,"sn":"1713756219523"}],"menu":{"id":13,"menuType":"lunch","title":"620","price":45,"period":"daily","days":null,"package":false,"cover":null,"description":null,"withArea":null,"withBranches":null,"withoutBranches":null,"canBuy":false,"foodsWeightTable":{"127":100,"130":250},"foodsTitleTable":{"127":"阿華田","130":"红牛维生素好吃222"},"foodsSunitTable":{"127":"g","130":"ml"},"dateFrom":"2024-07-03T00:00:00.000Z","dateTo":"2024-07-31T00:00:00.000Z","createdAt":"2024-06-22T03:38:22.924Z","updatedAt":"2024-07-01T01:38:48.224Z","objectId":null,"sn":"1719027502922"}},{"id":1315,"title":"哈哈哈哈111+阿華田","itemType":"ADD","state":"init","amount":45,"realAmount":45,"employeeRemarks":null,"userRemarks":null,"isTemp":false,"branchCode":"B0000879","menuId":13,"orderId":338,"branchOrderId":null,"date":"2024-07-02T07:29:48.010Z","useDate":"2024-07-05T16:00:00.000Z","createdAt":"2024-07-02T07:29:48.012Z","updatedAt":"2024-07-02T07:29:48.012Z","objectId":null,"sn":null,"foods":[{"id":127,"title":"阿華田","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.526Z","updatedAt":"2024-03-27T05:26:27.565Z","objectId":"zVAwgMxZhH","sn":"zVAwgMxZhH"},{"id":132,"title":"哈哈哈哈111","weight":100,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/6ad1b34e8296581360edd2967ca1bad259ed54faabe5de3118d28e114a2a67fb_5.jpeg","name":"5.jpeg"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":null,"description":"我的aaa","groupId":1,"deleteAt":null,"createdAt":"2024-04-22T03:23:39.525Z","updatedAt":"2024-06-21T02:47:12.485Z","objectId":null,"sn":"1713756219523"}],"menu":{"id":13,"menuType":"lunch","title":"620","price":45,"period":"daily","days":null,"package":false,"cover":null,"description":null,"withArea":null,"withBranches":null,"withoutBranches":null,"canBuy":false,"foodsWeightTable":{"127":100,"130":250},"foodsTitleTable":{"127":"阿華田","130":"红牛维生素好吃222"},"foodsSunitTable":{"127":"g","130":"ml"},"dateFrom":"2024-07-03T00:00:00.000Z","dateTo":"2024-07-31T00:00:00.000Z","createdAt":"2024-06-22T03:38:22.924Z","updatedAt":"2024-07-01T01:38:48.224Z","objectId":null,"sn":"1719027502922"}},{"id":1316,"title":"哈哈哈哈111+阿華田","itemType":"ADD","state":"init","amount":45,"realAmount":45,"employeeRemarks":null,"userRemarks":null,"isTemp":false,"branchCode":"B0000879","menuId":13,"orderId":338,"branchOrderId":null,"date":"2024-07-02T07:29:49.398Z","useDate":"2024-07-05T16:00:00.000Z","createdAt":"2024-07-02T07:29:49.399Z","updatedAt":"2024-07-02T07:29:49.399Z","objectId":null,"sn":null,"foods":[{"id":127,"title":"阿華田","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.526Z","updatedAt":"2024-03-27T05:26:27.565Z","objectId":"zVAwgMxZhH","sn":"zVAwgMxZhH"},{"id":132,"title":"哈哈哈哈111","weight":100,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/6ad1b34e8296581360edd2967ca1bad259ed54faabe5de3118d28e114a2a67fb_5.jpeg","name":"5.jpeg"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":null,"description":"我的aaa","groupId":1,"deleteAt":null,"createdAt":"2024-04-22T03:23:39.525Z","updatedAt":"2024-06-21T02:47:12.485Z","objectId":null,"sn":"1713756219523"}],"menu":{"id":13,"menuType":"lunch","title":"620","price":45,"period":"daily","days":null,"package":false,"cover":null,"description":null,"withArea":null,"withBranches":null,"withoutBranches":null,"canBuy":false,"foodsWeightTable":{"127":100,"130":250},"foodsTitleTable":{"127":"阿華田","130":"红牛维生素好吃222"},"foodsSunitTable":{"127":"g","130":"ml"},"dateFrom":"2024-07-03T00:00:00.000Z","dateTo":"2024-07-31T00:00:00.000Z","createdAt":"2024-06-22T03:38:22.924Z","updatedAt":"2024-07-01T01:38:48.224Z","objectId":null,"sn":"1719027502922"}},{"id":1317,"title":"哈哈哈哈111+阿華田","itemType":"ADD","state":"init","amount":45,"realAmount":45,"employeeRemarks":null,"userRemarks":null,"isTemp":false,"branchCode":"B0000879","menuId":13,"orderId":338,"branchOrderId":null,"date":"2024-07-02T07:29:50.393Z","useDate":"2024-07-05T16:00:00.000Z","createdAt":"2024-07-02T07:29:50.395Z","updatedAt":"2024-07-02T07:29:50.395Z","objectId":null,"sn":null,"foods":[{"id":127,"title":"阿華田","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.526Z","updatedAt":"2024-03-27T05:26:27.565Z","objectId":"zVAwgMxZhH","sn":"zVAwgMxZhH"},{"id":132,"title":"哈哈哈哈111","weight":100,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/6ad1b34e8296581360edd2967ca1bad259ed54faabe5de3118d28e114a2a67fb_5.jpeg","name":"5.jpeg"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":null,"description":"我的aaa","groupId":1,"deleteAt":null,"createdAt":"2024-04-22T03:23:39.525Z","updatedAt":"2024-06-21T02:47:12.485Z","objectId":null,"sn":"1713756219523"}],"menu":{"id":13,"menuType":"lunch","title":"620","price":45,"period":"daily","days":null,"package":false,"cover":null,"description":null,"withArea":null,"withBranches":null,"withoutBranches":null,"canBuy":false,"foodsWeightTable":{"127":100,"130":250},"foodsTitleTable":{"127":"阿華田","130":"红牛维生素好吃222"},"foodsSunitTable":{"127":"g","130":"ml"},"dateFrom":"2024-07-03T00:00:00.000Z","dateTo":"2024-07-31T00:00:00.000Z","createdAt":"2024-06-22T03:38:22.924Z","updatedAt":"2024-07-01T01:38:48.224Z","objectId":null,"sn":"1719027502922"}},{"id":1318,"title":"哈哈哈哈111+阿華田","itemType":"ADD","state":"init","amount":45,"realAmount":45,"employeeRemarks":null,"userRemarks":null,"isTemp":false,"branchCode":"B0000879","menuId":13,"orderId":338,"branchOrderId":null,"date":"2024-07-02T07:29:51.631Z","useDate":"2024-07-05T16:00:00.000Z","createdAt":"2024-07-02T07:29:51.633Z","updatedAt":"2024-07-02T07:29:51.633Z","objectId":null,"sn":null,"foods":[{"id":127,"title":"阿華田","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.526Z","updatedAt":"2024-03-27T05:26:27.565Z","objectId":"zVAwgMxZhH","sn":"zVAwgMxZhH"},{"id":132,"title":"哈哈哈哈111","weight":100,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/6ad1b34e8296581360edd2967ca1bad259ed54faabe5de3118d28e114a2a67fb_5.jpeg","name":"5.jpeg"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":null,"description":"我的aaa","groupId":1,"deleteAt":null,"createdAt":"2024-04-22T03:23:39.525Z","updatedAt":"2024-06-21T02:47:12.485Z","objectId":null,"sn":"1713756219523"}],"menu":{"id":13,"menuType":"lunch","title":"620","price":45,"period":"daily","days":null,"package":false,"cover":null,"description":null,"withArea":null,"withBranches":null,"withoutBranches":null,"canBuy":false,"foodsWeightTable":{"127":100,"130":250},"foodsTitleTable":{"127":"阿華田","130":"红牛维生素好吃222"},"foodsSunitTable":{"127":"g","130":"ml"},"dateFrom":"2024-07-03T00:00:00.000Z","dateTo":"2024-07-31T00:00:00.000Z","createdAt":"2024-06-22T03:38:22.924Z","updatedAt":"2024-07-01T01:38:48.224Z","objectId":null,"sn":"1719027502922"}},{"id":1319,"title":"哈哈哈哈111+阿華田","itemType":"ADD","state":"init","amount":45,"realAmount":45,"employeeRemarks":null,"userRemarks":null,"isTemp":false,"branchCode":"B0000879","menuId":13,"orderId":338,"branchOrderId":null,"date":"2024-07-02T07:29:54.974Z","useDate":"2024-07-05T16:00:00.000Z","createdAt":"2024-07-02T07:29:54.975Z","updatedAt":"2024-07-02T07:29:54.975Z","objectId":null,"sn":null,"foods":[{"id":127,"title":"阿華田","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.526Z","updatedAt":"2024-03-27T05:26:27.565Z","objectId":"zVAwgMxZhH","sn":"zVAwgMxZhH"},{"id":132,"title":"哈哈哈哈111","weight":100,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/6ad1b34e8296581360edd2967ca1bad259ed54faabe5de3118d28e114a2a67fb_5.jpeg","name":"5.jpeg"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":null,"description":"我的aaa","groupId":1,"deleteAt":null,"createdAt":"2024-04-22T03:23:39.525Z","updatedAt":"2024-06-21T02:47:12.485Z","objectId":null,"sn":"1713756219523"}],"menu":{"id":13,"menuType":"lunch","title":"620","price":45,"period":"daily","days":null,"package":false,"cover":null,"description":null,"withArea":null,"withBranches":null,"withoutBranches":null,"canBuy":false,"foodsWeightTable":{"127":100,"130":250},"foodsTitleTable":{"127":"阿華田","130":"红牛维生素好吃222"},"foodsSunitTable":{"127":"g","130":"ml"},"dateFrom":"2024-07-03T00:00:00.000Z","dateTo":"2024-07-31T00:00:00.000Z","createdAt":"2024-06-22T03:38:22.924Z","updatedAt":"2024-07-01T01:38:48.224Z","objectId":null,"sn":"1719027502922"}},{"id":1320,"title":"哈哈哈哈111+阿華田","itemType":"ADD","state":"init","amount":45,"realAmount":45,"employeeRemarks":null,"userRemarks":null,"isTemp":false,"branchCode":"B0000879","menuId":13,"orderId":338,"branchOrderId":null,"date":"2024-07-02T07:29:57.077Z","useDate":"2024-07-05T16:00:00.000Z","createdAt":"2024-07-02T07:29:57.078Z","updatedAt":"2024-07-02T07:29:57.078Z","objectId":null,"sn":null,"foods":[{"id":127,"title":"阿華田","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.526Z","updatedAt":"2024-03-27T05:26:27.565Z","objectId":"zVAwgMxZhH","sn":"zVAwgMxZhH"},{"id":132,"title":"哈哈哈哈111","weight":100,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/6ad1b34e8296581360edd2967ca1bad259ed54faabe5de3118d28e114a2a67fb_5.jpeg","name":"5.jpeg"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":null,"description":"我的aaa","groupId":1,"deleteAt":null,"createdAt":"2024-04-22T03:23:39.525Z","updatedAt":"2024-06-21T02:47:12.485Z","objectId":null,"sn":"1713756219523"}],"menu":{"id":13,"menuType":"lunch","title":"620","price":45,"period":"daily","days":null,"package":false,"cover":null,"description":null,"withArea":null,"withBranches":null,"withoutBranches":null,"canBuy":false,"foodsWeightTable":{"127":100,"130":250},"foodsTitleTable":{"127":"阿華田","130":"红牛维生素好吃222"},"foodsSunitTable":{"127":"g","130":"ml"},"dateFrom":"2024-07-03T00:00:00.000Z","dateTo":"2024-07-31T00:00:00.000Z","createdAt":"2024-06-22T03:38:22.924Z","updatedAt":"2024-07-01T01:38:48.224Z","objectId":null,"sn":"1719027502922"}},{"id":1321,"title":"哈哈哈哈111+阿華田","itemType":"ADD","state":"init","amount":45,"realAmount":45,"employeeRemarks":null,"userRemarks":null,"isTemp":false,"branchCode":"B0000879","menuId":13,"orderId":338,"branchOrderId":null,"date":"2024-07-02T07:29:57.817Z","useDate":"2024-07-05T16:00:00.000Z","createdAt":"2024-07-02T07:29:57.819Z","updatedAt":"2024-07-02T07:29:57.819Z","objectId":null,"sn":null,"foods":[{"id":127,"title":"阿華田","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.526Z","updatedAt":"2024-03-27T05:26:27.565Z","objectId":"zVAwgMxZhH","sn":"zVAwgMxZhH"},{"id":132,"title":"哈哈哈哈111","weight":100,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/6ad1b34e8296581360edd2967ca1bad259ed54faabe5de3118d28e114a2a67fb_5.jpeg","name":"5.jpeg"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":null,"description":"我的aaa","groupId":1,"deleteAt":null,"createdAt":"2024-04-22T03:23:39.525Z","updatedAt":"2024-06-21T02:47:12.485Z","objectId":null,"sn":"1713756219523"}],"menu":{"id":13,"menuType":"lunch","title":"620","price":45,"period":"daily","days":null,"package":false,"cover":null,"description":null,"withArea":null,"withBranches":null,"withoutBranches":null,"canBuy":false,"foodsWeightTable":{"127":100,"130":250},"foodsTitleTable":{"127":"阿華田","130":"红牛维生素好吃222"},"foodsSunitTable":{"127":"g","130":"ml"},"dateFrom":"2024-07-03T00:00:00.000Z","dateTo":"2024-07-31T00:00:00.000Z","createdAt":"2024-06-22T03:38:22.924Z","updatedAt":"2024-07-01T01:38:48.224Z","objectId":null,"sn":"1719027502922"}},{"id":1322,"title":"哈哈哈哈111+阿華田","itemType":"ADD","state":"init","amount":45,"realAmount":45,"employeeRemarks":null,"userRemarks":null,"isTemp":false,"branchCode":"B0000879","menuId":13,"orderId":338,"branchOrderId":null,"date":"2024-07-02T07:30:00.493Z","useDate":"2024-07-05T16:00:00.000Z","createdAt":"2024-07-02T07:30:00.494Z","updatedAt":"2024-07-02T07:30:00.494Z","objectId":null,"sn":null,"foods":[{"id":127,"title":"阿華田","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.526Z","updatedAt":"2024-03-27T05:26:27.565Z","objectId":"zVAwgMxZhH","sn":"zVAwgMxZhH"},{"id":132,"title":"哈哈哈哈111","weight":100,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/6ad1b34e8296581360edd2967ca1bad259ed54faabe5de3118d28e114a2a67fb_5.jpeg","name":"5.jpeg"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":null,"description":"我的aaa","groupId":1,"deleteAt":null,"createdAt":"2024-04-22T03:23:39.525Z","updatedAt":"2024-06-21T02:47:12.485Z","objectId":null,"sn":"1713756219523"}],"menu":{"id":13,"menuType":"lunch","title":"620","price":45,"period":"daily","days":null,"package":false,"cover":null,"description":null,"withArea":null,"withBranches":null,"withoutBranches":null,"canBuy":false,"foodsWeightTable":{"127":100,"130":250},"foodsTitleTable":{"127":"阿華田","130":"红牛维生素好吃222"},"foodsSunitTable":{"127":"g","130":"ml"},"dateFrom":"2024-07-03T00:00:00.000Z","dateTo":"2024-07-31T00:00:00.000Z","createdAt":"2024-06-22T03:38:22.924Z","updatedAt":"2024-07-01T01:38:48.224Z","objectId":null,"sn":"1719027502922"}},{"id":1323,"title":"哈哈哈哈111+阿華田","itemType":"ADD","state":"init","amount":45,"realAmount":45,"employeeRemarks":null,"userRemarks":null,"isTemp":false,"branchCode":"B0000879","menuId":13,"orderId":338,"branchOrderId":null,"date":"2024-07-02T07:30:01.221Z","useDate":"2024-07-05T16:00:00.000Z","createdAt":"2024-07-02T07:30:01.222Z","updatedAt":"2024-07-02T07:30:01.222Z","objectId":null,"sn":null,"foods":[{"id":127,"title":"阿華田","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.526Z","updatedAt":"2024-03-27T05:26:27.565Z","objectId":"zVAwgMxZhH","sn":"zVAwgMxZhH"},{"id":132,"title":"哈哈哈哈111","weight":100,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/6ad1b34e8296581360edd2967ca1bad259ed54faabe5de3118d28e114a2a67fb_5.jpeg","name":"5.jpeg"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":null,"description":"我的aaa","groupId":1,"deleteAt":null,"createdAt":"2024-04-22T03:23:39.525Z","updatedAt":"2024-06-21T02:47:12.485Z","objectId":null,"sn":"1713756219523"}],"menu":{"id":13,"menuType":"lunch","title":"620","price":45,"period":"daily","days":null,"package":false,"cover":null,"description":null,"withArea":null,"withBranches":null,"withoutBranches":null,"canBuy":false,"foodsWeightTable":{"127":100,"130":250},"foodsTitleTable":{"127":"阿華田","130":"红牛维生素好吃222"},"foodsSunitTable":{"127":"g","130":"ml"},"dateFrom":"2024-07-03T00:00:00.000Z","dateTo":"2024-07-31T00:00:00.000Z","createdAt":"2024-06-22T03:38:22.924Z","updatedAt":"2024-07-01T01:38:48.224Z","objectId":null,"sn":"1719027502922"}},{"id":1324,"title":"哈哈哈哈111+阿華田","itemType":"ADD","state":"init","amount":45,"realAmount":45,"employeeRemarks":null,"userRemarks":null,"isTemp":false,"branchCode":"B0000879","menuId":13,"orderId":338,"branchOrderId":null,"date":"2024-07-02T07:30:03.340Z","useDate":"2024-07-05T16:00:00.000Z","createdAt":"2024-07-02T07:30:03.342Z","updatedAt":"2024-07-02T07:30:03.342Z","objectId":null,"sn":null,"foods":[{"id":127,"title":"阿華田","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.526Z","updatedAt":"2024-03-27T05:26:27.565Z","objectId":"zVAwgMxZhH","sn":"zVAwgMxZhH"},{"id":132,"title":"哈哈哈哈111","weight":100,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/6ad1b34e8296581360edd2967ca1bad259ed54faabe5de3118d28e114a2a67fb_5.jpeg","name":"5.jpeg"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":null,"description":"我的aaa","groupId":1,"deleteAt":null,"createdAt":"2024-04-22T03:23:39.525Z","updatedAt":"2024-06-21T02:47:12.485Z","objectId":null,"sn":"1713756219523"}],"menu":{"id":13,"menuType":"lunch","title":"620","price":45,"period":"daily","days":null,"package":false,"cover":null,"description":null,"withArea":null,"withBranches":null,"withoutBranches":null,"canBuy":false,"foodsWeightTable":{"127":100,"130":250},"foodsTitleTable":{"127":"阿華田","130":"红牛维生素好吃222"},"foodsSunitTable":{"127":"g","130":"ml"},"dateFrom":"2024-07-03T00:00:00.000Z","dateTo":"2024-07-31T00:00:00.000Z","createdAt":"2024-06-22T03:38:22.924Z","updatedAt":"2024-07-01T01:38:48.224Z","objectId":null,"sn":"1719027502922"}},{"id":1325,"title":"哈哈哈哈111+阿華田","itemType":"ADD","state":"init","amount":45,"realAmount":45,"employeeRemarks":null,"userRemarks":null,"isTemp":false,"branchCode":"B0000879","menuId":13,"orderId":338,"branchOrderId":null,"date":"2024-07-02T08:16:22.854Z","useDate":"2024-07-05T16:00:00.000Z","createdAt":"2024-07-02T08:16:22.855Z","updatedAt":"2024-07-02T08:16:22.855Z","objectId":null,"sn":null,"foods":[{"id":127,"title":"阿華田","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.526Z","updatedAt":"2024-03-27T05:26:27.565Z","objectId":"zVAwgMxZhH","sn":"zVAwgMxZhH"},{"id":132,"title":"哈哈哈哈111","weight":100,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/6ad1b34e8296581360edd2967ca1bad259ed54faabe5de3118d28e114a2a67fb_5.jpeg","name":"5.jpeg"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":null,"description":"我的aaa","groupId":1,"deleteAt":null,"createdAt":"2024-04-22T03:23:39.525Z","updatedAt":"2024-06-21T02:47:12.485Z","objectId":null,"sn":"1713756219523"}],"menu":{"id":13,"menuType":"lunch","title":"620","price":45,"period":"daily","days":null,"package":false,"cover":null,"description":null,"withArea":null,"withBranches":null,"withoutBranches":null,"canBuy":false,"foodsWeightTable":{"127":100,"130":250},"foodsTitleTable":{"127":"阿華田","130":"红牛维生素好吃222"},"foodsSunitTable":{"127":"g","130":"ml"},"dateFrom":"2024-07-03T00:00:00.000Z","dateTo":"2024-07-31T00:00:00.000Z","createdAt":"2024-06-22T03:38:22.924Z","updatedAt":"2024-07-01T01:38:48.224Z","objectId":null,"sn":"1719027502922"}}]

MealOrderItem mealOrderItemFromJson(String str) =>
    MealOrderItem.fromJson(json.decode(str));
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
    dynamic objectId,
    List<OrderItem>? orderItem,
  }) {
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
    _orderItem = orderItem;
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
    if (json['orderItem'] != null) {
      _orderItem = [];
      json['orderItem'].forEach((v) {
        _orderItem?.add(OrderItem.fromJson(v));
      });
    }
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
  List<OrderItem>? _orderItem;
  MealOrderItem copyWith({
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
    dynamic objectId,
    List<OrderItem>? orderItem,
  }) =>
      MealOrderItem(
        id: id ?? _id,
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
        orderItem: orderItem ?? _orderItem,
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
  List<OrderItem>? get orderItem => _orderItem;

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
    if (_orderItem != null) {
      map['orderItem'] = _orderItem?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 1312
/// title : "哈哈哈哈111+阿華田"
/// itemType : "ADD"
/// state : "init"
/// amount : 45
/// realAmount : 45
/// employeeRemarks : null
/// userRemarks : null
/// isTemp : false
/// branchCode : "B0000879"
/// menuId : 13
/// orderId : 338
/// branchOrderId : null
/// date : "2024-07-02T07:29:41.662Z"
/// useDate : "2024-07-05T16:00:00.000Z"
/// createdAt : "2024-07-02T07:29:41.663Z"
/// updatedAt : "2024-07-02T07:29:41.663Z"
/// objectId : null
/// sn : null
/// foods : [{"id":127,"title":"阿華田","weight":100,"unit":"g","cover":null,"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":[],"description":null,"groupId":2,"deleteAt":null,"createdAt":"2024-03-27T03:31:54.526Z","updatedAt":"2024-03-27T05:26:27.565Z","objectId":"zVAwgMxZhH","sn":"zVAwgMxZhH"},{"id":132,"title":"哈哈哈哈111","weight":100,"unit":"g","cover":{"url":"https://storage.dev.heyday-catering.com:20443/scholar/cms/6ad1b34e8296581360edd2967ca1bad259ed54faabe5de3118d28e114a2a67fb_5.jpeg","name":"5.jpeg"},"kcal":0,"carbohydrate":0,"protein":0,"fat":0,"order":0,"allergens":null,"description":"我的aaa","groupId":1,"deleteAt":null,"createdAt":"2024-04-22T03:23:39.525Z","updatedAt":"2024-06-21T02:47:12.485Z","objectId":null,"sn":"1713756219523"}]
/// menu : {"id":13,"menuType":"lunch","title":"620","price":45,"period":"daily","days":null,"package":false,"cover":null,"description":null,"withArea":null,"withBranches":null,"withoutBranches":null,"canBuy":false,"foodsWeightTable":{"127":100,"130":250},"foodsTitleTable":{"127":"阿華田","130":"红牛维生素好吃222"},"foodsSunitTable":{"127":"g","130":"ml"},"dateFrom":"2024-07-03T00:00:00.000Z","dateTo":"2024-07-31T00:00:00.000Z","createdAt":"2024-06-22T03:38:22.924Z","updatedAt":"2024-07-01T01:38:48.224Z","objectId":null,"sn":"1719027502922"}

OrderItem orderItemFromJson(String str) => OrderItem.fromJson(json.decode(str));
String orderItemToJson(OrderItem data) => json.encode(data.toJson());

class OrderItem {
  OrderItem({
    num? id,
    String? title,
    String? itemType,
    String? state,
    num? amount,
    num? realAmount,
    dynamic employeeRemarks,
    dynamic userRemarks,
    bool? isTemp,
    String? branchCode,
    num? menuId,
    num? orderId,
    dynamic branchOrderId,
    String? date,
    String? useDate,
    String? createdAt,
    String? updatedAt,
    dynamic objectId,
    dynamic sn,
    List<Foods>? foods,
    MenuItem? menu,
  }) {
    _id = id;
    _title = title;
    _itemType = itemType;
    _state = state;
    _amount = amount;
    _realAmount = realAmount;
    _employeeRemarks = employeeRemarks;
    _userRemarks = userRemarks;
    _isTemp = isTemp;
    _branchCode = branchCode;
    _menuId = menuId;
    _orderId = orderId;
    _branchOrderId = branchOrderId;
    _date = date;
    _useDate = useDate;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _objectId = objectId;
    _sn = sn;
    _foods = foods;
    _menu = menu;
  }

  OrderItem.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _itemType = json['itemType'];
    _state = json['state'];
    _amount = json['amount'];
    _realAmount = json['realAmount'];
    _employeeRemarks = json['employeeRemarks'];
    _userRemarks = json['userRemarks'];
    _isTemp = json['isTemp'];
    _branchCode = json['branchCode'];
    _menuId = json['menuId'];
    _orderId = json['orderId'];
    _branchOrderId = json['branchOrderId'];
    _date = json['date'];
    _useDate = json['useDate'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _objectId = json['objectId'];
    _sn = json['sn'];
    if (json['foods'] != null) {
      _foods = [];
      json['foods'].forEach((v) {
        _foods?.add(Foods.fromJson(v));
      });
    }
    _menu = json['menu'] != null ? MenuItem.fromJson(json['menu']) : null;
  }
  num? _id;
  String? _title;
  String? _itemType;
  String? _state;
  num? _amount;
  num? _realAmount;
  dynamic _employeeRemarks;
  dynamic _userRemarks;
  bool? _isTemp;
  String? _branchCode;
  num? _menuId;
  num? _orderId;
  dynamic _branchOrderId;
  String? _date;
  String? _useDate;
  String? _createdAt;
  String? _updatedAt;
  dynamic _objectId;
  dynamic _sn;
  List<Foods>? _foods;
  MenuItem? _menu;
  OrderItem copyWith({
    num? id,
    String? title,
    String? itemType,
    String? state,
    num? amount,
    num? realAmount,
    dynamic employeeRemarks,
    dynamic userRemarks,
    bool? isTemp,
    String? branchCode,
    num? menuId,
    num? orderId,
    dynamic branchOrderId,
    String? date,
    String? useDate,
    String? createdAt,
    String? updatedAt,
    dynamic objectId,
    dynamic sn,
    List<Foods>? foods,
    MenuItem? menu,
  }) =>
      OrderItem(
        id: id ?? _id,
        title: title ?? _title,
        itemType: itemType ?? _itemType,
        state: state ?? _state,
        amount: amount ?? _amount,
        realAmount: realAmount ?? _realAmount,
        employeeRemarks: employeeRemarks ?? _employeeRemarks,
        userRemarks: userRemarks ?? _userRemarks,
        isTemp: isTemp ?? _isTemp,
        branchCode: branchCode ?? _branchCode,
        menuId: menuId ?? _menuId,
        orderId: orderId ?? _orderId,
        branchOrderId: branchOrderId ?? _branchOrderId,
        date: date ?? _date,
        useDate: useDate ?? _useDate,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        objectId: objectId ?? _objectId,
        sn: sn ?? _sn,
        foods: foods ?? _foods,
        menu: menu ?? _menu,
      );
  num? get id => _id;
  String? get title => _title;
  String? get itemType => _itemType;
  String? get state => _state;
  num? get amount => _amount;
  num? get realAmount => _realAmount;
  dynamic get employeeRemarks => _employeeRemarks;
  dynamic get userRemarks => _userRemarks;
  bool? get isTemp => _isTemp;
  String? get branchCode => _branchCode;
  num? get menuId => _menuId;
  num? get orderId => _orderId;
  dynamic get branchOrderId => _branchOrderId;
  String? get date => _date;
  String? get useDate => _useDate;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get objectId => _objectId;
  dynamic get sn => _sn;
  List<Foods>? get foods => _foods;
  MenuItem? get menu => _menu;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['itemType'] = _itemType;
    map['state'] = _state;
    map['amount'] = _amount;
    map['realAmount'] = _realAmount;
    map['employeeRemarks'] = _employeeRemarks;
    map['userRemarks'] = _userRemarks;
    map['isTemp'] = _isTemp;
    map['branchCode'] = _branchCode;
    map['menuId'] = _menuId;
    map['orderId'] = _orderId;
    map['branchOrderId'] = _branchOrderId;
    map['date'] = _date;
    map['useDate'] = _useDate;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['objectId'] = _objectId;
    map['sn'] = _sn;
    if (_foods != null) {
      map['foods'] = _foods?.map((v) => v.toJson()).toList();
    }
    if (_menu != null) {
      map['menu'] = _menu?.toJson();
    }
    return map;
  }
}
