module Queries
  class FetchNote < BaseQuery

    type Types::NoteType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Note.find(id)
    rescue ActiveRecord::RecordNotFound => e
      GraphQL::ExecutionError.new('Note Does Not Exist')
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid Attributes for #{e.record.class}:" \
      " #{e.record.errors.full_messages.join(', ')}")
    end

  end

end