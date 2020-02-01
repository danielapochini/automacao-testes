puts 'digite um numero 1 ou 2'
v1 = gets.to_i

=begin
if v1 == 1
    puts 'valor é igual a 1'
elsif v1 == 2
    puts 'valor é igual a 2'
else
    puts 'valor não é igual a 1'
end
=end

#unless executa o codigo se a condição for falsa

=begin
unless v1 == 2
    puts 'condicao falsa'
else  
    puts 'condicao verdadeira'
end
=end

#case when indica uma definição de instrução de caso

case v1
when 0
    puts 'digitou 0'
when 1
    puts 'digitou 1'
else
    puts 'opção invalida'
end