class Recieps {
  int id;
  final String imagePath;
  final String reciepeName;
  final String timeOfCook;

  Recieps({
    required this.id,
    required this.imagePath,
    required this.reciepeName,
    required this.timeOfCook
});
}

class getReciepsdata {
  List<Recieps> getData() {
    return [
      Recieps(
          id: 1,
          imagePath: 'assets/images/salmon.jpg',
          reciepeName: 'Лосось в соусе терияки',
          timeOfCook: '45 минут'),
      Recieps(
          id: 2,
          imagePath: 'assets/images/poke.jpg',
          reciepeName: 'Поке боул с сыром тофу',
          timeOfCook: '30 минут'),
      Recieps(
          id: 3,
          imagePath: 'assets/images/steak.jpg',
          reciepeName: 'Стейк из говядины по-грузински с кукурузой',
          timeOfCook: '1 час 15 минут'),
      Recieps(
          id: 4,
          imagePath: 'assets/images/toasts.jpg',
          reciepeName: 'Тосты с голубикой и бананом',
          timeOfCook: '45 минут'),
      Recieps(
          id: 5,
          imagePath: 'assets/images/pasta.jpg',
          reciepeName: 'Паста с морепродуктами',
          timeOfCook: '25 минут'),
      Recieps(
          id: 6,
          imagePath: 'assets/images/burger.jpg',
          reciepeName: 'Бургер с двумя котлетами',
          timeOfCook: '1 час'),
      Recieps(
          id: 7,
          imagePath: 'assets/images/pizza.jpg',
          reciepeName: 'Пицца Маргарита домашняя',
          timeOfCook: '25 минут'),
    ];
  }
}


