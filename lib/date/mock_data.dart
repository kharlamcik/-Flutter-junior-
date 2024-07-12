const String mockProductData = '''
[
  {
    "id": 1,
    "rating": 4.5,
    "productName": "Buldak Jjajang со вкусом курицы Samyang",
    "category": "Лапша быстрого приготовления",
    "price": 500,
    "description": "Samyang Hot Chicken Flavour Ramen или Buldak Bokkeum Ramyun, широко известный как огненная лапша, - это марка рамена, производимая Samyang Food в Южной Корее. Его невероятно пряный вкус заставляет кого-то так трудно его закончить, но из-за этой жгучей пряности он вызывает у любителей острой еды такое привыкание! Он просто идеален для всех, кто любит острую пищу! Попробуйте, если осмелитесь!",
    "images": [
      "https://i.pinimg.com/736x/a5/3c/f1/a53cf1ae38c5704ded6d253314218d68.jpg",
      "https://i.pinimg.com/564x/2a/bb/27/2abb275e1ebcfea315ad10d52fe3f96b.jpg",
      "https://i.pinimg.com/736x/b4/cc/b1/b4ccb1ae20afd7f219bf1b76edfdce9d.jpg",
      "https://i.pinimg.com/564x/e8/e8/6c/e8e86c6d30c6983ea39af4e9f019aee1.jpg"
    ]
  },
  {
      "id": 2,
      "rating": 4.0,
      "productName": "Название товара 2",
      "category": "Категория 2",
      "price": 75,
      "description": "Описание товара 2",
      "images": [
        "https://via.placeholder.com/150/0000FF/808080",
        "https://via.placeholder.com/150/FF0000/FFFFFF",
        "https://via.placeholder.com/150/FFFF00/000000"
      ]
    },
    {
      "id": 3,
      "rating": 3.8,
      "productName": "Название товара 3",
      "category": "Категория 3",
      "price": 60,
      "description": "Описание товара 3",
      "images": [
        "https://via.placeholder.com/150/00FF00/808080",
        "https://via.placeholder.com/150/FF00FF/FFFFFF",
        "https://via.placeholder.com/150/00FFFF/000000"
      ]
    },
    {
      "id": 4,
      "rating": 4.2,
      "productName": "Название товара 4",
      "category": "Категория 4",
      "price": 80,
      "description": "Описание товара 4",
      "images": [
        "https://via.placeholder.com/150/0000FF/808080",
        "https://via.placeholder.com/150/FF0000/FFFFFF",
        "https://via.placeholder.com/150/FFFF00/000000"
      ]
    },
    {
      "id": 5,
      "rating": 4.7,
      "productName": "Название товара 5",
      "category": "Категория 5",
      "price": 65,
      "description": "Описание товара 5",
      "images": [
        "https://via.placeholder.com/150/00FF00/808080",
        "https://via.placeholder.com/150/FF00FF/FFFFFF",
        "https://via.placeholder.com/150/00FFFF/000000"
      ]
    },
    {
      "id": 6,
      "rating": 3.5,
      "productName": "Название товара 6",
      "category": "Категория 6",
      "price": 55,
      "description": "Описание товара 6",
      "images": [
        "https://via.placeholder.com/150/0000FF/808080",
        "https://via.placeholder.com/150/FF0000/FFFFFF",
        "https://via.placeholder.com/150/FFFF00/000000"
      ]
    },
    {
      "id": 7,
      "rating": 4.9,
      "productName": "Название товара 7",
      "category": "Категория 7",
      "price": 70,
      "description": "Описание товара 7",
      "images": [
        "https://via.placeholder.com/150/00FF00/808080",
        "https://via.placeholder.com/150/FF00FF/FFFFFF",
        "https://via.placeholder.com/150/00FFFF/000000"
      ]
    },
    {
      "id": 8,
      "rating": 4.1,
      "productName": "Название товара 8",
      "category": "Категория 8",
      "price": 90,
      "description": "Описание товара 8",
      "images": [
        "https://via.placeholder.com/150/0000FF/808080",
        "https://via.placeholder.com/150/FF0000/FFFFFF",
        "https://via.placeholder.com/150/FFFF00/000000"
      ]
    },
    {
      "id": 9,
      "rating": 3.6,
      "productName": "Название товара 9",
      "category": "Категория 9",
      "price": 45,
      "description": "Описание товара 9",
      "images": [
        "https://via.placeholder.com/150/00FF00/808080",
        "https://via.placeholder.com/150/FF00FF/FFFFFF",
        "https://via.placeholder.com/150/00FFFF/000000"
      ]
    },
    {
      "id": 10,
      "rating": 4.4,
      "productName": "Название товара 10",
      "category": "Категория 10",
      "price": 85,
      "description": "Описание товара 10",
      "images": [
        "https://via.placeholder.com/150/0000FF/808080",
        "https://via.placeholder.com/150/FF0000/FFFFFF",
        "https://via.placeholder.com/150/FFFF00/000000"
      ]
    },
    {
      "id": 11,
      "rating": 3.9,
      "productName": "Название товара 11",
      "category": "Категория 11",
      "price": 55,
      "description": "Описание товара 11",
      "images": [
        "https://via.placeholder.com/150/00FF00/808080",
        "https://via.placeholder.com/150/FF00FF/FFFFFF",
        "https://via.placeholder.com/150/00FFFF/000000"
      ]
    },
    {
      "id": 12,
      "rating": 4.6,
      "productName": "Название товара 12",
      "category": "Категория 12",
      "price": 75,
      "description": "Описание товара 12",
      "images": [
        "https://via.placeholder.com/150/0000FF/808080",
        "https://via.placeholder.com/150/FF0000/FFFFFF",
        "https://via.placeholder.com/150/FFFF00/000000"
      ]
    },
    {
      "id": 13,
      "rating": 3.7,
      "productName": "Название товара 13",
      "category": "Категория 13",
      "price": 60,
      "description": "Описание товара 13",
      "images": [
        "https://via.placeholder.com/150/00FF00/808080",
        "https://via.placeholder.com/150/FF00FF/FFFFFF",
        "https://via.placeholder.com/150/00FFFF/000000"
      ]
    },
    {
      "id": 14,
      "rating": 4.3,
      "productName": "Название товара 14",
      "category": "Категория 14",
      "price": 65,
      "description": "Описание товара 14",
      "images": [
        "https://via.placeholder.com/150/0000FF/808080",
        "https://via.placeholder.com/150/FF0000/FFFFFF",
        "https://via.placeholder.com/150/FFFF00/000000"
      ]
    },
    {
      "id": 15,
      "rating": 4.0,
      "productName": "Название товара 15",
      "category": "Категория 15",
      "price": 70,
      "description": "Описание товара 15",
      "images": [
        "https://via.placeholder.com/150/00FF00/808080",
        "https://via.placeholder.com/150/FF00FF/FFFFFF",
        "https://via.placeholder.com/150/00FFFF/000000"
      ]
    },
    {
      "id": 16,
      "rating": 4.8,
      "productName": "Название товара 16",
      "category": "Категория 16",
      "price": 80,
      "description": "Описание товара 16",
      "images": [
        "https://via.placeholder.com/150/0000FF/808080",
        "https://via.placeholder.com/150/FF0000/FFFFFF",
        "https://via.placeholder.com/150/FFFF00/000000"
      ]
    }
]
''';
