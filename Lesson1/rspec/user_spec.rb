# frozen_string_literal: true

require_relative '../lib/user'
def user
  User.new(
    surname: 'Маск',
    name: 'Илон',
    patronymic: 'Марсианович',
    email: 'illysha@spacex.com'
  )
end
# Пользователь для тестирования не текстовых значений
def user_not_str
  User.new(
    surname: 111,
    name: 3.14,
    patronymic: '333',
    email: true
  )
end

RSpec.describe User do
  context 'методы класса возвращают' do
    it 'имя:' do
      expect(user.name).to eq('Илон')
    end

    it 'фамилию:' do
      expect(user.surname).to eq('Маск')
    end

    it 'отчество:' do
      expect(user.patronymic).to eq('Марсианович')
    end

    it 'email:' do
      expect(user.email).to eq('illysha@spacex.com')
    end

    it 'строки:' do
      expect(user_not_str.name).to be_an_instance_of(String)
      expect(user_not_str.surname).to be_an_instance_of(String)
      expect(user_not_str.patronymic).to be_an_instance_of(String)
      expect(user_not_str.email).to be_an_instance_of(String)
    end
  end
end
