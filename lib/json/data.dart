import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const String APP_TITLE = 'SHOP UI';
const String homeImg =
    'https://images.unsplash.com/photo-1503342217505-b0a15ec3261c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60';

const String profileUrl =
    "https://images.unsplash.com/photo-1616597082843-de7ce757d548?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60";

const List<Map<String, Object>> categories = [
  {
    'title': 'New In',
    'imgUrl':
        'https://images.unsplash.com/photo-1485462537746-965f33f7f6a7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Clothing',
    'imgUrl':
        'https://images.unsplash.com/photo-1495121605193-b116b5b9c5fe?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Men',
    'imgUrl':
        'https://images.unsplash.com/photo-1521341057461-6eb5f40b07ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
  },
  {
    'title': 'Women',
    'imgUrl':
        'https://images.unsplash.com/photo-1485968579580-b6d095142e6e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Couple',
    'imgUrl':
        'https://images.unsplash.com/photo-1550614000-4895a10e1bfd?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  },
];

const List<Map<String, Object>> popular = [
  {
    'title': 'Plastic Shoe Box ',
    'Location': 'Pasig',
    'img': 'images/products/popular/plasticshoebox.png',
    'message_count': '5',
    'likes_count': '56',
  },
  {
    'title': 'visvim x mastermind',
    'Location': 'Pateros',
    'img': 'images/products/popular/visvim.png',
    'message_count': '2',
    'likes_count': '27',
  },
  {
    'title': 'Pet Cage',
    'Location': 'Laguna',
    'img': 'images/products/popular/petcage.png',
    'message_count': '5',
    'likes_count': '44',
  },
  {
    'title': 'History Books',
    'Location': 'Davao',
    'img': 'images/products/popular/historybook.png',
    'message_count': '15',
    'likes_count': '42',
  },
  {
    'title': 'Cars Toyota',
    'Location': 'Makati',
    'img': 'images/products/popular/car.png',
    'message_count': '20',
    'likes_count': '30',
  },
  {
    'title': 'Tools Set',
    'Location': 'Pasig',
    'img': 'images/products/popular/toolset.png',
    'message_count': '19',
    'likes_count': '12',
  },
  {
    'title': 'Grocery Trolley Bag',
    'Location': 'Isabela',
    'img': 'images/products/popular/grocerytollbag.png',
    'message_count': '2',
    'likes_count': '10',
  },
  {
    'title': 'Dell Laptop',
    'Location': 'CSJDM',
    'img': 'images/products/popular/laptop.png',
    'message_count': '1',
    'likes_count': '8',
  }
];

const List<Map<String, Object>> recent = [
  {
    'title': 'Vans Shoes',
    'Location': 'Pateros',
    'img': 'images/products/recent/vans_shoes.png',
    'message_count': '5',
    'likes_count': '56',
  },
  {
    'title': 'visvim x mastermind',
    'Location': 'Taguig',
    'img': 'images/products/recent/vince_watch.png',
    'message_count': '2',
    'likes_count': '27',
  },
  {
    'title': 'Beach Tote Bag',
    'Location': 'Pasig',
    'img': 'images/products/recent/beach_tote.png',
    'message_count': '5',
    'likes_count': '44',
  },
  {
    'title': 'Zara Croptop Polo',
    'Location': 'CSJDM',
    'img': 'images/products/recent/zara_crop.png',
    'message_count': '15',
    'likes_count': '42',
  },
  {
    'title': 'Zabala Drums Brands',
    'Location': 'Malolos',
    'img': 'images/products/recent/drums.png',
    'message_count': '20',
    'likes_count': '30',
  },
  {
    'title': 'Samsung Printer',
    'Location': 'Naic',
    'img': 'images/products/recent/printer.png',
    'message_count': '19',
    'likes_count': '12',
  },
  {
    'title': 'Lacoste Longsleeve',
    'Location': 'Isabela',
    'img': 'images/products/recent/lacoste_longsleeve.png',
    'message_count': '2',
    'likes_count': '10',
  },
  {
    'title': 'Lawn Mower',
    'Location': 'CSJDM',
    'img': 'images/products/recent/lawn_mower.png',
    'message_count': '1',
    'likes_count': '8',
  }
];

const List<Map<String, Object>> reccomended = [
  {
    'title': 'Extension',
    'Location': 'Pateros',
    'img': 'images/products/reccomended/wire.png',
    'message_count': '5',
    'likes_count': '56',
  },
  {
    'title': 'Jar',
    'Location': 'Taguig',
    'img': 'images/products/reccomended/jar.png',
    'message_count': '2',
    'likes_count': '27',
  },
  {
    'title': 'Souveneir',
    'Location': 'Pasig',
    'img': 'images/products/reccomended/souveneir.png',
    'message_count': '5',
    'likes_count': '44',
  },
  {
    'title': 'Watch Holder',
    'Location': 'CSJDM',
    'img': 'images/products/reccomended/watch_holder.png',
    'message_count': '15',
    'likes_count': '42',
  },
  {
    'title': 'Goods Mountain bike',
    'Location': 'Malolos',
    'img': 'images/products/reccomended/mountain_bike.png',
    'message_count': '20',
    'likes_count': '30',
  },
  {
    'title': 'Unique ukelele',
    'Location': 'Naic',
    'img': 'images/products/reccomended/ukelele.png',
    'message_count': '19',
    'likes_count': '12',
  },
  {
    'title': 'Pacman Gloves',
    'Location': 'Isabela',
    'img': 'images/products/reccomended/boxing_gloves.png',
    'message_count': '2',
    'likes_count': '10',
  },
  {
    'title': 'Lanaban Dress',
    'Location': 'CSJDM',
    'img': 'images/products/reccomended/dress.png',
    'message_count': '1',
    'likes_count': '8',
  }
];

const List<String> slider = [
  'https://images.unsplash.com/photo-1465408953385-7c4627c29435?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzV8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/flagged/photo-1574876242429-3164fb8bf4bc?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1483118714900-540cf339fd46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
];

const List<Map<String, Object>> explores = [
  {
    'title': 'Jackets',
    'imgUrl':
        'https://images.unsplash.com/photo-1551537482-f2075a1d41f2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Coats',
    'imgUrl':
        'https://images.unsplash.com/photo-1520012218364-3dbe62c99bee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Accessories',
    'imgUrl':
        'https://images.unsplash.com/photo-1509741102003-ca64bfe5f069?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Demin',
    'imgUrl':
        'https://images.unsplash.com/photo-1548435407-2d408a5f0aa3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Handbag',
    'imgUrl':
        'https://images.unsplash.com/photo-1524498250077-390f9e378fc0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Hat',
    'imgUrl':
        'https://images.unsplash.com/photo-1514327605112-b887c0e61c0a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  }
];

const List<Map<String, Object>> exploreProduct = [
  {
    'title': 'Jacket',
    'subTitle': 'Blues Explorsion',
    'imgUrl':
        'https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Coats',
    'subTitle': 'Blues Explorsion',
    'imgUrl':
        'https://images.unsplash.com/photo-1539533018447-63fcce2678e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Accessories',
    'subTitle': 'Blues Explorsion',
    'imgUrl':
        'https://images.unsplash.com/photo-1556656793-08538906a9f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Demin',
    'subTitle': 'Blues Explorsion',
    'imgUrl':
        'https://images.unsplash.com/photo-1544642899-f0d6e5f6ed6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Handbag',
    'subTitle': 'Blues Explorsion',
    'imgUrl':
        'https://images.unsplash.com/photo-1560891958-68bb1fe7fb78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
  }
];

const List<String> exploreSlide = [
  'https://images.unsplash.com/photo-1591997297702-d43f7f008486?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjQ3MzMyfQ&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565155003033-252a7073802c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1561537051-cf36d6224a9f?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1549822944-02701d3e20ed?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
];

const List<Map<String, Object>> subcategories = [
  {
    'title': 'T-Shirts',
    'imgUrl':
        'https://img.alicdn.com/imgextra/i3/2472663307/O1CN01GHWzn61aIeOP2exzq_!!2472663307-0-lubanu-s.jpg_500x500.jpg'
  },
  {
    'title': 'Sweats',
    'imgUrl':
        'https://img.alicdn.com/imgextra/i1/2854425749/O1CN011sL5R1iPjWP3kmt_!!2854425749.jpg_500x500.jpg'
  },
  {
    'title': 'Jackets',
    'imgUrl':
        'https://img.alicdn.com/imgextra/i3/732039845/O1CN01LL4Kdt2Mb3sOFPWIl_!!732039845-0-lubanu-s.jpg_500x500.jpg'
  },
  {
    'title': 'Jeans',
    'imgUrl':
        'https://img.alicdn.com/imgextra/i4/3655303985/O1CN01XICa671fJAsO7Q90Q_!!0-item_pic.jpg_500x500.jpg'
  },
  {
    'title': 'Overalls',
    'imgUrl':
        'https://img.alicdn.com/imgextra/i1/278238551/O1CN019NPekl2D2PMdIXp28_!!278238551-0-lubanu-s.jpg_500x500.jpg'
  },
  {
    'title': 'Skirts',
    'imgUrl':
        'https://img.alicdn.com/imgextra/i2/1595030501/O1CN01qyKPJJ1FZUzEjUOIY_!!1595030501.jpg_500x500.jpg'
  },
  {
    'title': 'Backpack',
    'imgUrl':
        'https://img.alicdn.com/imgextra/i4/1595030501/O1CN01pqxD2f1FZUywgzA24_!!1595030501.jpg_500x500.jpg'
  },
  {
    'title': 'Bag',
    'imgUrl':
        'https://img.alicdn.com/imgextra/i4/3655303985/O1CN01vxwMwF1fJAtErBkyH_!!3655303985.jpg_500x500.jpg'
  },
  {
    'title': 'Watch',
    'imgUrl':
        'https://img.alicdn.com/imgextra/i2/2600752020/O1CN01safAmD1QnCeuLUN3C_!!2600752020.jpg_500x500.jpg'
  },
  {
    'title': 'Dresses',
    'imgUrl':
        'https://myfashion2017.s3.amazonaws.com/thum/Thefashion_20190804145741-472815.JPG'
  },
];

const List<Map<String, Color>> colors = [
  {'title': Colors.green},
  {'title': Colors.blue},
  {'title': Colors.orange},
  {'title': Colors.black},
];

const List<Map<String, Object>> sizes = [
  {'title': 'S'},
  {'title': 'M'},
  {'title': 'L'},
  {'title': 'XL'},
  {'title': 'XXL'},
];

const List exploreBanner = [
  {
    'year': '2019',
    'title': 'Urban Collection',
    'description':
        'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE COLLECTION'
  },
  {
    'year': '2020',
    'title': 'Urban Fashion',
    'description':
        'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE FASHION'
  },
  {
    'year': '2021',
    'title': 'Urban Collection',
    'description':
        'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE COLLECTION'
  },
  {
    'year': '2022',
    'title': 'Urban Fashion',
    'description':
        'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE FASHION'
  },
];

const List productDetail = [
  'https://images.unsplash.com/photo-1565155003033-252a7073802c?ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80',
  'https://images.unsplash.com/photo-1545911825-6bfa5b0c34a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1572112686886-5c0b5bc8dacd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1582041148887-67274b989ae3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
];

const List brands = ['Adidas', 'Bershka', 'Converse', 'Diesel'];

const List historySearches = [
  'Red Sunglasses',
  'Large T-Shirt',
  'Jaws Hoodie',
  'Blue Sweater',
  'Levi’s Jeans'
];

const List cartList = [
  {
    "img":
        "https://images.unsplash.com/photo-1495385794356-15371f348c31?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "name": "Snoopy T-shirt",
    "ref": "04559812",
    "price": "\$40",
    "size": "S"
  },
  {
    "img":
        "https://images.unsplash.com/photo-1545291730-faff8ca1d4b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "name": "American",
    "ref": "04459811",
    "price": "\$30",
    "size": "M"
  },
];

List menusMore = [
  "Home",
  "Explore",
  "Stores",
  "Cart",
  "Notifications",
  "Loyalty Card",
  "My orders"
];

List itemsTab = [
  {"icon": Icons.home, "size": 28.0},
  {"icon": FontAwesomeIcons.syncAlt, "size": 22.0},
  {"icon": FontAwesomeIcons.plusCircle, "size": 30.0},
  {"icon": FontAwesomeIcons.facebookMessenger, "size": 22.0},
  {"icon": FontAwesomeIcons.userAlt, "size": 21.0},
];

List accountList = [
  "Account Details",
  "Loyalty card & offers",
  "Notifications",
  "Delivery Information",
  "Payment Information",
  "Language",
  "Privacy Settings"
];

List storeList = [
  {
    "img":
        "https://images.unsplash.com/photo-1507914372368-b2b085b925a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "name": "Châtelet - Les Halles, Paris",
    "open": 1
  },
  {
    "img":
        "https://images.unsplash.com/photo-1546213290-e1b492ab3eee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "name": "Champs-Élysées, Paris",
    "open": 0
  },
  {
    "img":
        "https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "name": "Châtelet - Les Halles, Paris",
    "open": 1
  },
];
