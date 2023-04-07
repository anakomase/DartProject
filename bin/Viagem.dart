import 'transporte.dart';

class Viagem{
  static String codigoTrabalho = "teste1";
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String,dynamic> registrarPrecos = {};
  int _totalLocaisVisitados = 0;


  Viagem({required this.locomocao});

  printCodigo(){
    print(codigoTrabalho);
  }
  void escolheMeioTransporte(Transporte locomocao) {
    switch (locomocao) {
      case Transporte.carro:
        print("vou de carro para aventura");
        break;
      case Transporte.bike:
        print("vou de bike para aventura");
        break;
      case Transporte.trem:
        print("vou de trem");
        break;
      default:
        print("estou indo para aventura");
        break;
    }
  }

  void visitar(String localVisita){
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados+=1;
  }

  void registrarPrecoVisita(String local, dynamic preco){
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados{
    return _totalLocaisVisitados;
  }

  void set alterarLocaisVisitados(int quantidade){
    if(quantidade<10){
      _totalLocaisVisitados = quantidade;
    }else{
      print("não sera possivel");
    }
  }
}