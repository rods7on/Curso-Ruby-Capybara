describe 'login com cadastro', :login3, :smock do
    
    #página possui dois formularios com mesmo nome
    #utilizando o ID pai para preencher o formulário correto

    before(:each) do
        visit '/access'
    end

    it 'login com sucesso' do
        
        within('#login') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            click_button 'Entrar'
        end

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end

    it 'cadastro de user' do
        
        within('#signup') do
        find('input[name=username]').set 'richard'
        find('input[name=password]').set '123456789'
        click_link 'Criar Conta'
        end

        expect(page).to have_content 'Dados enviados'
    end

end