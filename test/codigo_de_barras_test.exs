defmodule CodigoDeBarrasTest do
  use ExUnit.Case
  doctest CodigoDeBarras

  test "DV do código de barras" do assert
    CodigoDeBarras.dvCodigoBarras([0,0,1,9,3,7,3,7,0,0,0,0,0,0,0,1,0,0,0,5,0,0,9,4,0,1,4,4,8,1,6,0,6,0,6,8,0,9,3,5,0,3,1]) == 3
  end

  test "Fator de Vencimento 1" do assert 
    FatorVencimento.fatorVencimento("29-04-2024") == 9701
  end

  test "Fator de Vencimento 2" do assert 
    FatorVencimento.fatorVencimento("21/02/2025") == 9999
  end

  test "Fator de Vencimento 3" do assert 
    FatorVencimento.fatorVencimento("22/02/2025") == 1000
  end

  test "Fator de Vencimento 4" do assert 
    FatorVencimento.fatorVencimento("05-07-2000") == 1002
  end
end