class PersonSerializer < ActiveModel::Serializer
  attributes :name, :phone_number, :status

  def status
    object.participant.status
  end
end
