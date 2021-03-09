defmodule ListLength do
  def call(list), do: length(list, 0)

  defp length([], count), do: count

  defp length([_head | tail], count) do 
    # - Adicionar a contagem, se o head(cabeça da lista) existir
    count = count + 1
    # - Rodar novamente a função passando como parametro o tail(calda da lista) e a contagem atualizada.
    length(tail, count)
  end
end
