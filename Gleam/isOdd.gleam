import gleam/io.{println}
import gleam/erlang.{get_line}
import gleam/int.{to_string, parse}
import gleam/string.{trim_right}

pub fn main() {
  is_odd(input())
}

fn input(){ // Função para pegar o input do usuario
  let valor = { // Pegando o input do usuario e convertendo para inteiro
    let assert Ok(aux) = erlang.get_line("Digite um numero: ")
    aux
    |> string.trim_right
    |> int.parse
  }
  case valor {// Verificando se o valor é um numero valido
    Error(_) -> {
      io.println("Digite um numero valido")
      input()
      }
    Ok(value) -> value // Retornando o valor
  }
}

fn is_odd(key){// Função para verificar se o numero é par ou impar
  case key % 2 {
    0 -> io.println("O numero é par")
    _ -> io.println("O numero é impar")
  }
}