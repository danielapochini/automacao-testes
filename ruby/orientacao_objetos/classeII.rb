class Mae

    def correr
        puts 'a mãe corre'
    end
end

class Filha < Mae
    def correr
        puts super
        
        puts 'cansei'
    end
end

objeto = Filha.new

objeto.correr