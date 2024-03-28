import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MERVEL SHOP',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Авторизоваться')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(hintText: 'Имя'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(hintText: 'Пароль'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ComicsPage()));
                },
                child: Text('Вход'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: Text('Регистрация'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Регистрация')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(hintText: 'Имя'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(hintText: 'Пароль'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ComicsPage()));
                },
                child: Text('Регистрация'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ComicsPage extends StatefulWidget {
  @override
  _ComicsPageState createState() => _ComicsPageState();
}

class _ComicsPageState extends State<ComicsPage> {
  List<Map<String, String>> allComicsData = [
    {
      'imagePath': 'https://ir.ozone.ru/s3/multimedia-s/wc1000/6601763260.jpg',
      'title': 'Дэдпул уничтожает вселенную Marvel | Банн Каллен',
      'description': 'Болтливый наёмник окончательно слетел с катушек и собирается убить каждого героя и каждого злодея во вселенной Marvel. Что же из этого выйдет?Все это время вы считали, что Дэдпул - просто забавный весельчак, но что, если на самом деле это вовсе не так? Что бы вы подумали, если бы болтливый наёмник вдруг решил прикончить всех и каждого во вселенной Marvel? А, что если бы ему это РЕАЛЬНО удалось? Ну как, звучит все еще забавно?Один из самых популярных комиксов о болтливом наёмнике!'
          ' Цена: 636 рублей',
    },
    {
      'imagePath': 'https://ir.ozone.ru/s3/multimedia-h/wc1000/6730715717.jpg',
      'title': 'Неуязвимый Железный Человек. Полное собрание. Том 1 | Фрэкшн Мэтт',
      'description': 'Вопреки всему!Тони Старку – миллиардеру, промышленному магнату, Неуязвимому Железному Человеку, а теперь и директору ЗАЩИТы – предстоит пройти через самое тяжёлое испытание в жизни. Иезекииль Стейн – сын Обадайи Стейна, конкурента и заклятого врага Тони – решил воспользоваться своим гениальным умом и солидным состоянием, чтобы уничтожить наследие Старка. А что самое страшное, он завладел технологиями Железного Человека, и теперь во всём равен Тони, а вдобавок моложе, быстрее, умнее… и невероятно зол! Тем временем секретное вторжение скруллов разрушило прежнюю жизнь Железного Человека. Как он стал самым разыскиваемым преступником? Здоровье Тони ухудшается, и ему становится всё сложнее управлять бронёй… на хвосте Мария Хилл, а также все его враги, жаждущие получить миллиард долларов за его голову! И дальше будет только хуже!В книгу вошли комиксы «Неуязвимый Железный Человек» (2008) #1–19 сценариста Мэтта Фрэкшена и художника Сальвадора Ларроки.'
          ' Цена: 2124 рублей',
    },
    {
      'imagePath': 'https://ir.ozone.ru/s3/multimedia-l/wc1000/6577965657.jpg',
      'title': 'Бессмертный Халк. Полное собрание. Том 2 | Юинг Эл',
      'description': 'Мы все в аду... даже Бессмертный Халк!Зелёная дверь открыта нараспашку, и в Нью-Мексико разверзся ад. Его правитель шепчет множеством ртов и крушит множеством рук. Его оружие — ненависть. Он носит человеческие души словно маски, чтобы подчинять их своей воле. Но в нижайшем аду, подо всеми прочими, маски будут сброшены... и Всенижний наконец предстанет перед вами! Брюс Баннер принад лежит ему, а вот Халк... Даже преисподней не сдержать его ужасный гнев. А также: возвращение Бетти Росс, Дока Самсона, Джо Решалы и кошмарное превращение старейшего друга Халка!'
          ' Цена: 1540 рублей',
    },
  ];
  List<Map<String, String>> favoriteComics = [];
  List<Map<String, String>> cartComics = [];

  List<String> users = ["Дэтпул", "Шокер", "Халк"];
  List<IconData> icons = [Icons.book_outlined, Icons.book_outlined, Icons.book_outlined];

  void addToFavorites(int index) {
    setState(() {
      favoriteComics.add(allComicsData[index]);
    });
  }

  void addToCart(int index) {
    setState(() {
      cartComics.add(allComicsData[index]);
    });
  }

  void navigateToFavorites() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => FavoritesPage(favoriteComics: favoriteComics)));
  }

  void navigateToCart() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage(cartComics: cartComics)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Комиксы')),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: allComicsData.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ComicDetailPage(imagePath: allComicsData[index]['imagePath']!, description: allComicsData[index]['description']!)));
                  },
                  child: Container(
                    margin: EdgeInsets.all(4.0),
                    width: 130,
                    child: Image.network(allComicsData[index]['imagePath']!, fit: BoxFit.cover),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: allComicsData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(allComicsData[index]['title']!),
                  leading: Icon(icons[index]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.favorite),
                        onPressed: () {
                          addToFavorites(index);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.shopping_cart),
                        onPressed: () {
                          addToCart(index);
                        },
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ComicDetailPage(imagePath: allComicsData[index]['imagePath']!, description: allComicsData[index]['description']!)));
                  },
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: navigateToFavorites,
            child: Text('Избранное'),
          ),
          ElevatedButton(
            onPressed: navigateToCart,
            child: Text('Корзина'),
          ),
        ],
      ),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  final List<Map<String, String>> favoriteComics;

  FavoritesPage({required this.favoriteComics});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Избранное'),
      ),
      body: ListView.builder(
        itemCount: favoriteComics.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(favoriteComics[index]['title']!),
            trailing: Icon(Icons.favorite),
          );
        },
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  final List<Map<String, String>> cartComics;

  CartPage({required this.cartComics});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Корзина'),
      ),
      body: ListView.builder(
        itemCount: cartComics.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cartComics[index]['title']!),
            trailing: Icon(Icons.shopping_cart),
          );
        },
      ),
    );
  }
}

class ComicDetailPage extends StatelessWidget {
  final String imagePath;
  final String description;
  ComicDetailPage({required this.imagePath, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Подробности комикса'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200.0,
            child: PageView(
              children: [
                Image.network(imagePath, width: 120),
                Image.network('https://ir.ozone.ru/s3/multimedia-x/wc1000/6335777649.jpg', width: 120),
                Image.network('https://ir.ozone.ru/s3/multimedia-0/wc1000/6335777652.jpg', width: 120),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
