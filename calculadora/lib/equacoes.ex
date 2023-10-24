defmodule Equacoes do
  # importa o módulo Logger, que é um módulo do Elixir para loggar coisas no console
  require Logger
  # define a função equacionar
  def equacionar(a, b, c) do
    delta = :math.pow(b, 2) - 4 * a * c
    Logger.info("delta é igual a: #{delta}")

    # faz um case, para verificar várias condições possíveis
    case delta do
      # aparentemente é possível atribuir o valor de delta a uma variável dentro do case
      # atribui o valor de delta à pos (doideira), e verifica se pos é maior que 0
      pos when pos > 0 ->
        Logger.info("Calc para +")
        raiz1 = (-b + :math.sqrt(pos)) / (2 * a)
        raiz2 = (-b - :math.sqrt(pos)) / (2 * a)
        # retorna um atom, precisa? não, mas é legal
        {:raizes_reais, [raiz1, raiz2]}

      # atribui o valor de delta a neg (maluquice) e verifica se neg é menor que 0
      neg when neg < 0 ->
        Logger.info("Calc para -")
        parte_real = -b / (2 * a)
        parte_imaginaria = :math.sqrt(-neg) / (2 * a)

        # loggo os valores, aqui deveria ter uma forma de expressar nrs imáginarios mas ainda não sei como fazer
        Logger.info("Parte real: #{parte_real}, Parte imaginária: #{parte_imaginaria}")

        {:raizes_complexas, [parte_real + parte_imaginaria, parte_real - parte_imaginaria]}

      # atribui o valor de delta a zero e verifico se zero é igual a 0 (coisa de louco)
      zero when zero == 0 ->
        Logger.info("Calc para 0")
        raiz = -b / (2 * a)
        {:raiz_real_dupla, raiz}
    end
  end
end
