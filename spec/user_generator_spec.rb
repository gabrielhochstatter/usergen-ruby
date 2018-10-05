require 'user_generator'

describe 'get_names' do
    it 'returns the names as an array from the json file' do
        expect(get_names.is_a?(Array)).to be
    end

    it 'contains the correct names' do
        expect(get_names[0]).to eq('Aaberg')
    end

    it 'contains the correct names' do
        expect(get_names[2]).to eq('Aara')
        expect(get_names).to include('Agosto')
        expect(get_names).to include('Nadean')
        expect(get_names).to include('Rockwood')
    end
end
