import 'Viagem.dart';
import 'transporte.dart';

void main() {

  Viagem viagem = Viagem(locomocao: Transporte.trem);
  print(viagem.consultarTotalLocaisVisitados);

  viagem.visitar("museu");
  print(viagem.consultarTotalLocaisVisitados);

  viagem.alterarLocaisVisitados =10;
  print(viagem.consultarTotalLocaisVisitados);
}





