=begin 
module ModuloNome
    #serve para agrupar classes
    #serve para agrupar constantes
    #serve para agrupar metodos

    #é muito parecido com classe, mas não pode ser instanciado.
    #modulo não pode ser herdado

    def metodo_padrao
        puts 'eu sou um modulo'
    end
end

class TesteClasse
    include ModuloNome
end

objeto = TesteClasse.new

objeto.metodo_padrao
=end


class Cachorro
    def latir
        puts 'auau'
    end

end 

class CachorroGrande
    def latir
        puts 'whoof whoof'
    end
end

class Pessoa
    def agarra_cachorro(cachorro)
        cachorro.latir
    end
end

c1 = Cachorro.new
c2 = CachorroGrande.new
p = Pessoa.new

p.agarra_cachorro(c1)
p.agarra_cachorro(c2)