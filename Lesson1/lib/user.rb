# frozen_string_literal: true

class User
  def initialize(surname:, name:, patronymic:, email:)
    @name = name.to_s
    @surname = surname.to_s
    @patronymic = patronymic.to_s
    @email = email.to_s
  end

  attr_reader :name, :surname, :patronymic, :email
end
