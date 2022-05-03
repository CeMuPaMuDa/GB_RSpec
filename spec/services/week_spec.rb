# frozen_string_literal: true

RSpec.describe Services::Week do
  context 'при вызове класса' do
    it 'возвращает Хэш:' do
      expect(described_class.call).to be_an_instance_of(Hash)
    end

    it 'вернет значение при вызове ключа (sunday)' do
      expect(described_class.call[:sunday]).to eq 'воскресенье'
    end
  end

  context 'содержит метод' do
    it 'возвращающий значения ключа(friday):' do
      expect(described_class.friday).to eq 'пятница'
    end
  end

  context 'возвращает ошибку' do
    it 'если метода не существует(july):' do
      expect { described_class.july }.to raise_error(NoMethodError)
    end
  end
end
