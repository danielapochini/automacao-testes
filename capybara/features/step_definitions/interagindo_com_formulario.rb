Quando("eu faço cadastro") do
    visit('/users/new')
    fill_in(id: 'user_name', with: 'Daniela')
    find('#user_lastname').set('Pochini')
    find('#user_email').send_keys('danpocchini@gmail.com')

    fill_in(id: 'user_address', with: 'Rua Teste')
    find('#user_university').set('Fatec')
    find('#user_profile').send_keys('QA')
    
    fill_in(id:'user_gender', with: 'Feminino')
    find('#user_age').set(28)
    
    find('input[value="Criar"]').click
end
  
Então("verifico se fui cadastrado") do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
end