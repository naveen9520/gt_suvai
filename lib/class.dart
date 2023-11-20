class gts {
final String? image;
gts(this.image);
}
List gt = gtData.map((e) => gts(e["image"])).toList();
var gtData =[
{"image":"assets/img/HM.jpg",},
{"image":"assets/img/HM1.jpg",},
{"image":"assets/img/HM2.jpg",},
{"image":"assets/img/HM3.jpg",},
];


class pay {
final String? image;
pay(this.image);
}
List payimage = payimageData.map((e) => pay(e["image"])).toList();
var payimageData =[
{"image":"assets/img/offer.jpg",},
{"image":"assets/img/pp.jpg",},
{"image":"assets/img/cake.jpg",},
];


class donuts {
final String? image;
donuts(this.image);
}
List Donut = DonutData.map((e) => donuts(e["image"])).toList();
var DonutData =[
{"image":"assets/img/pp.jpg",},
];


class bank {
final String? image;
bank(this.image);
}
List dis = disData.map((e) => bank(e["image"])).toList();
var disData =[
{"image":"assets/img/idbi.jpg",},
{"image":"assets/img/idfc.jpg",},
];


class hotelDetail {
final String? image;
final String? place;
final String? distance;
final String? rating;
final String? hotelName;
final String? cusine;
hotelDetail(this.image,this.place,this.distance,
this.rating,this.hotelName,this.cusine);

}
List Similar = SimilarData.map((e) => hotelDetail(
e["image"],
e["place"],
e["distance"],
e["rating"],
e["hotelName"],
e["cusine"],
)).toList();
var SimilarData =[
{
"image":"assets/img/ap.jpg",
"place":"RaceCourse,Coimbatore",
"distance":"10-30mins-4km",
"rating":"4",
"hotelName":"Annapoorna",
"cusine":"Veg-Chinese-Italian"
},
{
"image":"assets/img/ap.jpg",
"place":"NavaIndia,Coimbatore",
"distance":"20-30mins-7km",
"rating":"4.5",
"hotelName":"Spot Restrarunt",
"cusine":"NonVeg-Chinese-Korean"
},{
"image":"assets/img/ap.jpg",
"place":"Sungam,Coimbatore",
"distance":"15-20mins-5km",
"rating":"4.4",
"hotelName":"Gowri Krishna",
"cusine":"PureVeg-Chinese"
},{
"image":"assets/img/ap.jpg",
"place":"Gandhipuram,Coimbatore",
"distance":"25-40 mins-10km",
"rating":"4.6",
"hotelName":"Geetha Mess",
"cusine":"Veg-Nonveg-Chinese"
},




];


class Offers {
  final String? image;
  Offers(this.image);
}
List Offer_details = offerData.map((e) => Offers(e["image"])).toList();
var offerData =[
  {"image":"assets/img/meals.jpg",},
  {"image":"assets/img/cake.jpg",},
  {"image":"assets/img/burger.jpeg",},
];


class Budget {
  final String? image;
  final String? text;
  Budget(this.image,this.text);
}
List budgetdetails = budgetData.map((e) => Budget(e["image"],e["text"])).toList();
var budgetData =[
  {"image":"assets/img/meals.jpg","text":"77"},
  {"image":"assets/img/cake.jpg","text":"88"},
  {"image":"assets/img/burger.jpeg","text":"99"},
];



