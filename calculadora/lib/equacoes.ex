defmodule Equacoes do
  def equacionar(a, b, c) do
    discriminante = b^2 - 4 * a * c

    if discriminante > 0 do:
      raiz1 = (-b + :math.sqrt(discriminante)) / (2 * a)
      raiz2 = (-b - :math.sqrt(discriminante)) / (2 * a)
      {:raizes_reais, [raiz1, raiz2]}
    else  if discriminante == 0 do:
      raiz = -b / (2 * a)
      {:raiz_real_dupla, raiz}
    else do:
      parte_real = -b / (2 * a)
      parte_imaginaria = :math.sqrt(-discriminante) / (2 * a)
      {:raizes_complexas, [parte_real + parte_imaginaria * :i, parte_real - parte_imaginaria * :i]}
    end
  end
end
