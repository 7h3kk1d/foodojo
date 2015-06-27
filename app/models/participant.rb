class Participant < ActiveRecord::Base
  belongs_to :person
  belongs_to :potluck

  def send_message(client)
    if person.phone_number
      client.messages.create(
        from: '+17082953340',
        to: person.phone_number,
        body: 'test message'
      )
    end
  end
end
