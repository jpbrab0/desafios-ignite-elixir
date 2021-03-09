defmodule ListFilter do
  def call(list), do: filter(list, 0)
  
  defp filter([], count), do: count

  defp filter([head | tail], count) do 
    # - Verificando se o primeiro elemento da lista é um inteiro.
    if is_integer(head) do
      # - Se o primeiro elemento da lista for inteiro, vai ver se ele é um número impar.
      if rem(head, 2) != 0 do
        # - Caso seja impar vai adicionar 1 na contagem
        count = count + 1
        filter(tail, count)
        else
          # - Senão vai para o proximo elemento da lista.
          filter(tail, count)
      end
      else
        # - Se o primeiro elemento da lista for uma string que contem um número ele transforma a string em um número.
        if Regex.match?(~r/[0-9]/, head) do 
          head = String.to_integer(head)
          # - Vai fazer a mesma coisa do if de cima
          if rem(head, 2) != 0 do 
            count = count + 1
            filter(tail, count)
          else
            filter(tail, count)
          end
          # - Caso a string não contenha um número ele vai passar para o proximo elemento da lista.
          else
            filter(tail, count)
      end
    end  
  end
end
