#classe começa com letra maiuscula
#uma clase é composta por atributos, metodos e construtores

=begin 
    # é a mesma coisa que o get e setter do java
    
    #só permite ler
    attr_reader :nomeum

    #só permite escrever
    attr_write :nomedois

    #set
    def nome
        @nome
    end

    #get
    def nome=(nome)
        @nome = :nome
    end

    #metodo
    nome dele tem que ser tudo minusculom se for nome composto tem que ter + entre as palavras

=end

class TesteClasse
    attr_accessor :nome
    def metodo
        #corpo do metodo
        puts 'corpo do metodo'
    end

    def metodo_composto
        #corpo do metodo
        puts 'corpo do metodo composto'
    end

end 

class Heranca < TesteClasse
end

objeto = TesteClasse.new
objeto.nome = 'Daniela'
puts objeto.nome 

objeto.metodo
objeto.metodo_composto

objeto_heranca = Heranca.new
objeto_heranca.metodo_composto
