
describe 'Caixa de opções', :dropdown do
    
    it 'item especifico simples' do
        visit '/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3
    end

    it 'item especifico com o find' do
        visit 'dropdown'
        variavel = find('.avenger-list')
        variavel.find('option', text: 'Scott Lang').select_option
        sleep 3
    end

    it 'qualquer item' do 
        visit 'dropdown'
        variavel = find('.avenger-list')
        variavel.all('option').sample.select_option
        sleep 3
    end

end