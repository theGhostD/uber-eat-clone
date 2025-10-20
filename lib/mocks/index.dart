import 'package:flutter/material.dart';
import 'package:uber_eat/features/auth/presentation/models/country_models.dart';
import 'package:uber_eat/features/explore/presentation/models/reels.dart';
import 'package:uber_eat/features/home/presentation/models/category.dart';
import 'package:uber_eat/features/home/presentation/models/promo.dart';
import 'package:uber_eat/features/home/presentation/models/resturant.dart';

const availableCountry = [
  CountryModels(
    countryCode: '+1',
    countryName: 'United States of America',
    imageUrl: 'https://flagcdn.com/w320/us.png',
  ),
  CountryModels(
    countryCode: '+213',
    countryName: 'Algeria',
    imageUrl: 'https://flagcdn.com/w320/dz.png',
  ),
  CountryModels(
    countryCode: '+244',
    countryName: 'Angola',
    imageUrl: 'https://flagcdn.com/w320/ao.png',
  ),
  CountryModels(
    countryCode: '+267',
    countryName: 'Botswana',
    imageUrl: 'https://flagcdn.com/w320/bw.png',
  ),
  CountryModels(
    countryCode: '+226',
    countryName: 'Burkina Faso',
    imageUrl: 'https://flagcdn.com/w320/bf.png',
  ),
  CountryModels(
    countryCode: '+237',
    countryName: 'Cameroon',
    imageUrl: 'https://flagcdn.com/w320/cm.png',
  ),
  CountryModels(
    countryCode: '+236',
    countryName: 'Central African Republic',
    imageUrl: 'https://flagcdn.com/w320/cf.png',
  ),
  CountryModels(
    countryCode: '+243',
    countryName: 'Congo, Democratic Republic of the',
    imageUrl: 'https://flagcdn.com/w320/cd.png',
  ),
  CountryModels(
    countryCode: '+20',
    countryName: 'Egypt',
    imageUrl: 'https://flagcdn.com/w320/eg.png',
  ),
  CountryModels(
    countryCode: '+291',
    countryName: 'Eritrea',
    imageUrl: 'https://flagcdn.com/w320/er.png',
  ),
  CountryModels(
    countryCode: '+251',
    countryName: 'Ethiopia',
    imageUrl: 'https://flagcdn.com/w320/et.png',
  ),
  CountryModels(
    countryCode: '+220',
    countryName: 'Gambia',
    imageUrl: 'https://flagcdn.com/w320/gm.png',
  ),
  CountryModels(
    countryCode: '+224',
    countryName: 'Guinea',
    imageUrl: 'https://flagcdn.com/w320/gn.png',
  ),
  CountryModels(
    countryCode: '+245',
    countryName: 'Guinea-Bissau',
    imageUrl: 'https://flagcdn.com/w320/gw.png',
  ),
  CountryModels(
    countryCode: '+254',
    countryName: 'Kenya',
    imageUrl: 'https://flagcdn.com/w320/ke.png',
  ),
  CountryModels(
    countryCode: '+223',
    countryName: 'Mali',
    imageUrl: 'https://flagcdn.com/w320/ml.png',
  ),
  CountryModels(
    countryCode: '+230',
    countryName: 'Mauritius',
    imageUrl: 'https://flagcdn.com/w320/mu.png',
  ),
  CountryModels(
    countryCode: '+212',
    countryName: 'Morocco',
    imageUrl: 'https://flagcdn.com/w320/ma.png',
  ),
  CountryModels(
    countryCode: '+258',
    countryName: 'Mozambique',
    imageUrl: 'https://flagcdn.com/w320/mz.png',
  ),
  CountryModels(
    countryCode: '+234',
    countryName: 'Nigeria',
    imageUrl: 'https://i.ibb.co/Y3S8jQm/nig-Country2.png',
  ),
  CountryModels(
    countryCode: '+250',
    countryName: 'Rwanda',
    imageUrl: 'https://flagcdn.com/w320/rw.png',
  ),
  CountryModels(
    countryCode: '+221',
    countryName: 'Senegal',
    imageUrl: 'https://flagcdn.com/w320/sn.png',
  ),
  CountryModels(
    countryCode: '+232',
    countryName: 'Sierra Leone',
    imageUrl: 'https://flagcdn.com/w320/sl.png',
  ),
  CountryModels(
    countryCode: '+27',
    countryName: 'South Africa',
    imageUrl: 'https://flagcdn.com/w320/za.png',
  ),
  CountryModels(
    countryCode: '+255',
    countryName: 'Tanzania',
    imageUrl: 'https://flagcdn.com/w320/tz.png',
  ),
  CountryModels(
    countryCode: '+222',
    countryName: 'Mauritania',
    imageUrl: 'https://flagcdn.com/w320/mr.png',
  ),
  CountryModels(
    countryCode: '+264',
    countryName: 'Namibia',
    imageUrl: 'https://flagcdn.com/w320/na.png',
  ),
  CountryModels(
    countryCode: '+229',
    countryName: 'Benin',
    imageUrl: 'https://flagcdn.com/w320/bj.png',
  ),
  CountryModels(
    countryCode: '+238',
    countryName: 'Cape Verde',
    imageUrl: 'https://flagcdn.com/w320/cv.png',
  ),
  CountryModels(
    countryCode: '+235',
    countryName: 'Chad',
    imageUrl: 'https://flagcdn.com/w320/td.png',
  ),
  CountryModels(
    countryCode: '+269',
    countryName: 'Comoros',
    imageUrl: 'https://flagcdn.com/w320/km.png',
  ),
  CountryModels(
    countryCode: '+253',
    countryName: 'Djibouti',
    imageUrl: 'https://flagcdn.com/w320/dj.png',
  ),
  CountryModels(
    countryCode: '+240',
    countryName: 'Equatorial Guinea',
    imageUrl: 'https://flagcdn.com/w320/gq.png',
  ),
  CountryModels(
    countryCode: '+241',
    countryName: 'Gabon',
    imageUrl: 'https://flagcdn.com/w320/ga.png',
  ),
  CountryModels(
    countryCode: '+233',
    countryName: 'Ghana',
    imageUrl: 'https://flagcdn.com/w320/gh.png',
  ),
  CountryModels(
    countryCode: '+261',
    countryName: 'Madagascar',
    imageUrl: 'https://flagcdn.com/w320/mg.png',
  ),
  CountryModels(
    countryCode: '+265',
    countryName: 'Malawi',
    imageUrl: 'https://flagcdn.com/w320/mw.png',
  ),
  CountryModels(
    countryCode: '+227',
    countryName: 'Niger',
    imageUrl: 'https://flagcdn.com/w320/ne.png',
  ),
  CountryModels(
    countryCode: '+248',
    countryName: 'Seychelles',
    imageUrl: 'https://flagcdn.com/w320/sc.png',
  ),
  CountryModels(
    countryCode: '+260',
    countryName: 'Zambia',
    imageUrl: 'https://flagcdn.com/w320/zm.png',
  ),
  CountryModels(
    countryCode: '+672',
    countryName: 'Antarctica',
    imageUrl: 'https://flagcdn.com/w320/aq.png',
  ),
  CountryModels(
    countryCode: '+55',
    countryName: 'Bouvet Island',
    imageUrl: 'https://flagcdn.com/w320/bv.png',
  ),
  CountryModels(
    countryCode: '+262',
    countryName: 'French Southern Territories',
    imageUrl: 'https://flagcdn.com/w320/tf.png',
  ),
  CountryModels(
    countryCode: '+880',
    countryName: 'Bangladesh',
    imageUrl: 'https://flagcdn.com/w320/bd.png',
  ),
  CountryModels(
    countryCode: '+855',
    countryName: 'Cambodia',
    imageUrl: 'https://flagcdn.com/w320/kh.png',
  ),
  CountryModels(
    countryCode: '+86',
    countryName: 'China',
    imageUrl: 'https://flagcdn.com/w320/cn.png',
  ),
  CountryModels(
    countryCode: '+91',
    countryName: 'India',
    imageUrl: 'https://flagcdn.com/w320/in.png',
  ),
  CountryModels(
    countryCode: '+62',
    countryName: 'Indonesia',
    imageUrl: 'https://flagcdn.com/w320/id.png',
  ),
  CountryModels(
    countryCode: '+964',
    countryName: 'Iraq',
    imageUrl: 'https://flagcdn.com/w320/iq.png',
  ),
  CountryModels(
    countryCode: '+962',
    countryName: 'Jordan',
    imageUrl: 'https://flagcdn.com/w320/jo.png',
  ),
  CountryModels(
    countryCode: '+7',
    countryName: 'Kazakhstan',
    imageUrl: 'https://flagcdn.com/w320/kz.png',
  ),
  CountryModels(
    countryCode: '+961',
    countryName: 'Lebanon',
    imageUrl: 'https://flagcdn.com/w320/lb.png',
  ),
  CountryModels(
    countryCode: '+853',
    countryName: 'Macau',
    imageUrl: 'https://flagcdn.com/w320/mo.png',
  ),
  CountryModels(
    countryCode: '+60',
    countryName: 'Malaysia',
    imageUrl: 'https://flagcdn.com/w320/my.png',
  ),
  CountryModels(
    countryCode: '+960',
    countryName: 'Maldives',
    imageUrl: 'https://flagcdn.com/w320/mv.png',
  ),
  CountryModels(
    countryCode: '+976',
    countryName: 'Mongolia',
    imageUrl: 'https://flagcdn.com/w320/mn.png',
  ),
  CountryModels(
    countryCode: '+92',
    countryName: 'Pakistan',
    imageUrl: 'https://flagcdn.com/w320/pk.png',
  ),
  CountryModels(
    countryCode: '+970',
    countryName: 'Palestine, State of',
    imageUrl: 'https://flagcdn.com/w320/ps.png',
  ),
  CountryModels(
    countryCode: '+63',
    countryName: 'Philippines',
    imageUrl: 'https://flagcdn.com/w320/ph.png',
  ),
  CountryModels(
    countryCode: '+94',
    countryName: 'Sri Lanka',
    imageUrl: 'https://flagcdn.com/w320/lk.png',
  ),
  CountryModels(
    countryCode: '+66',
    countryName: 'Thailand',
    imageUrl: 'https://flagcdn.com/w320/th.png',
  ),
  CountryModels(
    countryCode: '+90',
    countryName: 'Turkey',
    imageUrl: 'https://flagcdn.com/w320/tr.png',
  ),
  CountryModels(
    countryCode: '+84',
    countryName: 'Vietnam',
    imageUrl: 'https://flagcdn.com/w320/vn.png',
  ),
  CountryModels(
    countryCode: '+975',
    countryName: 'Bhutan',
    imageUrl: 'https://flagcdn.com/w320/bt.png',
  ),
  CountryModels(
    countryCode: '+246',
    countryName: 'British Indian Ocean Territory',
    imageUrl: 'https://flagcdn.com/w320/io.png',
  ),
  CountryModels(
    countryCode: '+972',
    countryName: 'Israel',
    imageUrl: 'https://flagcdn.com/w320/il.png',
  ),
  CountryModels(
    countryCode: '+81',
    countryName: 'Japan',
    imageUrl: 'https://flagcdn.com/w320/jp.png',
  ),
  CountryModels(
    countryCode: '+968',
    countryName: 'Oman',
    imageUrl: 'https://flagcdn.com/w320/om.png',
  ),
  CountryModels(
    countryCode: '+966',
    countryName: 'Saudi Arabia',
    imageUrl: 'https://flagcdn.com/w320/sa.png',
  ),
  CountryModels(
    countryCode: '+65',
    countryName: 'Singapore',
    imageUrl: 'https://flagcdn.com/w320/sg.png',
  ),
  CountryModels(
    countryCode: '+374',
    countryName: 'Armenia',
    imageUrl: 'https://flagcdn.com/w320/am.png',
  ),
  CountryModels(
    countryCode: '+994',
    countryName: 'Azerbaijan',
    imageUrl: 'https://flagcdn.com/w320/az.png',
  ),
  CountryModels(
    countryCode: '+973',
    countryName: 'Bahrain',
    imageUrl: 'https://flagcdn.com/w320/bh.png',
  ),
  CountryModels(
    countryCode: '+673',
    countryName: 'Brunei Darussalam',
    imageUrl: 'https://flagcdn.com/w320/bn.png',
  ),
  CountryModels(
    countryCode: '+995',
    countryName: 'Georgia',
    imageUrl: 'https://flagcdn.com/w320/ge.png',
  ),
  CountryModels(
    countryCode: '+852',
    countryName: 'Hong Kong',
    imageUrl: 'https://flagcdn.com/w320/hk.png',
  ),
  CountryModels(
    countryCode: '+965',
    countryName: 'Kuwait',
    imageUrl: 'https://flagcdn.com/w320/kw.png',
  ),
  CountryModels(
    countryCode: '+977',
    countryName: 'Nepal',
    imageUrl: 'https://flagcdn.com/w320/np.png',
  ),
  CountryModels(
    countryCode: '+974',
    countryName: 'Qatar',
    imageUrl: 'https://flagcdn.com/w320/qa.png',
  ),
  CountryModels(
    countryCode: '+359',
    countryName: 'Bulgaria',
    imageUrl: 'https://flagcdn.com/w320/bg.png',
  ),
];

