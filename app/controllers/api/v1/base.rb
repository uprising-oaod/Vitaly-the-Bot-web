module API
  module V1
    # Монтируем класс Users который будет иметь доступ к модели User.
    class Base < Grape::API
      mount API::V1::Users
    end
  end
end