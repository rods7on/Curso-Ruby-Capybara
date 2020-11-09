describe 'teclado', :key do
    
    before(:each)do
    visit '/key_presses'
    end

    it 'simulando as teclas' do
        
        teclas = %i[tab escape space enter shift alt] #%i array de simbolos
        
        teclas.each do |t|
            find('#campo-id').send_keys t
        
            expect(page).to have_content 'You entered: ' + t.to_s.upcase #upcase = caixa alta
            sleep 2
        end

    end

    it 'enviando letras' do
        letras = %w[r i c h a r d] #%w array de letras

        letras.each do |l|
            find('#campo-id').send_keys l 

            expect(page).to have_content 'You entered: ' + l.to_s.upcase #upcase = caixa alta
            sleep 2
        end
    end

end