const availableCategory = [
  CategoryModel(
    name: 'Grocery',
    imageUrl: 'assets/category_images/Grocery.png',
  ),

  CategoryModel(
    name: 'Alcohol',
    imageUrl: 'assets/category_images/alcohol.png',
  ),

  CategoryModel(
    name: 'Ice Cream',
    imageUrl: 'assets/category_images/ice_cream.png',
  ),
  CategoryModel(name: 'Halal', imageUrl: 'assets/category_images/Halal.png'),

  CategoryModel(
    name: 'Convenience',
    imageUrl: 'assets/category_images/convenience.png',
  ),
  CategoryModel(name: 'Retail', imageUrl: 'assets/category_images/Retails.png'),

  CategoryModel(
    name: 'Caribbean',
    imageUrl: 'assets/category_images/Carribean.png',
  ),

  CategoryModel(
    name: 'Flowers',
    imageUrl: 'assets/category_images/flowers.png',
  ),

  CategoryModel(
    name: 'Specialty',
    imageUrl: 'assets/category_images/Burger.png',
  ),
  CategoryModel(
    name: 'Takeout',
    imageUrl: 'assets/category_images/Takeout.png',
  ),
  CategoryModel(
    name: 'American',
    imageUrl: 'assets/category_images/American.png',
  ),

  CategoryModel(
    name: 'Pet Supplies',
    imageUrl: 'assets/category_images/PetSupplies.png',
  ),

  CategoryModel(
    name: 'Fast Food',
    imageUrl: 'assets/category_images/FastFoods.png',
  ),
  CategoryModel(name: 'French', imageUrl: 'assets/category_images/French.png'),
];

