=begin Before do
    puts 'estou sendo executado antes de cada cenário'
    @soma = 5 + 5
end

After do
    puts 'estou sendo executado após cada cenário'
end

Before '@comeco' do
    puts 'rodei apenas nesse cenario com tag começo'
end =end