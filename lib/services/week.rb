# frozen_string_literal: true

module Services
  class Week
    DAY_OF_THE_WEEK = {
      monday: 'понедельник',
      tuesday: 'вторник',
      wednesday: 'среда',
      thurday: 'четверг',
      friday: 'пятница',
      saturday: 'суббота',
      sunday: 'воскресенье'
    }.freeze

    DAY_OF_THE_WEEK.each do |key, value|
      self.class.send :define_method, key do
        value
      end
    end

    def self.call
      new.call
    end

    def call
      DAY_OF_THE_WEEK
    end
  end
end