const availableResturantList = [
  ResturantCardModel(
    imageUrl: 'assets/home_images/image1.png',
    isFavorite: false,
    rating: '4.4',
    title: 'Adenine Kitchen',
    isPromo: true,
    duration: '10-15 min',
  ),
  ResturantCardModel(
    imageUrl: 'assets/home_images/image2.png',
    isFavorite: false,
    rating: '4.3',
    title: 'Cardinal Chips',
    duration: '10-25 min',
  ),

  ResturantCardModel(
    imageUrl: 'assets/home_images/image3.png',
    isFavorite: false,
    rating: '4.1',
    title: 'Ice Cream Bar',
    duration: '30-35 min',
  ),
  ResturantCardModel(
    imageUrl: 'assets/home_images/image4.png',
    isFavorite: false,
    rating: '4.5',
    title: 'Round eatery',
    duration: '10-25 min',
  ),
  ResturantCardModel(
    imageUrl: 'assets/home_images/image5.png',
    isFavorite: false,
    rating: '4.5',
    title: 'African Flavour',
    duration: '10-25 min',
  ),
];

const availablePromo = [
  PromoModel(
    imageUrl: 'assets/home_images/promo1.png',
    copy: 'Order from these restaurants and save',
    color: Color(0xFFD2D7F0),
  ),
  PromoModel(
    imageUrl: 'assets/home_images/promo2.png',
    copy: 'Have cleaning supplies and other convinence items delivered',
    color: Color(0xFF9EE2B8),
  ),
];

