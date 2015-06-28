class AddPayentDataToParticipant < ActiveRecord::Migration
  def change
    add_column :participants, :status, :string, null: false, default: 'pending'
    add_column :participants, :venmo_payment, :string
  end
end
