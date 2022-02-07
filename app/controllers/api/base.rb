require "grape-swagger"

module API
  class Base < Grape::API
    mount API::V1::Base  # Ключевое слово mount говорит приложению, что
    # здесь присутствует другое приложение (в нашем случае Grape API).
    #
    # Подключаем swagger
    add_swagger_documentation
  end
end