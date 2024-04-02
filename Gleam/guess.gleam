import gleam/io.{println}
import gleam/erlang.{get_line}
import gleam/int.{to_string, parse, random, compare}
import gleam/string.{trim_right}
import gleam/order.{Eq, Lt, Gt}

pub fn main() {
  let numero = int.random(20) // Gerando um numero aleatorio
  input(numero)
}

fn input(key){ // Função para pegar o input do usuario
  let valor = { // Pegando o input do usuario e convertendo para inteiro
    let assert Ok(aux) = erlang.get_line("Digite um numero: ")
    aux
    |> string.trim_right
    |> int.parse
  }
  case valor {// Verificando se o valor é um numero valido
    Error(_) -> {
      io.println("Digite um numero valido")
      input(key)
      }
    Ok(value) ->{ // Verificando se o valor é igual, maior ou menor que o numero gerado
      case int.compare(value, key){
        order.Eq -> {
          io.println("Parabens, você acertou!")
        }
        order.Lt -> {
          io.println("O numero é maior")
          input(key)
        }
        order.Gt -> {
          io.println("O numero é menor")
          input(key)
        }
      }
    }
  }
}