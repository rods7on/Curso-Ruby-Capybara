describe 'id dinamico com regex', :dinamico do
    
    before(:each) do
        visit '/access'
    end

    it 'cadastro' do

        find('input[id$=UsernameInput]').set 'richard'
        find('input[id^=PasswordInput]').set '123456789'
        find('a[id*=GetStartedButton]').click
    
        expect(page).to have_content 'Dados enviados'
        sleep 2
    end


end