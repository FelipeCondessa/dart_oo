import 'exe1.dart';

abstract class Artista extends Pessoa with Cantar, Dancar  {

  @override

  void canta (String letra) {

  }

  @override
  
  void danca (int passos) {

  }

}