List<ReelsModel> videoUrls = [
  ReelsModel(
    desp: "Juicy double patty burger with melted cheese and fresh toppings - premium quality",
    name: "Classic Burger",
    price: '999.99',
    videoUrl: 'https://res.cloudinary.com/dafkpzydf/video/upload/q_auto,f_auto/v1760699693/ScreenRecording_10-17-2025_12-05-16_PM_1_oopkq9.mov',
    brandname: 'Burger King'
  ),
  ReelsModel(
    desp: "Spicy suya seasoned taco with tender meat and fresh veggies - street food perfection",
    name: "Suya Taco",
    price: '1099.99',
    videoUrl: 'https://res.cloudinary.com/dafkpzydf/video/upload/q_auto,f_auto/v1760699690/ScreenRecording_10-17-2025_12-06-17_PM_1_xz0we4.mov',
    brandname: 'Taco Bell'
  ),
  ReelsModel(
    desp: "Authentic Mexican tacos with slow-cooked beef and handmade tortillas",
    name: "Beef Tacos",
    price: '899.99',
    videoUrl: 'https://res.cloudinary.com/dafkpzydf/video/upload/q_auto,f_auto/v1760699681/ScreenRecording_10-17-2025_12-06-29_PM_1_nmbwjh.mov',
    brandname: 'Tacos El Rey'
  ),
  ReelsModel(
    desp: "Garlic butter jumbo shrimps grilled to perfection with lemon herb sauce",
    name: "Garlic Shrimps",
    price: '949.99',
    videoUrl: 'https://res.cloudinary.com/dafkpzydf/video/upload/q_auto,f_auto/v1760696788/IMG_5550_ymtmfb.mov',
    brandname: 'Shrimp Shack'
  ),
  ReelsModel(
    desp: "Premium streak steak cooked medium-rare with chimichurri sauce and fries",
    name: "Streak Steak",
    price: '1199.99',
    videoUrl: 'https://res.cloudinary.com/dafkpzydf/video/upload/q_auto,f_auto/v1760696768/IMG_5557_intjor.mov',
    brandname: 'Steak House'
  ),
  ReelsModel(
    desp: "Ultimate main burger with bacon, avocado, and signature sauce - restaurant quality",
    name: "Main Burger",
    price: '799.99',
    videoUrl: 'https://res.cloudinary.com/dafkpzydf/video/upload/q_auto,f_auto/v1760696735/IMG_5552_vp3y8v.mov',
    brandname: 'Burger Joint'
  ),
  ReelsModel(
    desp: "Authentic Nigerian jollof rice with smoked fish, chicken and plantain",
    name: "Jollof Rice",
    price: '1049.99',
    videoUrl: 'https://res.cloudinary.com/dafkpzydf/video/upload/q_auto,f_auto/v1760696723/568BD4FF-9600-451F-9039-B9800159BDC3_agfyvq.mov',
    brandname: 'Mama Put'
  ),
  ReelsModel(
    desp: "Creamy vanilla ice cream with chocolate chips and waffle cone - dessert heaven",
    name: "Vanilla Ice Cream",
    price: '1299.99',
    videoUrl: 'https://res.cloudinary.com/dafkpzydf/video/upload/q_auto,f_auto/v1760696705/F2540A1A-50A6-4C4E-BA92-A90AD05F59C6_o7lg6c.mov',
    brandname: 'Ice Cream Palace'
  ),
  ReelsModel(
    desp: "Exotic culture fusion dish with African and Mexican flavors combined",
    name: "Culture Fusion",
    price: '699.99',
    videoUrl: 'https://res.cloudinary.com/dafkpzydf/video/upload/q_auto,f_auto/v1760696699/ab2f8ccf6cdc45bca53cbc4e495b26dd_rtbshp.mp4',
    brandname: 'Culture Kitchen'
  ),
  ReelsModel(
    desp: "Complete main course platter with rice, protein, and fresh salad sides",
    name: "Main Course",
    price: '899.99',
    videoUrl: 'https://res.cloudinary.com/dafkpzydf/video/upload/q_auto,f_auto/v1760695980/VIDEO-2025-10-16-22-22-30_q18bdu.mp4',
    brandname: 'Main Course Masters'
  ),
  ReelsModel(
    desp: "Loaded pepperoni pizza with extra cheese and crispy crust - Italian classic",
    name: "Pepperoni Pizza",
    price: '999.99',
    videoUrl: 'https://res.cloudinary.com/dafkpzydf/video/upload/q_auto,f_auto/v1760699693/ScreenRecording_10-17-2025_12-04-13_PM_1_pct6af.mov',
    brandname: 'Pizza Palace'
  ),
];
List<String> videoUrls1 = [
  'assets/videos/video1.mov',
  'assets/videos/video2.mov',
  'assets/videos/video3.mov',
  'assets/videos/video4.mov',
  'assets/videos/video5.mov',
  'assets/videos/video6.mov',
  'assets/videos/video7.mov',
];
