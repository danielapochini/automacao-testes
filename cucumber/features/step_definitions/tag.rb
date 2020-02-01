Quando("eu divido dois números {int} \/ {int}") do |valor1, valor2|
    @resultado = valor1 / valor2
end
  
Então("o resultado da divisão") do
    expect(@resultado).to eq (5)
end

Quando("eu multiplico dois números {int} * {int}") do |valor3, valor4|
    @total = valor3 * valor4
end
  
Então("o resultado da multiplicação") do
    expect(@total).to eq (20)
end