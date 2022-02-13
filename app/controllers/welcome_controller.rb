class WelcomeController < ApplicationController
  before_action :authenticate_user!

  # Пример документации
  # @param welcome_id [Integer] id приветствия
  # @note Это пример документации
  # @example
  #   welcome(2)
  # @return [Boolean] отображение приветствия
  # @see User
  def welcome

  end
end
