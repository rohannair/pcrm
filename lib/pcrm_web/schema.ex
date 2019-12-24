defmodule PcrmWeb.Schema do
  use Absinthe.Schema

  @users %{
    "1" => %{
      id: 1,
      email: "rn@rohan.ai"
    }
  }

  object :user do
    field :id, :id
    field :email, :string

    field :friends, list_of(:friend)
  end

  object :friend do
    field :id, :id
    field :email, :string
    field :first_name, :string
    field :last_name, :string
  end

  query do
    field :user, :user do
      arg(:id, non_null(:id))

      resolve(fn %{id: user_id}, _ ->
        {:ok, @users[user_id]}
      end)
    end
  end
end
