Quando("mapeio uma tabela") do
    @mapear = MapeandoListas.new
    @mapear.load
    puts @mapear.lista.size
    puts @mapear.lista[0].text
    expect(@mapear.lista.size).to eql 24

    @mapear.lista.each do |listas|
        puts listas.text
    end
end
  