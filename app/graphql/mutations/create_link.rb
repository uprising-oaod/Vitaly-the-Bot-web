module Mutations
  class CreateLink < BaseMutation
    # arguments passed to the `resolve` method
    argument :description, String, required: true
    argument :url, String, required: true

    # return type from the mutation
    type Types::LinkType

    def resolve(description: nil, url: nil)
      Link.create!(
        description: description,
        url: url,
        )
    end

    # Пример тестового запроса
    # mutation {
    #   createLink (
    #     url: "https://yandex.ru/",
    #     description: "Поисковая система",
    #   ) {
    #     id
    #     url
    #     description
    #   }
    # }
  end
end
