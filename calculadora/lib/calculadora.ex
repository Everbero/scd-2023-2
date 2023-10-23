defmodule Calculadora do

  def soma(a, b) when is_number(a) and is_number(b) do
    a+b
  end

  def subtracao(a, b) when is_number(a) and is_number(b), do: a-b
  def multiplicacao(a, b) when is_number(a) and is_number(b), do: a*b

  def divisao(_, 0), do: raise "Divisão por zero."
  def divisao(a, b) when is_number(a) and is_number(b), do: a/b
end
