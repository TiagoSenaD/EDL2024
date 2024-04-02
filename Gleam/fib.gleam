import gleam/io.{println}
import gleam/int.{random, to_string}

pub fn main() {
  let x = random(10)
  { "fazendo a sequencia de fibonacci de " <> int.to_string(x) <> " elementos" }
  |> io.println
  print_fib(x)
}

fn fib_rec(key: Int){ // Função recursiva para calcular o fibonacci, casos bases são 0 e 1 e o resto é calculado pela soma dos dois anteriores
  case key {
    0 -> 0
    1 -> 1
    _ -> fib_rec(key-1) + fib_rec(key-2)
  }
}

fn print_fib(start_number: Int){ // Função para printar a sequencia de fibonacci a quantidade de vezes que for passada
  let result = fib_rec(start_number)
  { "fib(" <> int.to_string(start_number) <> ") = " <> int.to_string(result) }
  |> io.println
}