# frozen_string_literal: true

module Types
  class NoteType < Types::BaseObject
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :id, ID, null: false
    field :title, String, null: false
    field :body, String, null: false
  end
end
